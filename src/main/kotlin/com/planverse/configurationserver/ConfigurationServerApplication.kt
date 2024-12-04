package com.planverse.configurationserver

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.cloud.config.server.EnableConfigServer

@EnableConfigServer
@SpringBootApplication
class ConfigurationServerApplication

fun main(args: Array<String>) {
    runApplication<ConfigurationServerApplication>(*args)
}
