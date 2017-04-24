<?php 
	class Productividad{
		//Atributos
		public $intIdProductividad;
		public $strDescripcion;
		public $fltBono;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->intIdProductividad = 0;
			$this->strDescripcion = '';
			$this->fltBono = 0;
		}
	}
 ?>