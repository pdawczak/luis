<?php

class Person
{
    private $name;
    private $age;

    public function __construct($name, $age)
    {
        $this->name = $name;
        $this->age  = $age;
    }

    public function getName()
    {
        return $this->name;
    }

    public function setAge($age)
    {
        $this->age = $age;
    }

    public function getAge()
    {
        return $this->age;
    }

    public function sayHelloTo(Person $person)
    {
        return sprintf('%s: Hello %s!', $this->getName(), $person->getName());
    }

    public function isAdult()
    {
        return $this->getAge() >= 18;
    }

    public function countTo($number)
    {
        for ($i = 1; $i <= $number; $i++) {
            echo $i . " ";
        }
    }
}
