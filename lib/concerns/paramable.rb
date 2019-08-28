module Paramable 
  module Instancemethods
    
  def to_param
    name.downcase.gsub(' ', '-')
  end
  
 end
    
end