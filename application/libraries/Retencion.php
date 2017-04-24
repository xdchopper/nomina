<?php 
	public class Retencion{
		//Atributos
		public $intIdRetencion;
		public $fltRetencionCosto;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->intIdRetencion = 0;
			$this->fltRetencionCosto = 0;
		}
	}
 ?>