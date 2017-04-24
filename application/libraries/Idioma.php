<?php 
	class Idioma{
		//Atributos
		public $intIdIdioma;
		public $strDescripcion;
		public $fltPorciento;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->intIdIdioma = 0;
			$this->strDescripcion = '';
			$this->fltPorciento = 0;
		}
	}
 ?>