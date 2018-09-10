import personas.*

object spa {
	var property ultimaPersonaAtendida = null
	
	method volvioEnseguida (persona) = self.ultimaPersonaAtendida() == persona
	
	method darMasajesNVeces(persona,veces) {
		veces.times({ n => persona.recibirMasajes() })
	}
	method atender(persona) {
		if (self.volvioEnseguida(persona)) { 
			self.darMasajesNVeces(persona,2)
		}
		else {
			persona.recibirMasajes()
		}
		persona.darseUnBanioDeVapor()
		self.ultimaPersonaAtendida(persona) 
		// hay que hacer que la persona reciba masajes y se dé un baño de vapor
		// despues, agregar el premio para el que vuelve enseguida
	}
	
}