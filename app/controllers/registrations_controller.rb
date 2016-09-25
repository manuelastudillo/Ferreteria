class RegistrationsController <ApplicationController
     def new
       super
     	
     end
     def create
     	#logica de tu codigo
     end
     def update
     	super
     end

     def index
          @usuarios = Usuario.all     
     end


end
