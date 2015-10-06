require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do
  # code!
  @states = Array.new
  @state = {:id => 1, :name => "Washington" }
  @states << @state
    @state = {:id => 2, :name => "Florida" }
   @states << @state
    @state = {:id => 3, :name => "Wyoming" }
    @states << @state
    @state = {:id => 4, :name => "Alaska"}
    @states << @state
    @state = {:id => 5, :name => "California" }
   @states << @state
   @states.sort_by! { | states | states[:name]}
  erb :states, layout: :main
end
