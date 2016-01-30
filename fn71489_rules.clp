; глобална променлива, която се ползва да се намери мобилното устройство
; с най-ниска цена от всички устройства
(defglobal ?*lowest_price* = 2000)


; message handler, който има за цел да намери устройството с най-ниска цена
(defmessage-handler MobileDevice init after ()
        
        (if (< ?self:price ?*lowest_price*)
        then 
                (bind ?*lowest_price* ?self:price))
)

; функция, която проверява дали дадена сума пари са достатъчни, за покупка на каквото
; и да е устройство
(deffunction has_enough_money(?money) 
        
        (if (< ?money ?*lowest_price*)
        then
                (return FALSE)
        else
                (return TRUE))
)

; message handler, който връща стринг, ако аудио устройството има специален
; еквалайзер
(defmessage-handler AudioDevice show_specs ()
        (if (eq TRUE ?self:special_audio_eq) 
        then
                (str-cat " Has special audio equalizer.")
        else
                "")
)

; message handler, който връща стринг с това колко часа издържа батерията
(defmessage-handler Battery show_specs ()
        (str-cat "Battery lasts " ?self:standby_time " hours on standby.") 
)

; message handler, който връща стринг с информация колко мегапиксела е дадена камера,
; дали е предна или задна и дали има светкавица
(defmessage-handler Camera show_specs ()
        (bind ?result_string (str-cat " Has " ?self:mp_resolution " megapixel"))
        (if (eq TRUE ?self:is_primary)
        then
                (bind ?result_string (str-cat ?result_string " primary"))
        else
                (bind ?result_string (str-cat ?result_string " front")))
        (bind ?result_string (str-cat ?result_string " camera")) 
        (if (eq TRUE ?self:has_LED_flash)
        then
                (bind ?result_string (str-cat ?result_string " with LED flash")))
        (bind ?result_string (str-cat ?result_string "."))
        ?result_string
)

; message handler, който връща стринг с информация за размера на екрана и това дали има
; тъчскрийн 
(defmessage-handler Display show_specs ()
        (bind ?result_string (str-cat " Has " ?self:size " inches " ?self:type " screen"))
        (if (eq TRUE ?self:has_touchscreen)
        then
                (bind ?result_string (str-cat ?result_string " with touchscreen")))
        (bind ?result_string (str-cat ?result_string "."))
        ?result_string
)

; message handler, който връща стринг с това колко мегабайта памет има РАМ-та
(defmessage-handler RAM show_specs ()
        (str-cat " Has " ?self:amount_in_mb " mb of RAM.") 
)

; message handler, който връща стринг с това колко гигабайта има устройството за съсхранение
; на данни
(defmessage-handler Storage show_specs ()

        (bind ?result_string (str-cat " Has " ?self:amount_in_gb " gb of"))
        (if (eq TRUE ?self:is_internal)
        then
                (bind ?result_string (str-cat ?result_string " internal")))
        (bind ?result_string (str-cat ?result_string " storage."))
        ?result_string 
 )

; message handler, който връща стринг с това колко ядра и с каква честота работи даден процесор
(defmessage-handler Processor show_specs ()
        (str-cat " Has processor with " ?self:cores " cores with " ?self:frequency "GHz frequency.") 
)

; message handler, който връща стринг с иомбинираните стрингове от по-горе за просто мобилно устройство
(defmessage-handler SimpleMobileDevice show_specs ()
        (bind ?result_string 
                (str-cat (send ?self get-manufacturer) " "
                         (send ?self get-model) " ."  
                         (send (send ?self get-battery) show_specs)
                         (send (send ?self get-display) show_specs)
                         (send (send ?self get-audio_device) show_specs)))
        (if (eq TRUE ?self:has_flashlight)
        then
                (bind ?result_string (str-cat ?result_string " Has a flashlight")))
        (bind ?result_string (str-cat ?result_string "."))
        (bind ?result_string (str-cat ?result_string " For the price of " (send ?self get-model)"."))
        ?result_string     
)

; message handler, който връща стринг с иомбинираните стрингове от по-горе за смартфон
(defmessage-handler SmartPhone show_specs ()
        (bind ?result_string 
                (str-cat ?self:manufacturer " "
                         ?self:model " . "  
                         (send (send ?self get-battery) show_specs)
                         (send (send ?self get-display) show_specs)
                         (send (send ?self get-audio_device) show_specs)
                         (send (send ?self get-processor) show_specs)
                         " Has "(send ?self get-OS) " operating system."
                         (bind ?m "")
                         (progn$ (?memory (send ?self get-memory)) (bind ?m (str-cat ?m (send ?memory show_specs))))
                         (bind ?c "")
                         (progn$ (?camera (send ?self get-camera)) (bind ?c (str-cat ?c (send ?camera show_specs))))
                         " Also has "
                         (bind ?a "")
                         (progn$ (?ability (send ?self get-communication_abilities)) (bind ?a (str-cat ?a ?ability " ")))
                         "as communication abilities and "
                         (progn$ (?sensor (send ?self get-sensors)) (str-cat ?sensor " "))
                         "sensors."))
        (if (eq TRUE ?self:has_3G)
        then
                (bind ?result_string (str-cat ?result_string " Supports 3G internet")))
        (bind ?result_string (str-cat ?result_string "."))
        (bind ?result_string (str-cat ?result_string " For the price of " (send ?self get-price)"."))
        ?result_string      
)

; message handler, който връща стринг с иомбинираните стрингове от по-горе за таблет
(defmessage-handler Tablet show_specs ()
        (bind ?result_string 
                (str-cat ?self:manufacturer " "
                         ?self:model " . "  
                         (send (send ?self get-battery) show_specs)
                         (send (send ?self get-display) show_specs)
                         (send (send ?self get-audio_device) show_specs)
                         (send (send ?self get-processor) show_specs)
                         " Has "(send ?self get-OS) " operating system."
                         (bind ?m "")
                         (progn$ (?memory (send ?self get-memory)) (bind ?m (str-cat ?m (send ?memory show_specs))))
                         (bind ?c "")
                         (progn$ (?camera (send ?self get-camera)) (bind ?c (str-cat ?c (send ?camera show_specs))))
                         " Also has "
                         (bind ?a "")
                         (progn$ (?ability (send ?self get-communication_abilities)) (bind ?a (str-cat ?a ?ability " ")))
                         "as communication abilities and "
                         (progn$ (?sensor (send ?self get-sensors)) (str-cat ?sensor " "))
                         "sensors."))
        (if (eq TRUE ?self:has_stylus)
        then
                (bind ?result_string (str-cat ?result_string " Has stylus")))
        (bind ?result_string (str-cat ?result_string "."))
        (bind ?result_string (str-cat ?result_string " For the price of " (send ?self get-price)"."))
        ?result_string      
)


; правило, чрез което се събира информация, чрез която ще се направи избор на мобилно устройство
; резултатите се запазват като факти 
(defrule get_information
        (initial-fact)
=>     
        ; с колко пари разполага клиента
        (printout t "How much money are you ready to spend?" crlf)
        (bind ?money (read))

        ; ако няма достатъчно пари, не продължава да пита други въпроси
        (if (has_enough_money ?money)
        then 
                (assert (money ?money))
        else 
                (printout t "Sorry, " ?money " is not enough for any mobile device." crlf)
                (return))

        ; дали клиента иска устройство с голяма батерия
        (printout t "Would you like your device to have long battery life? yes/no" crlf)
        (bind ?want_big_battery (read))
        (if (eq ?want_big_battery yes)
        then
                (assert (want_big_battery TRUE))
        else
                (assert (want_big_battery FALSE)))

        ; дали клиента иска устройство с прост интерфейс т.е без тъчскрийн
        (printout t "Would you want your device to have simple interface (no touchscreen)? yes/no" crlf)
        (bind ?simple_interface (read))
        (if (eq ?simple_interface yes)
        then
                (assert (want_simple TRUE))
        else
                (assert (want_simple FALSE)))

        ; дали клиента ще ползва устройството предимно за говорене
        (printout t "Would you use your device PRIMARY for talking? yes/no" crlf)
        (bind ?want_to_talk (read))
        (if (eq ?want_to_talk yes)
        then
                (assert (want_to_talk TRUE))
                
        else
                (assert (want_to_talk FALSE)))
        ; ако иска прост интерфейс и ще го ползва само за говорене
        ; не питаме повече въпроси
        (if (eq ?simple_interface yes)
                then
                    (assert (want_to_talk ?want_to_talk))
                    (assert (want_to_take_photos FALSE))
                    (assert (want_music FALSE))
                    (assert (want_to_watch FALSE))
                    (assert (want_gaming FALSE))
                    (assert (want_big_battery FALSE))
                    (return))

        ; дали клиента ще прави снимки
        (printout t "Would you use your device for taking photographs? yes/no" crlf)
        (bind ?want_to_take_photos (read))
        (if (eq ?want_to_take_photos yes)
        then
                (assert (want_to_take_photos TRUE))
        else
                (assert (want_to_take_photos FALSE)))

        ; дали клиента ще слуша музика
        (printout t "Would you use your device for listening to music? yes/no" crlf)
        (bind ?want_music (read))
        (if (eq ?want_music yes)
        then
                (assert (want_music TRUE))
        else
                (assert (want_music FALSE)))

        ; дали иска устойството да има голям екран
        (printout t "Would you like your device to have big screen for watching videos and reading? yes/no" crlf)
        (bind ?want_to_watch (read))
        (if (eq ?want_to_watch yes)
        then
                (assert (want_to_watch TRUE))
        else
                (assert (want_to_watch FALSE)))

        ; дали ще ползва устройството за да играе игри
        (printout t "Would you use your device for gaming? yes/no" crlf)
        (bind ?want_gaming (read))
        (if (eq ?want_gaming yes)
        then
                (assert (want_gaming TRUE))
        else
                (assert (want_gaming FALSE)))
)

; правило, което определя дали клиента иска просто устройство
(defrule determine_simple_mobile_device
    (want_simple TRUE)
    (want_to_talk ?talk)
=>
    (if (eq ?talk TRUE)
    then
        (bind ?choice (find-all-instances ((?class SimpleMobileDevice)) (eq (send (send ?class get-display) get-type) MONOCHROME)))
        (assert (choice ?choice))
    else
        (bind ?choice (find-all-instances ((?class SimpleMobileDevice)) (eq (send (send ?class get-display) get-type) LCD)))
        (assert (choice ?choice)))
)

; правило, което определя дали клиента иска устройство, с което ще снима
(defrule determine_photo_smart_phone
    (want_simple FALSE)
    (want_to_talk FALSE)
    (want_to_take_photos TRUE)
    (money ?money)
    (want_big_battery ?battery)

=>
    (if (eq ?battery TRUE)
    then
        (bind ?choice (find-all-instances ((?class SmartPhone)) 
        (and (>= (send (expand$ (first$ (send ?class get-camera))) get-mp_resolution) 12)
        (>= (send (send ?class get-battery) get-standby_time) 300) (<= ?class:price ?money))))
    else
        (bind ?choice (find-all-instances ((?class SmartPhone)) 
        (and (>= (send (expand$ (first$ (send ?class get-camera))) get-mp_resolution) 12)
        (< (send (send ?class get-battery) get-standby_time) 300) (<= ?class:price ?money)))))

    (assert (choice ?choice))
)

; правило, което определя дали клиента иска устройство, с което ще слуша музика
(defrule determine_music_smart_phone
    (want_simple FALSE)
    (want_to_talk FALSE)
    (want_music TRUE)
    (money ?money)
=>
    (bind ?choice (find-all-instances ((?class SmartPhone)) 
    (and (eq (send (send ?class get-audio_device) get-special_audio_eq) TRUE ) 
    (<= ?class:price ?money))))

    (assert (choice ?choice))
)

; правило, което определя дали клиента иска устройство, с което играе игри
(defrule determine_gaming_device
    (want_simple FALSE)
    (want_to_talk FALSE)
    (want_to_watch ?watch)
    (want_gaming TRUE)
    (money ?money)
=>
    (if (eq ?watch TRUE)
    then
        (bind ?choice (find-all-instances ((?class Tablet)) 
        (and (>= (send (send ?class get-processor) get-cores) 4) 
        (<= ?class:price ?money))))
    else
        (bind ?choice (find-all-instances ((?class SmartPhone)) 
        (and (>= (send (send ?class get-processor) get-cores) 4)
        (<= ?class:price ?money)))))

    (assert (choice ?choice))
)

; правило, което определя дали клиента иска таблет
(defrule determine_tablet
    (want_simple FALSE)
    (want_to_talk FALSE)
    (want_to_watch TRUE)
    (want_gaming ?gaming)
    (money ?money)
=>
    (if (eq ?gaming TRUE)
    then
        (bind ?choice (find-all-instances ((?class Tablet)) 
        (and (>= (send (send ?class get-processor) get-cores) 4) 
        (<= ?class:price ?money))))
    else
        (bind ?choice (find-all-instances ((?class Tablet))
        (<= ?class:price ?money))))

    (assert (choice ?choice))
)

; правило, което принтира избора на клиента
(defrule print-choices
    (choice ?choice)
=>
    (printout t "Suitable device for you: " crlf)
    (printout t (send ?choice show_specs) crlf))
