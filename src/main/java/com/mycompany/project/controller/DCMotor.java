package com.mycompany.project.controller;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.Pin;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;

public class DCMotor {
	private GpioPinDigitalOutput out1;
	private GpioPinDigitalOutput out2;
	private PCA9685 pca9685;
	private Pin pwm;

	public DCMotor(Pin out1, Pin out2, PCA9685 pca9685, Pin pwm) throws Exception {
		GpioController gpioController = GpioFactory.getInstance();
		this.out1 = gpioController.provisionDigitalOutputPin(out1, PinState.LOW);
		this.out1.setShutdownOptions(true, PinState.LOW);
		this.out2 = gpioController.provisionDigitalOutputPin(out2, PinState.LOW);
		this.out2.setShutdownOptions(true, PinState.LOW);
		this.pca9685 = pca9685;
		this.pwm = pwm;
	}

	public void setSpeed(int step) {
		//step: 0~4095 단계
		pca9685.setStep(pwm, step);
	}

	public void forward() {
		out1.low();
		out2.high();
	}

	public void backward() {
		out1.high();
		out2.low();
	}

	public void stop() {
		out1.low();
		out2.low();
		setSpeed(0);
	}

	public static void main(String[] args) throws Exception {
		PCA9685 pca9685 = PCA9685.getInstance();

		DCMotor dcMoter1 = new DCMotor(RaspiPin.GPIO_00, RaspiPin.GPIO_01, pca9685, PCA9685.PWM_05);
		DCMotor dcMoter2 = new DCMotor(RaspiPin.GPIO_02, RaspiPin.GPIO_03, pca9685, PCA9685.PWM_04);

		dcMoter1.forward();
		dcMoter2.forward();
		dcMoter1.setSpeed(4095);
		dcMoter2.setSpeed(4095);
		Thread.sleep(5000);

		dcMoter1.stop();
		dcMoter2.stop();
		Thread.sleep(2000);

		dcMoter1.backward();
		dcMoter2.backward();
		dcMoter1.setSpeed(4095);
		dcMoter2.setSpeed(4095);
		Thread.sleep(5000);
	}
}

