/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

//  import java
//  from MethodAccess call, Method method
//  where
//     call.getMethod() = method and
//     method.hasName("nextLine") and
//     method.getDeclaringType().hasQualifiedName("java.util", "Scanner")
//  select call, "This is it."

 import java
 from LoopStmt loop, MethodAccess call, Method method
 where
    loop.getAChild*() = call.getEnclosingStmt () and
    call.getMethod() = method and
    method.hasName("nextLine") and
    method.getDeclaringType().hasQualifiedName("java.util", "Scanner")
 select call, "Loops: This is it."
