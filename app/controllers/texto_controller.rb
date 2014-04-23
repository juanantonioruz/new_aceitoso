	class TextoController < ApplicationController
	  layout 'navegable'
	  def inicio
	  	 inicio=165 #Este es el artículo de bienvenida.
	  	 @generica=Generica.find(inicio)
	  end

	  def articulo
	  	#@generica=Generica.find(params[:id])

	    
	    resultado=Relacionable.find_by_id(params[:id]).heir
	        
	        if [Generica, Pieza, Hito, Camino].include?resultado.class
	          	html=resultado.descripcion
	        elsif resultado.class==Museo
	            html=resultado.ficha.descripcion
	   			#html="#{texto_con_enlaces(resultado.ficha.descripcion, resultado.id, Museo)}"        
	          	
	        end
	    @html=html
	    @resultado=resultado
	    #return resultado, html
	  
	  end
	end
