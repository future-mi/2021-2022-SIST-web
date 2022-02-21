package com.sist.cotroller;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(RUNTIME)
@Target(METHOD)
public @interface RequestMapping {
	// Anotation의 역할 구분자(찾기를 쉽게한다) → if를 대체
	public String value();
}
