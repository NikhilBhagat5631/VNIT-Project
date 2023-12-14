; ModuleID = 'samples/test.ll'
source_filename = "./samples/testcase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Function 13 called with value: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Function 14 called with value: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Function 15 called with value: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Function 16 called with value: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Function 17 called with value: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Function 18 called with value: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Function 19 called with value: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Function 20 called with value: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Function 21 called with value: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Function 22 called with value: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Function 23 called with value: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Function 24 called with value: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Function 25 called with value: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Function 6 called with value: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Function 7 called with value: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Function 8 called with value: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Function 9 called with value: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Function 10 called with value: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Function 11 called with value: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Function 12 called with value: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  call void @func6(i32 6), !dbg !12
  call void @func7(i32 7), !dbg !13
  call void @func8(i32 8), !dbg !14
  call void @func9(i32 9), !dbg !15
  call void @func10(i32 10), !dbg !16
  call void @func11(i32 11), !dbg !17
  call void @func12(i32 12), !dbg !18
  ret i32 0, !dbg !19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func6(i32 %val) #0 !dbg !20 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata void (i32)* @func12, metadata !25, metadata !DIExpression()), !dbg !24
  call void @func12(i32 6), !dbg !27
  call void @llvm.dbg.value(metadata void (i32)* @func13, metadata !25, metadata !DIExpression()), !dbg !24
  call void @func13(i32 6), !dbg !28
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %val), !dbg !29
  ret void, !dbg !30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func7(i32 %val) #0 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata void (i32)* @func14, metadata !34, metadata !DIExpression()), !dbg !33
  call void @func14(i32 7), !dbg !35
  call void @llvm.dbg.value(metadata void (i32)* @func15, metadata !34, metadata !DIExpression()), !dbg !33
  call void @func15(i32 7), !dbg !36
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %val), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func8(i32 %val) #0 !dbg !39 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.value(metadata void (i32)* @func16, metadata !42, metadata !DIExpression()), !dbg !41
  call void @func16(i32 8), !dbg !43
  call void @llvm.dbg.value(metadata void (i32)* @func17, metadata !42, metadata !DIExpression()), !dbg !41
  call void @func17(i32 8), !dbg !44
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %val), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func9(i32 %val) #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata void (i32)* @func18, metadata !50, metadata !DIExpression()), !dbg !49
  call void @func18(i32 9), !dbg !51
  call void @llvm.dbg.value(metadata void (i32)* @func19, metadata !50, metadata !DIExpression()), !dbg !49
  call void @func19(i32 9), !dbg !52
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %val), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func10(i32 %val) #0 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata void (i32)* @func20, metadata !58, metadata !DIExpression()), !dbg !57
  call void @func20(i32 10), !dbg !59
  call void @llvm.dbg.value(metadata void (i32)* @func21, metadata !58, metadata !DIExpression()), !dbg !57
  call void @func21(i32 10), !dbg !60
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %val), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func11(i32 %val) #0 !dbg !63 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.value(metadata void (i32)* @func22, metadata !66, metadata !DIExpression()), !dbg !65
  call void @func22(i32 11), !dbg !67
  call void @llvm.dbg.value(metadata void (i32)* @func23, metadata !66, metadata !DIExpression()), !dbg !65
  call void @func23(i32 11), !dbg !68
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %val), !dbg !69
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func12(i32 %val) #0 !dbg !71 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata void (i32)* @func24, metadata !74, metadata !DIExpression()), !dbg !73
  call void @func24(i32 12), !dbg !75
  call void @llvm.dbg.value(metadata void (i32)* @func25, metadata !74, metadata !DIExpression()), !dbg !73
  call void @func25(i32 12), !dbg !76
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i32 %val), !dbg !77
  ret void, !dbg !78
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func13(i32 %val) #0 !dbg !79 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !80, metadata !DIExpression()), !dbg !81
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %val), !dbg !82
  ret void, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @func14(i32 %val) #0 !dbg !84 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !85, metadata !DIExpression()), !dbg !86
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func15(i32 %val) #0 !dbg !89 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !90, metadata !DIExpression()), !dbg !91
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %val), !dbg !92
  ret void, !dbg !93
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func16(i32 %val) #0 !dbg !94 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !95, metadata !DIExpression()), !dbg !96
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %val), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func17(i32 %val) #0 !dbg !99 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !100, metadata !DIExpression()), !dbg !101
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %val), !dbg !102
  ret void, !dbg !103
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func18(i32 %val) #0 !dbg !104 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !105, metadata !DIExpression()), !dbg !106
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %val), !dbg !107
  ret void, !dbg !108
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func19(i32 %val) #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !110, metadata !DIExpression()), !dbg !111
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %val), !dbg !112
  ret void, !dbg !113
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func20(i32 %val) #0 !dbg !114 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !115, metadata !DIExpression()), !dbg !116
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %val), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func21(i32 %val) #0 !dbg !119 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !120, metadata !DIExpression()), !dbg !121
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %val), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func22(i32 %val) #0 !dbg !124 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !125, metadata !DIExpression()), !dbg !126
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %val), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func23(i32 %val) #0 !dbg !129 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !130, metadata !DIExpression()), !dbg !131
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %val), !dbg !132
  ret void, !dbg !133
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func24(i32 %val) #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !135, metadata !DIExpression()), !dbg !136
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %val), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func25(i32 %val) #0 !dbg !139 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !140, metadata !DIExpression()), !dbg !141
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %val), !dbg !142
  ret void, !dbg !143
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 11.1.0-6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "samples/testcase2.c", directory: "/home/demonik/slim-ir-master")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"Ubuntu clang version 11.1.0-6"}
!7 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 55, type: !9, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./samples/testcase2.c", directory: "/home/demonik/slim-ir-master")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 56, column: 5, scope: !7)
!13 = !DILocation(line: 57, column: 5, scope: !7)
!14 = !DILocation(line: 58, column: 5, scope: !7)
!15 = !DILocation(line: 59, column: 5, scope: !7)
!16 = !DILocation(line: 60, column: 5, scope: !7)
!17 = !DILocation(line: 61, column: 5, scope: !7)
!18 = !DILocation(line: 62, column: 5, scope: !7)
!19 = !DILocation(line: 64, column: 1, scope: !7)
!20 = distinct !DISubprogram(name: "func6", scope: !8, file: !8, line: 117, type: !21, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !11}
!23 = !DILocalVariable(name: "val", arg: 1, scope: !20, file: !8, line: 117, type: !11)
!24 = !DILocation(line: 0, scope: !20)
!25 = !DILocalVariable(name: "fp6", scope: !20, file: !8, line: 118, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!27 = !DILocation(line: 119, column: 5, scope: !20)
!28 = !DILocation(line: 121, column: 5, scope: !20)
!29 = !DILocation(line: 122, column: 5, scope: !20)
!30 = !DILocation(line: 123, column: 5, scope: !20)
!31 = distinct !DISubprogram(name: "func7", scope: !8, file: !8, line: 125, type: !21, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!32 = !DILocalVariable(name: "val", arg: 1, scope: !31, file: !8, line: 125, type: !11)
!33 = !DILocation(line: 0, scope: !31)
!34 = !DILocalVariable(name: "fp7", scope: !31, file: !8, line: 126, type: !26)
!35 = !DILocation(line: 127, column: 5, scope: !31)
!36 = !DILocation(line: 129, column: 5, scope: !31)
!37 = !DILocation(line: 130, column: 5, scope: !31)
!38 = !DILocation(line: 131, column: 5, scope: !31)
!39 = distinct !DISubprogram(name: "func8", scope: !8, file: !8, line: 133, type: !21, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DILocalVariable(name: "val", arg: 1, scope: !39, file: !8, line: 133, type: !11)
!41 = !DILocation(line: 0, scope: !39)
!42 = !DILocalVariable(name: "fp8", scope: !39, file: !8, line: 134, type: !26)
!43 = !DILocation(line: 135, column: 5, scope: !39)
!44 = !DILocation(line: 137, column: 5, scope: !39)
!45 = !DILocation(line: 138, column: 5, scope: !39)
!46 = !DILocation(line: 139, column: 5, scope: !39)
!47 = distinct !DISubprogram(name: "func9", scope: !8, file: !8, line: 141, type: !21, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!48 = !DILocalVariable(name: "val", arg: 1, scope: !47, file: !8, line: 141, type: !11)
!49 = !DILocation(line: 0, scope: !47)
!50 = !DILocalVariable(name: "fp9", scope: !47, file: !8, line: 142, type: !26)
!51 = !DILocation(line: 143, column: 5, scope: !47)
!52 = !DILocation(line: 145, column: 5, scope: !47)
!53 = !DILocation(line: 146, column: 5, scope: !47)
!54 = !DILocation(line: 147, column: 5, scope: !47)
!55 = distinct !DISubprogram(name: "func10", scope: !8, file: !8, line: 149, type: !21, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DILocalVariable(name: "val", arg: 1, scope: !55, file: !8, line: 149, type: !11)
!57 = !DILocation(line: 0, scope: !55)
!58 = !DILocalVariable(name: "fp10", scope: !55, file: !8, line: 150, type: !26)
!59 = !DILocation(line: 151, column: 5, scope: !55)
!60 = !DILocation(line: 153, column: 5, scope: !55)
!61 = !DILocation(line: 154, column: 5, scope: !55)
!62 = !DILocation(line: 155, column: 5, scope: !55)
!63 = distinct !DISubprogram(name: "func11", scope: !8, file: !8, line: 157, type: !21, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DILocalVariable(name: "val", arg: 1, scope: !63, file: !8, line: 157, type: !11)
!65 = !DILocation(line: 0, scope: !63)
!66 = !DILocalVariable(name: "fp11", scope: !63, file: !8, line: 158, type: !26)
!67 = !DILocation(line: 159, column: 5, scope: !63)
!68 = !DILocation(line: 161, column: 5, scope: !63)
!69 = !DILocation(line: 162, column: 5, scope: !63)
!70 = !DILocation(line: 163, column: 5, scope: !63)
!71 = distinct !DISubprogram(name: "func12", scope: !8, file: !8, line: 165, type: !21, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!72 = !DILocalVariable(name: "val", arg: 1, scope: !71, file: !8, line: 165, type: !11)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocalVariable(name: "fp12", scope: !71, file: !8, line: 166, type: !26)
!75 = !DILocation(line: 167, column: 5, scope: !71)
!76 = !DILocation(line: 169, column: 5, scope: !71)
!77 = !DILocation(line: 170, column: 5, scope: !71)
!78 = !DILocation(line: 171, column: 5, scope: !71)
!79 = distinct !DISubprogram(name: "func13", scope: !8, file: !8, line: 65, type: !21, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!80 = !DILocalVariable(name: "val", arg: 1, scope: !79, file: !8, line: 65, type: !11)
!81 = !DILocation(line: 0, scope: !79)
!82 = !DILocation(line: 66, column: 5, scope: !79)
!83 = !DILocation(line: 67, column: 5, scope: !79)
!84 = distinct !DISubprogram(name: "func14", scope: !8, file: !8, line: 69, type: !21, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DILocalVariable(name: "val", arg: 1, scope: !84, file: !8, line: 69, type: !11)
!86 = !DILocation(line: 0, scope: !84)
!87 = !DILocation(line: 70, column: 5, scope: !84)
!88 = !DILocation(line: 71, column: 5, scope: !84)
!89 = distinct !DISubprogram(name: "func15", scope: !8, file: !8, line: 73, type: !21, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = !DILocalVariable(name: "val", arg: 1, scope: !89, file: !8, line: 73, type: !11)
!91 = !DILocation(line: 0, scope: !89)
!92 = !DILocation(line: 74, column: 5, scope: !89)
!93 = !DILocation(line: 75, column: 5, scope: !89)
!94 = distinct !DISubprogram(name: "func16", scope: !8, file: !8, line: 77, type: !21, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocalVariable(name: "val", arg: 1, scope: !94, file: !8, line: 77, type: !11)
!96 = !DILocation(line: 0, scope: !94)
!97 = !DILocation(line: 78, column: 5, scope: !94)
!98 = !DILocation(line: 79, column: 5, scope: !94)
!99 = distinct !DISubprogram(name: "func17", scope: !8, file: !8, line: 81, type: !21, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!100 = !DILocalVariable(name: "val", arg: 1, scope: !99, file: !8, line: 81, type: !11)
!101 = !DILocation(line: 0, scope: !99)
!102 = !DILocation(line: 82, column: 5, scope: !99)
!103 = !DILocation(line: 83, column: 5, scope: !99)
!104 = distinct !DISubprogram(name: "func18", scope: !8, file: !8, line: 85, type: !21, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!105 = !DILocalVariable(name: "val", arg: 1, scope: !104, file: !8, line: 85, type: !11)
!106 = !DILocation(line: 0, scope: !104)
!107 = !DILocation(line: 86, column: 5, scope: !104)
!108 = !DILocation(line: 87, column: 5, scope: !104)
!109 = distinct !DISubprogram(name: "func19", scope: !8, file: !8, line: 89, type: !21, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!110 = !DILocalVariable(name: "val", arg: 1, scope: !109, file: !8, line: 89, type: !11)
!111 = !DILocation(line: 0, scope: !109)
!112 = !DILocation(line: 90, column: 5, scope: !109)
!113 = !DILocation(line: 91, column: 5, scope: !109)
!114 = distinct !DISubprogram(name: "func20", scope: !8, file: !8, line: 93, type: !21, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!115 = !DILocalVariable(name: "val", arg: 1, scope: !114, file: !8, line: 93, type: !11)
!116 = !DILocation(line: 0, scope: !114)
!117 = !DILocation(line: 94, column: 5, scope: !114)
!118 = !DILocation(line: 95, column: 5, scope: !114)
!119 = distinct !DISubprogram(name: "func21", scope: !8, file: !8, line: 97, type: !21, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: "val", arg: 1, scope: !119, file: !8, line: 97, type: !11)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocation(line: 98, column: 5, scope: !119)
!123 = !DILocation(line: 99, column: 5, scope: !119)
!124 = distinct !DISubprogram(name: "func22", scope: !8, file: !8, line: 101, type: !21, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!125 = !DILocalVariable(name: "val", arg: 1, scope: !124, file: !8, line: 101, type: !11)
!126 = !DILocation(line: 0, scope: !124)
!127 = !DILocation(line: 102, column: 5, scope: !124)
!128 = !DILocation(line: 103, column: 5, scope: !124)
!129 = distinct !DISubprogram(name: "func23", scope: !8, file: !8, line: 105, type: !21, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!130 = !DILocalVariable(name: "val", arg: 1, scope: !129, file: !8, line: 105, type: !11)
!131 = !DILocation(line: 0, scope: !129)
!132 = !DILocation(line: 106, column: 5, scope: !129)
!133 = !DILocation(line: 107, column: 5, scope: !129)
!134 = distinct !DISubprogram(name: "func24", scope: !8, file: !8, line: 109, type: !21, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!135 = !DILocalVariable(name: "val", arg: 1, scope: !134, file: !8, line: 109, type: !11)
!136 = !DILocation(line: 0, scope: !134)
!137 = !DILocation(line: 110, column: 5, scope: !134)
!138 = !DILocation(line: 111, column: 5, scope: !134)
!139 = distinct !DISubprogram(name: "func25", scope: !8, file: !8, line: 113, type: !21, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocalVariable(name: "val", arg: 1, scope: !139, file: !8, line: 113, type: !11)
!141 = !DILocation(line: 0, scope: !139)
!142 = !DILocation(line: 114, column: 5, scope: !139)
!143 = !DILocation(line: 115, column: 5, scope: !139)
