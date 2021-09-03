extends CanvasLayer

func _on_ShortCuts_meta_clicked(meta):
	match meta:
		"screenshot":
			screen_shot(false)
		"selfie":
			screen_shot(true)
			yield(get_tree().create_timer(0.2), "timeout")
		"volume":
			volume_change()
		
func screen_shot(selfie):
#	if user.user["name"] != "Player":
		if selfie == false:
			$Panel.visible = false
		yield(get_tree(), "idle_frame")
		yield(get_tree(), "idle_frame")
		var image = get_viewport().get_texture().get_data()
		image.flip_y()
		image.save_png("user://"+str(OS.get_date())+"-"+str(OS.get_time())+".png")
#		ai_say("File saved to" +str(OS.get_user_data_dir()))
		if selfie == false:
			$"Panel".visible = true
#			if get_parent().has_node("Dock"):
#				get_node("../Dock").visible = true

func volume_change()-> void:
		var bus_idx = AudioServer.get_bus_index("Master")
		var volume = AudioServer.get_bus_volume_db(bus_idx)
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), volume -10)
		if volume <= -30:
			AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 0)
		$Alarm.play()
