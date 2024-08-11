package com.zhengjj.healthmanagement.common;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
//切面注解
public @interface AutoLog {
    String value() default "";
}