require 'vizkit'
#load ui file
gui = Vizkit.load 'resources/test_gui.ui'

#do something if someone is clicking on the 
#button named Button
gui.Button.connect(SIGNAL('clicked()')) do
    puts 'someone presses the button'
    gui.Time.setText(Time::now.to_s)
end

#display something in the label named Time
gui.Time.setText(Time::now.to_s)
gui.Message.setText("Just a message!")

gui.show
Vizkit.exec
