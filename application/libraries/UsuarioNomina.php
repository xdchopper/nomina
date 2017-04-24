<?php 
	public class UsuarioNomina{
		//Atributos
		public $strUsuario;
		public $strContrasena;
		//Constructor
		public function __construct(){
			parent::__construct();
			$this->strUsuario = '';
			$this->strContrasena = '';
		}
	}
 ?>