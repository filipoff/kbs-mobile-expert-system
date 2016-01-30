; Sat Jan 23 21:51:26 EET 2016
; 
;+ (version "3.5")
;+ (build "Build 663")

(definstances mobile_devices
	
([fn71489_Class10006] of  SimpleMobileDevice

	(audio_device [fn71489_Class10007])
	(battery [fn71489_Class10008])
	(display [fn71489_Class10040])
	(has_flashlight TRUE)
	(manufacturer "Nokia")
	(model "1200")
	(price 30.0))

([fn71489_Class10007] of  AudioDevice

	(alert_type MIDI)
	(has_3.5mm_jack FALSE)
	(has_loudspeaker TRUE))

([fn71489_Class10008] of  Battery

	(is_removable TRUE)
	(standby_time 390))

([fn71489_Class10010] of  Display

	(has_touchscreen TRUE)
	(size 4.7)
	(type LCD))

([fn71489_Class10011] of  Processor

	(cores 2)
	(frequency 1.84))

([fn71489_Class10012] of  Camera

	(has_LED_flash TRUE)
	(mp_resolution 12))

([fn71489_Class10013] of  Camera

	(has_LED_flash FALSE)
	(mp_resolution 5))

([fn71489_Class10014] of  AudioDevice

	(alert_type MP3 WAV)
	(has_3.5mm_jack TRUE)
	(has_loudspeaker TRUE))

([fn71489_Class10015] of  Battery

	(is_removable FALSE)
	(standby_time 240))

([fn71489_Class10016] of  RAM

	(amount_in_mb 2048))

([fn71489_Class10017] of  Storage

	(amount_in_gb 64)
	(is_internal TRUE))

([fn71489_Class10018] of  SmartPhone

	(audio_device [fn71489_Class10019])
	(battery [fn71489_Class10022])
	(camera
		[fn71489_Class10025]
		[fn71489_Class10026])
	(communication_abilities wifi bluetooth gps radio usb)
	(display [fn71489_Class10023])
	(has_3G TRUE)
	(manufacturer "HTC")
	(memory
		[fn71489_Class10027]
		[fn71489_Class10028])
	(model "Sensation XE")
	(OS android)
	(price 300.0)
	(processor [fn71489_Class10024])
	(sensors compass gyro accelerometer))

([fn71489_Class10019] of  AudioDevice

	(alert_type MP3 WAV MIDI)
	(has_3.5mm_jack TRUE)
	(has_loudspeaker TRUE)
	(special_audio_eq TRUE))

([fn71489_Class10022] of  Battery

	(is_removable TRUE)
	(standby_time 310))

([fn71489_Class10023] of  Display

	(has_touchscreen TRUE)
	(size 4.3)
	(type LCD))

([fn71489_Class10024] of  Processor

	(cores 2)
	(frequency 1.5))

([fn71489_Class10025] of  Camera

	(has_LED_flash TRUE)
	(mp_resolution 8))

([fn71489_Class10026] of  Camera

	(has_LED_flash FALSE)
	(mp_resolution 2))

([fn71489_Class10027] of  RAM

	(amount_in_mb 768))

([fn71489_Class10028] of  Storage

	(amount_in_gb 4)
	(is_internal TRUE))

([fn71489_Class10029] of  SmartPhone

	(audio_device [fn71489_Class10032])
	(battery [fn71489_Class10033])
	(camera
		[fn71489_Class10034]
		[fn71489_Class10035])
	(communication_abilities wifi bluetooth gps usb)
	(display [fn71489_Class10030])
	(has_3G TRUE)
	(manufacturer "Lenovo")
	(memory
		[fn71489_Class10016]
		[fn71489_Class10036])
	(model "S60")
	(OS android)
	(price 320.0)
	(processor [fn71489_Class10031])
	(sensors accelerometer))

([fn71489_Class10030] of  Display

	(has_touchscreen TRUE)
	(size 5.0)
	(type LCD))

([fn71489_Class10031] of  Processor

	(cores 4)
	(frequency 1.2))

([fn71489_Class10032] of  AudioDevice

	(alert_type MP3)
	(has_3.5mm_jack TRUE)
	(has_loudspeaker TRUE))

([fn71489_Class10033] of  Battery

	(is_removable FALSE)
	(standby_time 336))

([fn71489_Class10034] of  Camera

	(has_LED_flash TRUE)
	(mp_resolution 15))

([fn71489_Class10035] of  Camera

	(has_LED_flash FALSE)
	(mp_resolution 8))

([fn71489_Class10036] of  Storage

	(amount_in_gb 8)
	(is_internal TRUE))

([fn71489_Class10037] of  Tablet

	(audio_device [fn71489_Class10032])
	(battery [fn71489_Class10033])
	(camera
		[fn71489_Class10025]
		[fn71489_Class10026])
	(communication_abilities wifi bluetooth gps usb)
	(display [fn71489_Class10038])
	(has_stylus TRUE)
	(manufacturer "Samsung")
	(memory [fn71489_Class10039])
	(model "Tab S 10.5 LTE")
	(OS android)
	(price 839.0)
	(processor [fn71489_Class10031])
	(sensors accelerometer))

([fn71489_Class10038] of  Display

	(has_touchscreen TRUE)
	(size 10.5)
	(type LCD))

([fn71489_Class10039] of  RAM

	(amount_in_mb 3072))

([fn71489_Class10040] of  Display

	(has_touchscreen FALSE)
	(size 1.5)
	(type MONOCHROME))

([fn71489_Class10041] of  SimpleMobileDevice

	(audio_device [fn71489_Class10007])
	(battery [fn71489_Class10042])
	(display [fn71489_Class10043])
	(has_flashlight TRUE)
	(manufacturer "Nokia")
	(model "1208")
	(price 50.0))

([fn71489_Class10042] of  Battery

	(is_removable TRUE)
	(standby_time 365))

([fn71489_Class10043] of  Display

	(has_touchscreen FALSE)
	(size 1.5)
	(type LCD))

([fn71489_Class10044] of  Tablet

	(audio_device [fn71489_Class10014])
	(battery [fn71489_Class10045])
	(camera
		[fn71489_Class10025]
		[fn71489_Class10026])
	(communication_abilities wifi bluetooth gps usb)
	(display [fn71489_Class10046])
	(has_stylus FALSE)
	(manufacturer "Apple")
	(memory
		[fn71489_Class10048]
		[fn71489_Class10049])
	(model "iPad Pro")
	(OS ios)
	(price 2000.0)
	(processor [fn71489_Class10047])
	(sensors compass gyro accelerometer fingerprint barometer))

([fn71489_Class10045] of  Battery

	(is_removable FALSE)
	(standby_time 400))

([fn71489_Class10046] of  Display

	(has_touchscreen TRUE)
	(size 12.9)
	(type LCD))

([fn71489_Class10047] of  Processor

	(cores 2)
	(frequency 2.26))

([fn71489_Class10048] of  RAM

	(amount_in_mb 4096))

([fn71489_Class10049] of  Storage

	(amount_in_gb 128)
	(is_internal TRUE))

([fn71489_Class68] of  SmartPhone

	(audio_device [fn71489_Class10014])
	(battery [fn71489_Class10015])
	(camera
		[fn71489_Class10012]
		[fn71489_Class10013])
	(communication_abilities wifi bluetooth gps radio usb)
	(display [fn71489_Class10010])
	(has_3G TRUE)
	(manufacturer "Apple")
	(memory
		[fn71489_Class10016]
		[fn71489_Class10017])
	(model "iPhone_6s")
	(OS ios)
	(price 1400.0)
	(processor [fn71489_Class10011])
	(sensors compass gyro fingerprint accelerometer))
)