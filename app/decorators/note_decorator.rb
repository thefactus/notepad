class NoteDecorator < Draper::Decorator
  delegate_all

  def created_at
    h.content_tag :span, class: 'time' do
      'Created at: ' + object.created_at.strftime("%a %m/%d/%y")
    end
  end
end
