# AJUI_Tip

AJUI Tip is a component made for 4D that help you to create and display tip in your forms. You can fully customize your tips and have templates to easily use the same style everywhere in your application.

A tip is created via the language and will be displayed in a subform element in your form. The tip is stored in an object that is an instance of a tip.

### AJUI components library

[AJUI_Library](https://github.com/AJARProject/AJUI_Library)

### Documentation

[wiki AJUI_Tip](https://github.com/AJARProject/AJUI_Tip/wiki)

**Example**

```4d
    Case of
      : (Form event=On Load)
        Form.tip:=New AJUI_Tip

        Form.tip.TargetName("firstName_field")

        Form.tip.TipName("firstName_tip")
        Form.tip.TextLabel("Enter First Name")
      : (Form event=On Getting Focus)
        Form.tip.Show()
      : (Form event=On Losing Focus)
        Form.tip.Hide()
    End case
```

### Version

1.6.2-Build44  // Wed, 29 Jul 2020 07:46:30 GMT

Minimal 4D Version : 
 - 18 (using formula member function)
 - 18 R3 (using class)

### Questions?

If you have any question, you can ask them directly on github or write to info@ajar.ch
