<?php 
	public class Rrhh{
		//Atributos
		public $intIdPersona;
		public $strDomicilio;
		public $strTelefono;
		public $intIdEnfermedad;
		public $intIdIdioma;
		public $intIdAptitud;
		public $strDepartamento;
		public $strFechaInicio;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->intIdPersona = 0;
			$this->strDomicilio = '';
			$this->strTelefono = '';
			$this->intIdEnfermedad = 0;
			$this->intIdIdioma = 0;
			$this->intIdAptitud = 0;
			$this->strDepartamento = '';
			$this->strFechaInicio = '';
		}
	}
 ?>