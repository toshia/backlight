# -*- coding: utf-8 -*-

Plugin.create :backlight do
  on_favorite do |a,b|
    bg_system "xbacklight -inc 1"
  end

  command(:backlight_dark,
          name: 'ディスプレイバックライトを暗くする',
          condition: lambda{ |opt| true },
          visible: true,
          role: :window) do |opt|
    bg_system "xbacklight -dec 5"
  end

  command(:backlight_light,
          name: 'ディスプレイバックライトを明るくする',
          condition: lambda{ |opt| true },
          visible: true,
          role: :window) do |opt|
    bg_system "xbacklight -inc 5"
  end

  command(:keyboard_backlight_dark,
          name: 'キーボードバックライトを暗くする',
          condition: lambda{ |opt| true },
          visible: true,
          role: :window) do |opt|
    bg_system "kbdlight down"
  end

  command(:keyboard_backlight_light,
          name: 'キーボードバックライトを明るくする',
          condition: lambda{ |opt| true },
          visible: true,
          role: :window) do |opt|
    bg_system "kbdlight up"
  end
end
