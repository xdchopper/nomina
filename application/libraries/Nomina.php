<?php 
	public class Nomina{
		//Atributos
		public $intIdPersona;
		public $fltPercepcion;
		public $intIdRetencion;
		public $intFormaPago;
		public $strTarjeta;
		public $intHorasExtras;
		public $intIdFalta;
		public $intIdProductividad;
		//Constructor
		public __construct(){
			parent::__construct();
			$this->intIdPersona = 0;
			$this->fltPercepcion = 0;
			$this->intIdRetencion = 0;
			$this->intFormaPago = 0;
			$this->strTarjeta = '',
			$this->intHorasExtras = 0;
			$this->intIdFalta = 0;
			$this->intIdProductividad = 0;
		} 
	}
 ?>