<?php 
	public class Persona{
		//Atributos
		public $intIdPersona;
		public $strNombre;
		public $intGenero;
		public $intEdad;
		public $strFechaNacimiento;
		public $strRFC;
		public $strCurp;
		//Constructor de la clase
		public function __construct(){
			parent::__construct();
			$this->intIdPersona = 0;
			$this->strNombre = '';
			$this->intGenero = 0;
			$this->intEdad = 0;
			$this->strFechaNacimiento = '';
			$this->strRFC = '';
			$this->strCurp = '';
		}
	}
 ?>