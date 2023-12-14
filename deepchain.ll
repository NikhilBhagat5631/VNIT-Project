; ModuleID = 'samples/test.ll'
source_filename = "./samples/linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 !dbg !7 {
entry:
  ret i32 0, !dbg !12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 !dbg !13 {
entry:
  ret i32 0, !dbg !14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1() #0 !dbg !15 {
entry:
  ret i32 0, !dbg !16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 (...)* %fp3) #0 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %fp3, metadata !23, metadata !DIExpression()), !dbg !24
  %call = call i32 (...) %fp3(), !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 (...)* %fp2) #0 !dbg !27 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %fp2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 (...)* bitcast (i32 ()* @f3 to i32 (...)*), metadata !28, metadata !DIExpression()), !dbg !29
  %call = call i32 @bar(i32 (...)* bitcast (i32 ()* @f3 to i32 (...)*)), !dbg !30
  %call1 = call i32 (...) bitcast (i32 ()* @f3 to i32 (...)*)(), !dbg !31
  ret i32 0, !dbg !32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fun(i32 (...)* %fp1) #0 !dbg !33 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* %fp1, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i32 (...)* bitcast (i32 ()* @f2 to i32 (...)*), metadata !34, metadata !DIExpression()), !dbg !35
  %call = call i32 @foo(i32 (...)* bitcast (i32 ()* @f2 to i32 (...)*)), !dbg !36
  %call1 = call i32 (...) bitcast (i32 ()* @f2 to i32 (...)*)(), !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !39 {
entry:
  call void @llvm.dbg.value(metadata i32 (...)* bitcast (i32 ()* @f1 to i32 (...)*), metadata !40, metadata !DIExpression()), !dbg !41
  %call = call i32 @fun(i32 (...)* bitcast (i32 ()* @f1 to i32 (...)*)), !dbg !42
  %call1 = call i32 (...) bitcast (i32 ()* @f1 to i32 (...)*)(), !dbg !43
  ret i32 0, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "samples/linear.c", directory: "/home/demonik/slim-ir-master")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"Ubuntu clang version 11.1.0-6"}
!7 = distinct !DISubprogram(name: "f3", scope: !8, file: !8, line: 3, type: !9, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./samples/linear.c", directory: "/home/demonik/slim-ir-master")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 4, column: 5, scope: !7)
!13 = distinct !DISubprogram(name: "f2", scope: !8, file: !8, line: 7, type: !9, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 8, column: 5, scope: !13)
!15 = distinct !DISubprogram(name: "f1", scope: !8, file: !8, line: 11, type: !9, scopeLine: 11, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 12, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "bar", scope: !8, file: !8, line: 15, type: !18, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{!11, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{!11, null}
!23 = !DILocalVariable(name: "fp3", arg: 1, scope: !17, file: !8, line: 15, type: !20)
!24 = !DILocation(line: 0, scope: !17)
!25 = !DILocation(line: 16, column: 5, scope: !17)
!26 = !DILocation(line: 17, column: 5, scope: !17)
!27 = distinct !DISubprogram(name: "foo", scope: !8, file: !8, line: 20, type: !18, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DILocalVariable(name: "fp2", arg: 1, scope: !27, file: !8, line: 20, type: !20)
!29 = !DILocation(line: 0, scope: !27)
!30 = !DILocation(line: 22, column: 5, scope: !27)
!31 = !DILocation(line: 23, column: 5, scope: !27)
!32 = !DILocation(line: 24, column: 5, scope: !27)
!33 = distinct !DISubprogram(name: "fun", scope: !8, file: !8, line: 27, type: !18, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!34 = !DILocalVariable(name: "fp1", arg: 1, scope: !33, file: !8, line: 27, type: !20)
!35 = !DILocation(line: 0, scope: !33)
!36 = !DILocation(line: 29, column: 5, scope: !33)
!37 = !DILocation(line: 30, column: 5, scope: !33)
!38 = !DILocation(line: 31, column: 5, scope: !33)
!39 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 34, type: !9, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DILocalVariable(name: "fp", scope: !39, file: !8, line: 35, type: !20)
!41 = !DILocation(line: 0, scope: !39)
!42 = !DILocation(line: 36, column: 5, scope: !39)
!43 = !DILocation(line: 37, column: 5, scope: !39)
!44 = !DILocation(line: 38, column: 5, scope: !39)
