<?php 
	class Enfermedades{
		//Atributos
		public $intIdEnfermedad;
		public $strDescripcion;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->intIdEnfermedad = 0;
			$this->strDescripcion = '';
		}
	}
 ?>