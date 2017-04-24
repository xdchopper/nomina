<?php 
	public class Falta{
		//Atributos
		public $intIdFalta;
		public $strFecha;
		public $strDescripcion;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->intIdFalta = 0;
			$this->strFecha = '';
			$this->strDescripcion = '';
		}
	}
 ?>