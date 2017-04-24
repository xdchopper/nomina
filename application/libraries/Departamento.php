<?php 
	public class Departamento{
		//Atributos
		public $strDescripcion;
		public $fltHorasExtra;
		//Constructores
		public function __construct(){
			parent::__construct();
			$this->strDescripcion = '';
			$this->fltHorasExtra = 0;
		}
	}
 ?>