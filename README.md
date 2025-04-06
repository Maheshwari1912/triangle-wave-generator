# triangle-wave-generator

**Introduction to Triangle Wave Generator**

A triangle wave generator is a digital circuit that produces a periodic waveform with a linear rise and fall, forming a triangular shape. It is commonly used in signal processing, waveform synthesis, and clock generation.

**How a Digital Triangle Wave Generator Works**

**Up-Down Counter Approach**

A counter increments from 0 to max (e.g., 0 to 15 for a 4-bit counter).

Once it reaches the max value (15), it decrements back to 0.

This creates a linear rising and falling waveform.

**Direction Control (Up-Down Signal)**

A direction control signal (up_down) decides whether the counter is incrementing or decrementing.

When the counter reaches 15, it toggles up_down to 0 (start decrementing).

When it reaches 0, it toggles up_down to 1 (start incrementing).

**Observations from Your Simulation**

counter[3:0] cycles from 0 to 15 and back to 0, forming a triangle shape.

up_down toggles whenever the counter reaches max (15) or min (0).

triangle_wave[3:0] follows the counter value, forming the expected triangular waveform.

**Applications of Triangle Wave Generators**

PWM (Pulse Width Modulation)

DAC (Digital-to-Analog Conversion)

Clock & Signal Processing

Waveform Synthesis for Audio Processing

**simulation results:**
![image](https://github.com/user-attachments/assets/c03ced6a-a214-43db-b1c6-6d2850106653)

**schematic:**

![image](https://github.com/user-attachments/assets/261f4dcc-c981-405a-b081-9aa93bb1a47f)
