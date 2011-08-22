module ApplicationHelper
  def common_time(time)
    time.strftime("%x %X")
  end

  def list_path_helper(list_path)
    list = list_path.map do |p|
      link_to p.name, p
    end
    list.join('>').html_safe
  end
end
