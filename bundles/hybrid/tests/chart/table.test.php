<?php

Bundle::start('hybrid');

class ChartTableTest extends PHPUnit_Framework_TestCase {

	/**
	 * Chart instance
	 * 
	 * @var DriverStub
	 */
	private $chart = null;

	/**
	 * Setup the test environment.
	 */
	public function setUp()
	{
		$this->chart = new Hybrid\Chart\Table;
	}

	/**
	 * Teardown the test environment.
	 */
	public function tearDown()
	{
		$this->chart = null;
	}

	/**
	 * Test object is an instance of Hybrid\Chart\Driver.
	 *
	 * @test core
	 */
	public function testObjectInstanceOf()
	{
		$this->assertInstanceOf('Hybrid\Chart\Driver', $this->chart);
		$this->assertInstanceOf('Hybrid\Chart\Table', $this->chart);
	}

	/**
	 * Test generated UUID is always unique
	 *
	 * @test core
	 */
	public function testGeneratedUUID()
	{
		$this->assertContains('Table_', $this->chart->uuid());
	}

	/**
	 * Test render is output the correct value
	 *
	 * @test core
	 */
	public function testRenderIsOutputCorrectly()
	{
		$uuid   = $this->chart->uuid();
		$output = $this->chart->render();

		$this->assertContains('<div id="'.$uuid.'">', $output);
		$this->assertContains("new google.visualization.Table(document.getElementById('{$uuid}')", $output);
	}
}