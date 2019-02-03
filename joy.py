import serial
import sys, pygame, glob
import struct, time
pygame.init()
def serial_ports():
    """ Lists serial port names

        :raises EnvironmentError:
            On unsupported or unknown platforms
        :returns:
            A list of the serial ports available on the system
    """
    if sys.platform.startswith('win'):
        ports = ['COM%s' % (i + 1) for i in range(256)]
    elif sys.platform.startswith('linux') or sys.platform.startswith('cygwin'):
        # this excludes your current terminal "/dev/tty"
        ports = glob.glob('/dev/tty[A-Za-z]*')
    elif sys.platform.startswith('darwin'):
        ports = glob.glob('/dev/tty.*')
    else:
        raise EnvironmentError('Unsupported platform')

    result = []
    for port in ports:
        try:
            s = serial.Serial(port)
            s.close()
            result.append(port)
        except (OSError, serial.SerialException):
            pass
    return result


size = width, height = 320, 240
sp = serial_ports()
if not len(sp):
    print("No serial ports detected, exiting")
    exit()
x = 0
for each in sp:
    print(str(x) + ": " + each)
    x += 1
x = int(input())
ser = serial.Serial(sp[x],57600)
pygame.joystick.init()
joysticks = [pygame.joystick.Joystick(x) for x in range(pygame.joystick.get_count())]
x = 0
for each in joysticks:
    print(str(x) + ": " + each.get_name())
    x += 1
x = int(input())
joystick = joysticks[x]
joystick.init()
screen = pygame.display.set_mode(size)
throttle = 1
while 1:
    y = -joystick.get_axis(1)
    x =  -joystick.get_axis(0)
    #if joystick.get_numaxes() == 3:
    #    throttle = (joystick.get_axis(2)+1)
    #else:
    #    throttle = 2
    
    left  = int(min(max(64+y*63 + 63*x*throttle,1),127))
    right = int(min(max(64+y*63 - 63*x*throttle,1),127))
    ser.write(bytes([left]))
    ser.write(bytes([right]))
    while ser.in_waiting:
       print(ser.readline())
    print(str(left) + " " + str(right))#bytes([right]))
    time.sleep(0.05)
    for event in pygame.event.get():
        if event.type == pygame.QUIT: sys.exit()