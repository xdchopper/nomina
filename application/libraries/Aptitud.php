<?php 
	public class Aptitud{
		//Atributos
		public $intIdAptitud;
		public $strDescripcion;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->intIdAptitud = 0;
			$this->strDescripcion = '';
		}
	}
 ?>