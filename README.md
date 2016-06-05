#Simple HID USB for the PIC32mx795f512

##Author

Mike

I use this skeleton usb program for projects..

##File list

simpleUSB.c  

is a simple program to send the device's descriptor information to the host computer.



###USBdsc.c 

is the descriptor of the USB device. It has VID and the PID the vendor ID and product ID


###USB_test_driver.inf 

is the driver of the USB device. You can recycle the driver with different VID & PID settings.

You can use *INF Wizard* program  to create your own driver .

![](https://cloud.githubusercontent.com/assets/19749326/15800701/83865d60-2a4e-11e6-8361-1f98541eb003.png)
 
##How to run the file

I used the program and compliler MikroPro C for PIC32. very easy program to start implementing embedded codes .. 

just load the two files  simpleUSB.c  &  USBdsc.c and complile .. you can also change devices from PIC32mx795f512 to PIC32mx592f512 ;however, you need have to enable the pullup and pll configurations on the pic. The MikroPro has a configuration tool icon and HID tool too.

Follow the connections for the basic power on connections  given from the PIC32 data sheets 
and  connect the USB – and + to pins 56 and 57 

##Bugs

none for right now..
