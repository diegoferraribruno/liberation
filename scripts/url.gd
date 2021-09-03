extends RichTextLabel

func _ready():
	 self.connect("meta_clicked", self, "_on_RichTextLabel_meta_clicked")

func _on_RichTextLabel_meta_clicked(meta):
	if str(meta).begins_with("http"):
		OS.shell_open(str(meta))
