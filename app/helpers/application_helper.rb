module ApplicationHelper
    def disp_flg(value)
        "◎" if true == value
    end
    def icon_btn(icon, value="")
        "<span class='oi #{icon}'>#{value}</span>".html_safe
    end

end
