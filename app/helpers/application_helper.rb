module ApplicationHelper
  def text_field_with_label(form , att)
    form.label(att) + form.text_field(att)
  end
  def coll_select(f , att)
      f.check_box(att) + f.label(att)
  end
end
