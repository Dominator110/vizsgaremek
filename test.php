<?php
    require "login.php";
    require "kapcs.php";
    use PHPUnit\Framework\TestCase;

    class test extends TestCase{

        private $result;

        public function testLogin():void{
            $GLOBALS['username'] = "Gabo";
            
            $GLOBALS['secure_pass'] = "7815696ecbf1c96e6894b779456d330e";

            Login();
            $this->assertEquals(true, $_SESSION['login']);
        }

        public function testFalseLogin():void{
            $GLOBALS['username'] = "asd";
            
            $GLOBALS['secure_pass'] = "asd";

            Login();
            $this->assertEquals(false, $_SESSION['login']);
        }
    }
?>