package com.howwow.demo_liquibase

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class DemoLiquibaseApplication

fun main(args: Array<String>) {
    runApplication<DemoLiquibaseApplication>(*args)
}
