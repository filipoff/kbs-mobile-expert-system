; Sat Jan 23 21:51:26 EET 2016
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot pixel_density
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot processor
		(type INSTANCE)
;+		(allowed-classes Processor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot amount_in_mb
		(type INTEGER)
		(range 0 8192)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot KB_494401_Class3
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot OS
		(type SYMBOL)
		(allowed-values android ios)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot is_mon
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot alert_type
		(type SYMBOL)
		(allowed-values MP3 WAV MIDI)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot chipset_model
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot audio_device
		(type INSTANCE)
;+		(allowed-classes AudioDevice)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot size
		(type FLOAT)
		(range 1.5 12.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot mAh
		(type INTEGER)
		(range 0 5000)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_autofocus
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot sensors
		(type SYMBOL)
		(allowed-values compass gyro fingerprint accelerometer barometer)
		(create-accessor read-write))
	(single-slot price
		(type FLOAT)
		(range 20.0 2000.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot camera
		(type INSTANCE)
;+		(allowed-classes Camera)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot audio_playing_time
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot width_in_mm
		(type INTEGER)
		(range 0 100)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_loudspeaker
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot is_primary
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot release_year
		(type INTEGER)
		(range 2000 2016)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot amount_in_gb
		(type INTEGER)
		(range 1 128)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Brand
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot KB_494401_Class10
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot has_touchscreen
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot display
		(type INSTANCE)
;+		(allowed-classes Display)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot type
		(type SYMBOL)
		(allowed-values LCD MONOCHROME)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot communication_abilities
		(type SYMBOL)
		(allowed-values wifi bluetooth gps radio usb)
		(create-accessor read-write))
	(single-slot frequency
		(type FLOAT)
		(range 1.0 3.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot talk_time
		(type INTEGER)
		(range 1 15)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot frequancy
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot thickness_in_mm
		(type INTEGER)
		(range 0 10)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot model
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot length_in_mm
		(type INTEGER)
		(range 0 200)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot standby_time
		(type INTEGER)
		(range 10 400)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot special_audio_eq
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot manufacturer
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_3G
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot memory
		(type INSTANCE)
;+		(allowed-classes Memory)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot is_internal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_stylus
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot mp_resolution
		(type INTEGER)
		(range 2 15)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot weight
		(type FLOAT)
		(range 0.0 500.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_flashlight
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot battery
		(type INSTANCE)
;+		(allowed-classes Battery)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot is_removable
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot cores
		(type INTEGER)
		(range 1 8)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_3.5mm_jack
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_LED_flash
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass MobileDevice
	(is-a USER)
	(role abstract)
	(single-slot model
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(visibility public))
	(single-slot manufacturer
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(visibility public))
	(single-slot battery
		(type INSTANCE)
;+		(allowed-classes Battery)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot display
		(type INSTANCE)
;+		(allowed-classes Display)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot price
		(type FLOAT)
		(range 20.0 2000.0)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(visibility public))
	(single-slot audio_device
		(type INSTANCE)
;+		(allowed-classes Audio_device)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass SmartMobileDevice
	(is-a MobileDevice)
	(role abstract)
	(multislot communication_abilities
		(type SYMBOL)
		(allowed-values wifi bluetooth gps radio usb)
		(create-accessor read-write)
		(visibility public))
	(single-slot processor
		(type INSTANCE)
;+		(allowed-classes Processor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot camera
		(type INSTANCE)
;+		(allowed-classes Camera)
		(cardinality 1 2)
		(create-accessor read-write))
	(multislot sensors
		(type SYMBOL)
		(allowed-values compass gyro fingerprint accelerometer barometer)
		(create-accessor read-write)
		(visibility public))
	(multislot memory
		(type INSTANCE)
;+		(allowed-classes Memory)
		(cardinality 1 2)
		(create-accessor read-write))
	(single-slot OS
		(type SYMBOL)
		(allowed-values android ios)
;+		(cardinality 1 1)
		(create-accessor read-write)
		(visibility public)))

(defclass Tablet
	(is-a SmartMobileDevice)
	(role concrete)
	(pattern-match reactive)
	(single-slot has_stylus
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass SmartPhone
	(is-a SmartMobileDevice)
	(role concrete)
	(pattern-match reactive)	
	(single-slot has_3G
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass SimpleMobileDevice
	(is-a MobileDevice)
	(role concrete)
	(pattern-match reactive)
	(single-slot has_flashlight
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Display
	(is-a USER)
	(role concrete)
	(pattern-match reactive)	
	(single-slot type
		(type SYMBOL)
		(allowed-values LCD MONOCHROME)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_touchscreen
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot size
		(type FLOAT)
		(range 1.5 12.0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Camera
	(is-a USER)
	(role concrete)
	(pattern-match reactive)
	(single-slot mp_resolution
		(type INTEGER)
		(range 2 15)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_LED_flash
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot is_primary
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Battery
	(is-a USER)
	(role concrete)
	(pattern-match reactive)
	(single-slot standby_time
		(type INTEGER)
		(range 10 400)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot is_removable
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass AudioDevice
	(is-a USER)
	(role concrete)
	(pattern-match reactive)
	(multislot alert_type
		(type SYMBOL)
		(allowed-values MP3 WAV MIDI)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot special_audio_eq
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot has_3.5mm_jack
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot has_loudspeaker
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Memory
	(is-a USER)
	(role abstract))

(defclass RAM
	(is-a Memory)
	(role concrete)
	(pattern-match reactive)	
	(single-slot amount_in_mb
		(type INTEGER)
		(range 0 8192)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Storage
	(is-a Memory)
	(role concrete)
	(pattern-match reactive)	
	(single-slot amount_in_gb
		(type INTEGER)
		(range 1 128)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot is_internal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Processor
	(is-a USER)
	(role concrete)
	(pattern-match reactive)
	(single-slot frequency
		(type FLOAT)
		(range 1.0 3.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot cores
		(type INTEGER)
		(range 1 8)
;+		(cardinality 1 1)
		(create-accessor read-write)))