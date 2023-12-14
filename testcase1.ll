; ModuleID = 'samples/test.ll'
source_filename = "./samples/ifelse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Invalid choice.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Function 1 called with value: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.value(metadata void (i32)* @func6, metadata !14, metadata !DIExpression()), !dbg !13
  %cmp = icmp eq i32 1, 1, !dbg !18
  br i1 %cmp, label %if.then, label %if.else, !dbg !20

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* @func1, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end16, !dbg !25

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 1, 2, !dbg !27
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !29

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* @func2, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end15, !dbg !30

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 1, 3, !dbg !32
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !34

if.then5:                                         ; preds = %if.else3
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* @func3, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end14, !dbg !35

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp eq i32 1, 4, !dbg !37
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !39

if.then8:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* @func4, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end13, !dbg !40

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp eq i32 1, 5, !dbg !42
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !44

if.then11:                                        ; preds = %if.else9
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* @func5, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end, !dbg !45

if.else12:                                        ; preds = %if.else9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !47
  br label %return, !dbg !49

if.end:                                           ; preds = %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %FuncPtr.0 = phi void (i32, void (i32)*)* [ @func4, %if.then8 ], [ @func5, %if.end ], !dbg !50
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* %FuncPtr.0, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  %FuncPtr.1 = phi void (i32, void (i32)*)* [ @func3, %if.then5 ], [ %FuncPtr.0, %if.end13 ], !dbg !51
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* %FuncPtr.1, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %FuncPtr.2 = phi void (i32, void (i32)*)* [ @func2, %if.then2 ], [ %FuncPtr.1, %if.end14 ], !dbg !52
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* %FuncPtr.2, metadata !21, metadata !DIExpression()), !dbg !13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %FuncPtr.3 = phi void (i32, void (i32)*)* [ @func1, %if.then ], [ %FuncPtr.2, %if.end15 ], !dbg !53
  call void @llvm.dbg.value(metadata void (i32, void (i32)*)* %FuncPtr.3, metadata !21, metadata !DIExpression()), !dbg !13
  call void %FuncPtr.3(i32 1, void (i32)* @func6), !dbg !54
  br label %return, !dbg !55

return:                                           ; preds = %if.end16, %if.else12
  ret i32 0, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @func6(i32 %val) #0 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !58, metadata !DIExpression()), !dbg !59
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func1(i32 %val, void (i32)* %funcP1) #0 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata void (i32)* %funcP1, metadata !65, metadata !DIExpression()), !dbg !64
  %cmp = icmp eq i32 %val, 1, !dbg !66
  br i1 %cmp, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata void (i32)* @func6, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end16, !dbg !69

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %val, 2, !dbg !71
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !73

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata void (i32)* @func7, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end15, !dbg !74

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %val, 3, !dbg !76
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !78

if.then5:                                         ; preds = %if.else3
  call void @llvm.dbg.value(metadata void (i32)* @func8, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end14, !dbg !79

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp eq i32 %val, 50, !dbg !81
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !83

if.then8:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata void (i32)* @func9, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end13, !dbg !84

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp eq i32 %val, 50, !dbg !86
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !88

if.then11:                                        ; preds = %if.else9
  call void @llvm.dbg.value(metadata void (i32)* @func10, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end, !dbg !89

if.else12:                                        ; preds = %if.else9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !91
  br label %return, !dbg !93

if.end:                                           ; preds = %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %funcP1.addr.0 = phi void (i32)* [ @func9, %if.then8 ], [ @func10, %if.end ], !dbg !94
  call void @llvm.dbg.value(metadata void (i32)* %funcP1.addr.0, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  %funcP1.addr.1 = phi void (i32)* [ @func8, %if.then5 ], [ %funcP1.addr.0, %if.end13 ], !dbg !95
  call void @llvm.dbg.value(metadata void (i32)* %funcP1.addr.1, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %funcP1.addr.2 = phi void (i32)* [ @func7, %if.then2 ], [ %funcP1.addr.1, %if.end14 ], !dbg !96
  call void @llvm.dbg.value(metadata void (i32)* %funcP1.addr.2, metadata !65, metadata !DIExpression()), !dbg !64
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %funcP1.addr.3 = phi void (i32)* [ @func6, %if.then ], [ %funcP1.addr.2, %if.end15 ], !dbg !97
  call void @llvm.dbg.value(metadata void (i32)* %funcP1.addr.3, metadata !65, metadata !DIExpression()), !dbg !64
  call void %funcP1.addr.3(i32 %val), !dbg !98
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !99
  br label %return, !dbg !100

return:                                           ; preds = %if.end16, %if.else12
  ret void, !dbg !101
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func2(i32 %val, void (i32)* %funcP2) #0 !dbg !102 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata void (i32)* %funcP2, metadata !105, metadata !DIExpression()), !dbg !104
  %cmp = icmp eq i32 %val, 1, !dbg !106
  br i1 %cmp, label %if.then, label %if.else, !dbg !108

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata void (i32)* @func11, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end16, !dbg !109

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %val, 2, !dbg !111
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !113

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata void (i32)* @func12, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end15, !dbg !114

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %val, 3, !dbg !116
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !118

if.then5:                                         ; preds = %if.else3
  call void @llvm.dbg.value(metadata void (i32)* @func13, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end14, !dbg !119

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp eq i32 %val, 50, !dbg !121
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !123

if.then8:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata void (i32)* @func14, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end13, !dbg !124

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp eq i32 %val, 50, !dbg !126
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !128

if.then11:                                        ; preds = %if.else9
  call void @llvm.dbg.value(metadata void (i32)* @func15, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end, !dbg !129

if.else12:                                        ; preds = %if.else9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !131
  br label %return, !dbg !133

if.end:                                           ; preds = %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %funcP2.addr.0 = phi void (i32)* [ @func14, %if.then8 ], [ @func15, %if.end ], !dbg !134
  call void @llvm.dbg.value(metadata void (i32)* %funcP2.addr.0, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  %funcP2.addr.1 = phi void (i32)* [ @func13, %if.then5 ], [ %funcP2.addr.0, %if.end13 ], !dbg !135
  call void @llvm.dbg.value(metadata void (i32)* %funcP2.addr.1, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %funcP2.addr.2 = phi void (i32)* [ @func12, %if.then2 ], [ %funcP2.addr.1, %if.end14 ], !dbg !136
  call void @llvm.dbg.value(metadata void (i32)* %funcP2.addr.2, metadata !105, metadata !DIExpression()), !dbg !104
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %funcP2.addr.3 = phi void (i32)* [ @func11, %if.then ], [ %funcP2.addr.2, %if.end15 ], !dbg !137
  call void @llvm.dbg.value(metadata void (i32)* %funcP2.addr.3, metadata !105, metadata !DIExpression()), !dbg !104
  call void %funcP2.addr.3(i32 %val), !dbg !138
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !139
  br label %return, !dbg !140

return:                                           ; preds = %if.end16, %if.else12
  ret void, !dbg !141
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func3(i32 %val, void (i32)* %funcP3) #0 !dbg !142 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata void (i32)* %funcP3, metadata !145, metadata !DIExpression()), !dbg !144
  %cmp = icmp eq i32 %val, 1, !dbg !146
  br i1 %cmp, label %if.then, label %if.else, !dbg !148

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata void (i32)* @func16, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end16, !dbg !149

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %val, 2, !dbg !151
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !153

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata void (i32)* @func17, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end15, !dbg !154

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %val, 3, !dbg !156
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !158

if.then5:                                         ; preds = %if.else3
  call void @llvm.dbg.value(metadata void (i32)* @func18, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end14, !dbg !159

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp eq i32 %val, 50, !dbg !161
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !163

if.then8:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata void (i32)* @func19, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end13, !dbg !164

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp eq i32 %val, 50, !dbg !166
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !168

if.then11:                                        ; preds = %if.else9
  call void @llvm.dbg.value(metadata void (i32)* @func20, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end, !dbg !169

if.else12:                                        ; preds = %if.else9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !171
  br label %return, !dbg !173

if.end:                                           ; preds = %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %funcP3.addr.0 = phi void (i32)* [ @func19, %if.then8 ], [ @func20, %if.end ], !dbg !174
  call void @llvm.dbg.value(metadata void (i32)* %funcP3.addr.0, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  %funcP3.addr.1 = phi void (i32)* [ @func18, %if.then5 ], [ %funcP3.addr.0, %if.end13 ], !dbg !175
  call void @llvm.dbg.value(metadata void (i32)* %funcP3.addr.1, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %funcP3.addr.2 = phi void (i32)* [ @func17, %if.then2 ], [ %funcP3.addr.1, %if.end14 ], !dbg !176
  call void @llvm.dbg.value(metadata void (i32)* %funcP3.addr.2, metadata !145, metadata !DIExpression()), !dbg !144
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %funcP3.addr.3 = phi void (i32)* [ @func16, %if.then ], [ %funcP3.addr.2, %if.end15 ], !dbg !177
  call void @llvm.dbg.value(metadata void (i32)* %funcP3.addr.3, metadata !145, metadata !DIExpression()), !dbg !144
  call void %funcP3.addr.3(i32 %val), !dbg !178
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !179
  br label %return, !dbg !180

return:                                           ; preds = %if.end16, %if.else12
  ret void, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func4(i32 %val, void (i32)* %funcP4) #0 !dbg !182 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata void (i32)* %funcP4, metadata !185, metadata !DIExpression()), !dbg !184
  %cmp = icmp eq i32 %val, 1, !dbg !186
  br i1 %cmp, label %if.then, label %if.else, !dbg !188

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata void (i32)* @func21, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end16, !dbg !189

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %val, 21, !dbg !191
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !193

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata void (i32)* @func22, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end15, !dbg !194

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %val, 22, !dbg !196
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !198

if.then5:                                         ; preds = %if.else3
  call void @llvm.dbg.value(metadata void (i32)* @func23, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end14, !dbg !199

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp eq i32 %val, 50, !dbg !201
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !203

if.then8:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata void (i32)* @func24, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end13, !dbg !204

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp eq i32 %val, 50, !dbg !206
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !208

if.then11:                                        ; preds = %if.else9
  call void @llvm.dbg.value(metadata void (i32)* @func25, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end, !dbg !209

if.else12:                                        ; preds = %if.else9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !211
  br label %return, !dbg !213

if.end:                                           ; preds = %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %funcP4.addr.0 = phi void (i32)* [ @func24, %if.then8 ], [ @func25, %if.end ], !dbg !214
  call void @llvm.dbg.value(metadata void (i32)* %funcP4.addr.0, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  %funcP4.addr.1 = phi void (i32)* [ @func23, %if.then5 ], [ %funcP4.addr.0, %if.end13 ], !dbg !215
  call void @llvm.dbg.value(metadata void (i32)* %funcP4.addr.1, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %funcP4.addr.2 = phi void (i32)* [ @func22, %if.then2 ], [ %funcP4.addr.1, %if.end14 ], !dbg !216
  call void @llvm.dbg.value(metadata void (i32)* %funcP4.addr.2, metadata !185, metadata !DIExpression()), !dbg !184
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %funcP4.addr.3 = phi void (i32)* [ @func21, %if.then ], [ %funcP4.addr.2, %if.end15 ], !dbg !217
  call void @llvm.dbg.value(metadata void (i32)* %funcP4.addr.3, metadata !185, metadata !DIExpression()), !dbg !184
  call void %funcP4.addr.3(i32 %val), !dbg !218
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !219
  br label %return, !dbg !220

return:                                           ; preds = %if.end16, %if.else12
  ret void, !dbg !221
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func5(i32 %val, void (i32)* %funcP5) #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata void (i32)* %funcP5, metadata !225, metadata !DIExpression()), !dbg !224
  %cmp = icmp eq i32 %val, 1, !dbg !226
  br i1 %cmp, label %if.then, label %if.else, !dbg !228

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata void (i32)* @func26, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end16, !dbg !229

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %val, 2, !dbg !231
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !233

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata void (i32)* @func27, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end15, !dbg !234

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq i32 %val, 3, !dbg !236
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !238

if.then5:                                         ; preds = %if.else3
  call void @llvm.dbg.value(metadata void (i32)* @func28, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end14, !dbg !239

if.else6:                                         ; preds = %if.else3
  %cmp7 = icmp eq i32 %val, 50, !dbg !241
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !243

if.then8:                                         ; preds = %if.else6
  call void @llvm.dbg.value(metadata void (i32)* @func29, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end13, !dbg !244

if.else9:                                         ; preds = %if.else6
  %cmp10 = icmp eq i32 %val, 50, !dbg !246
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !248

if.then11:                                        ; preds = %if.else9
  call void @llvm.dbg.value(metadata void (i32)* @func30, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end, !dbg !249

if.else12:                                        ; preds = %if.else9
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !251
  br label %return, !dbg !253

if.end:                                           ; preds = %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  %funcP5.addr.0 = phi void (i32)* [ @func29, %if.then8 ], [ @func30, %if.end ], !dbg !254
  call void @llvm.dbg.value(metadata void (i32)* %funcP5.addr.0, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then5
  %funcP5.addr.1 = phi void (i32)* [ @func28, %if.then5 ], [ %funcP5.addr.0, %if.end13 ], !dbg !255
  call void @llvm.dbg.value(metadata void (i32)* %funcP5.addr.1, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then2
  %funcP5.addr.2 = phi void (i32)* [ @func27, %if.then2 ], [ %funcP5.addr.1, %if.end14 ], !dbg !256
  call void @llvm.dbg.value(metadata void (i32)* %funcP5.addr.2, metadata !225, metadata !DIExpression()), !dbg !224
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  %funcP5.addr.3 = phi void (i32)* [ @func26, %if.then ], [ %funcP5.addr.2, %if.end15 ], !dbg !257
  call void @llvm.dbg.value(metadata void (i32)* %funcP5.addr.3, metadata !225, metadata !DIExpression()), !dbg !224
  call void %funcP5.addr.3(i32 %val), !dbg !258
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !259
  br label %return, !dbg !260

return:                                           ; preds = %if.end16, %if.else12
  ret void, !dbg !261
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @func7(i32 %val) #0 !dbg !262 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !263, metadata !DIExpression()), !dbg !264
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func8(i32 %val) #0 !dbg !267 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !268, metadata !DIExpression()), !dbg !269
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !270
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func9(i32 %val) #0 !dbg !272 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !273, metadata !DIExpression()), !dbg !274
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func10(i32 %val) #0 !dbg !277 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !278, metadata !DIExpression()), !dbg !279
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func11(i32 %val) #0 !dbg !282 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !283, metadata !DIExpression()), !dbg !284
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !285
  ret void, !dbg !286
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func12(i32 %val) #0 !dbg !287 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !288, metadata !DIExpression()), !dbg !289
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func13(i32 %val) #0 !dbg !292 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !293, metadata !DIExpression()), !dbg !294
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func14(i32 %val) #0 !dbg !297 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !298, metadata !DIExpression()), !dbg !299
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !300
  ret void, !dbg !301
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func15(i32 %val) #0 !dbg !302 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !303, metadata !DIExpression()), !dbg !304
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func16(i32 %val) #0 !dbg !307 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !308, metadata !DIExpression()), !dbg !309
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func17(i32 %val) #0 !dbg !312 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !313, metadata !DIExpression()), !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func18(i32 %val) #0 !dbg !317 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !318, metadata !DIExpression()), !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func19(i32 %val) #0 !dbg !322 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !323, metadata !DIExpression()), !dbg !324
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func20(i32 %val) #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !328, metadata !DIExpression()), !dbg !329
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !330
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func21(i32 %val) #0 !dbg !332 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !333, metadata !DIExpression()), !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func22(i32 %val) #0 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !338, metadata !DIExpression()), !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func23(i32 %val) #0 !dbg !342 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !343, metadata !DIExpression()), !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func24(i32 %val) #0 !dbg !347 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !348, metadata !DIExpression()), !dbg !349
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func25(i32 %val) #0 !dbg !352 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !353, metadata !DIExpression()), !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func26(i32 %val) #0 !dbg !357 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !358, metadata !DIExpression()), !dbg !359
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func27(i32 %val) #0 !dbg !362 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !363, metadata !DIExpression()), !dbg !364
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !365
  ret void, !dbg !366
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func28(i32 %val) #0 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !368, metadata !DIExpression()), !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func29(i32 %val) #0 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !373, metadata !DIExpression()), !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func30(i32 %val) #0 !dbg !377 {
entry:
  call void @llvm.dbg.value(metadata i32 %val, metadata !378, metadata !DIExpression()), !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %val), !dbg !380
  ret void, !dbg !381
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
!1 = !DIFile(filename: "samples/ifelse.c", directory: "/home/demonik/slim-ir-master")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"Ubuntu clang version 11.1.0-6"}
!7 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 55, type: !9, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./samples/ifelse.c", directory: "/home/demonik/slim-ir-master")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "choice", scope: !7, file: !8, line: 56, type: !11)
!13 = !DILocation(line: 0, scope: !7)
!14 = !DILocalVariable(name: "FuncP", scope: !7, file: !8, line: 58, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !11}
!18 = !DILocation(line: 60, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !8, line: 60, column: 9)
!20 = !DILocation(line: 60, column: 9, scope: !7)
!21 = !DILocalVariable(name: "FuncPtr", scope: !7, file: !8, line: 57, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !11, !15}
!25 = !DILocation(line: 62, column: 5, scope: !26)
!26 = distinct !DILexicalBlock(scope: !19, file: !8, line: 60, column: 22)
!27 = !DILocation(line: 62, column: 23, scope: !28)
!28 = distinct !DILexicalBlock(scope: !19, file: !8, line: 62, column: 16)
!29 = !DILocation(line: 62, column: 16, scope: !19)
!30 = !DILocation(line: 64, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !8, line: 62, column: 29)
!32 = !DILocation(line: 64, column: 23, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !8, line: 64, column: 16)
!34 = !DILocation(line: 64, column: 16, scope: !28)
!35 = !DILocation(line: 66, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !8, line: 64, column: 29)
!37 = !DILocation(line: 66, column: 23, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !8, line: 66, column: 16)
!39 = !DILocation(line: 66, column: 16, scope: !33)
!40 = !DILocation(line: 68, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !8, line: 66, column: 29)
!42 = !DILocation(line: 68, column: 23, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !8, line: 68, column: 16)
!44 = !DILocation(line: 68, column: 16, scope: !38)
!45 = !DILocation(line: 70, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !8, line: 68, column: 29)
!47 = !DILocation(line: 71, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !8, line: 70, column: 12)
!49 = !DILocation(line: 72, column: 9, scope: !48)
!50 = !DILocation(line: 0, scope: !38)
!51 = !DILocation(line: 0, scope: !33)
!52 = !DILocation(line: 0, scope: !28)
!53 = !DILocation(line: 0, scope: !19)
!54 = !DILocation(line: 75, column: 5, scope: !7)
!55 = !DILocation(line: 77, column: 5, scope: !7)
!56 = !DILocation(line: 78, column: 1, scope: !7)
!57 = distinct !DISubprogram(name: "func6", scope: !8, file: !8, line: 181, type: !16, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DILocalVariable(name: "val", arg: 1, scope: !57, file: !8, line: 181, type: !11)
!59 = !DILocation(line: 0, scope: !57)
!60 = !DILocation(line: 182, column: 5, scope: !57)
!61 = !DILocation(line: 183, column: 5, scope: !57)
!62 = distinct !DISubprogram(name: "func1", scope: !8, file: !8, line: 81, type: !23, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!63 = !DILocalVariable(name: "val", arg: 1, scope: !62, file: !8, line: 81, type: !11)
!64 = !DILocation(line: 0, scope: !62)
!65 = !DILocalVariable(name: "funcP1", arg: 2, scope: !62, file: !8, line: 81, type: !15)
!66 = !DILocation(line: 82, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !8, line: 82, column: 9)
!68 = !DILocation(line: 82, column: 9, scope: !62)
!69 = !DILocation(line: 84, column: 5, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !8, line: 82, column: 19)
!71 = !DILocation(line: 84, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !8, line: 84, column: 16)
!73 = !DILocation(line: 84, column: 16, scope: !67)
!74 = !DILocation(line: 86, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !8, line: 84, column: 26)
!76 = !DILocation(line: 86, column: 20, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !8, line: 86, column: 16)
!78 = !DILocation(line: 86, column: 16, scope: !72)
!79 = !DILocation(line: 88, column: 5, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !8, line: 86, column: 26)
!81 = !DILocation(line: 88, column: 20, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !8, line: 88, column: 16)
!83 = !DILocation(line: 88, column: 16, scope: !77)
!84 = !DILocation(line: 90, column: 5, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !8, line: 88, column: 27)
!86 = !DILocation(line: 90, column: 20, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !8, line: 90, column: 16)
!88 = !DILocation(line: 90, column: 16, scope: !82)
!89 = !DILocation(line: 92, column: 5, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !8, line: 90, column: 27)
!91 = !DILocation(line: 93, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !8, line: 92, column: 12)
!93 = !DILocation(line: 94, column: 9, scope: !92)
!94 = !DILocation(line: 0, scope: !82)
!95 = !DILocation(line: 0, scope: !77)
!96 = !DILocation(line: 0, scope: !72)
!97 = !DILocation(line: 0, scope: !67)
!98 = !DILocation(line: 97, column: 5, scope: !62)
!99 = !DILocation(line: 98, column: 5, scope: !62)
!100 = !DILocation(line: 99, column: 5, scope: !62)
!101 = !DILocation(line: 100, column: 1, scope: !62)
!102 = distinct !DISubprogram(name: "func2", scope: !8, file: !8, line: 101, type: !23, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DILocalVariable(name: "val", arg: 1, scope: !102, file: !8, line: 101, type: !11)
!104 = !DILocation(line: 0, scope: !102)
!105 = !DILocalVariable(name: "funcP2", arg: 2, scope: !102, file: !8, line: 101, type: !15)
!106 = !DILocation(line: 102, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !8, line: 102, column: 9)
!108 = !DILocation(line: 102, column: 9, scope: !102)
!109 = !DILocation(line: 104, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !8, line: 102, column: 19)
!111 = !DILocation(line: 104, column: 20, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !8, line: 104, column: 16)
!113 = !DILocation(line: 104, column: 16, scope: !107)
!114 = !DILocation(line: 106, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !8, line: 104, column: 26)
!116 = !DILocation(line: 106, column: 20, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !8, line: 106, column: 16)
!118 = !DILocation(line: 106, column: 16, scope: !112)
!119 = !DILocation(line: 108, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !8, line: 106, column: 26)
!121 = !DILocation(line: 108, column: 20, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !8, line: 108, column: 16)
!123 = !DILocation(line: 108, column: 16, scope: !117)
!124 = !DILocation(line: 110, column: 5, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !8, line: 108, column: 27)
!126 = !DILocation(line: 110, column: 20, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !8, line: 110, column: 16)
!128 = !DILocation(line: 110, column: 16, scope: !122)
!129 = !DILocation(line: 112, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !8, line: 110, column: 27)
!131 = !DILocation(line: 113, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !8, line: 112, column: 12)
!133 = !DILocation(line: 114, column: 9, scope: !132)
!134 = !DILocation(line: 0, scope: !122)
!135 = !DILocation(line: 0, scope: !117)
!136 = !DILocation(line: 0, scope: !112)
!137 = !DILocation(line: 0, scope: !107)
!138 = !DILocation(line: 117, column: 5, scope: !102)
!139 = !DILocation(line: 118, column: 5, scope: !102)
!140 = !DILocation(line: 119, column: 5, scope: !102)
!141 = !DILocation(line: 120, column: 1, scope: !102)
!142 = distinct !DISubprogram(name: "func3", scope: !8, file: !8, line: 121, type: !23, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!143 = !DILocalVariable(name: "val", arg: 1, scope: !142, file: !8, line: 121, type: !11)
!144 = !DILocation(line: 0, scope: !142)
!145 = !DILocalVariable(name: "funcP3", arg: 2, scope: !142, file: !8, line: 121, type: !15)
!146 = !DILocation(line: 122, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !8, line: 122, column: 9)
!148 = !DILocation(line: 122, column: 9, scope: !142)
!149 = !DILocation(line: 124, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !8, line: 122, column: 19)
!151 = !DILocation(line: 124, column: 20, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !8, line: 124, column: 16)
!153 = !DILocation(line: 124, column: 16, scope: !147)
!154 = !DILocation(line: 126, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !8, line: 124, column: 26)
!156 = !DILocation(line: 126, column: 20, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !8, line: 126, column: 16)
!158 = !DILocation(line: 126, column: 16, scope: !152)
!159 = !DILocation(line: 128, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !8, line: 126, column: 26)
!161 = !DILocation(line: 128, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !8, line: 128, column: 16)
!163 = !DILocation(line: 128, column: 16, scope: !157)
!164 = !DILocation(line: 130, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !8, line: 128, column: 27)
!166 = !DILocation(line: 130, column: 20, scope: !167)
!167 = distinct !DILexicalBlock(scope: !162, file: !8, line: 130, column: 16)
!168 = !DILocation(line: 130, column: 16, scope: !162)
!169 = !DILocation(line: 132, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !8, line: 130, column: 27)
!171 = !DILocation(line: 133, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !8, line: 132, column: 12)
!173 = !DILocation(line: 134, column: 9, scope: !172)
!174 = !DILocation(line: 0, scope: !162)
!175 = !DILocation(line: 0, scope: !157)
!176 = !DILocation(line: 0, scope: !152)
!177 = !DILocation(line: 0, scope: !147)
!178 = !DILocation(line: 137, column: 5, scope: !142)
!179 = !DILocation(line: 138, column: 5, scope: !142)
!180 = !DILocation(line: 139, column: 5, scope: !142)
!181 = !DILocation(line: 140, column: 1, scope: !142)
!182 = distinct !DISubprogram(name: "func4", scope: !8, file: !8, line: 141, type: !23, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!183 = !DILocalVariable(name: "val", arg: 1, scope: !182, file: !8, line: 141, type: !11)
!184 = !DILocation(line: 0, scope: !182)
!185 = !DILocalVariable(name: "funcP4", arg: 2, scope: !182, file: !8, line: 141, type: !15)
!186 = !DILocation(line: 142, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !8, line: 142, column: 9)
!188 = !DILocation(line: 142, column: 9, scope: !182)
!189 = !DILocation(line: 144, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !8, line: 142, column: 19)
!191 = !DILocation(line: 144, column: 20, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !8, line: 144, column: 16)
!193 = !DILocation(line: 144, column: 16, scope: !187)
!194 = !DILocation(line: 146, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !8, line: 144, column: 27)
!196 = !DILocation(line: 146, column: 20, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !8, line: 146, column: 16)
!198 = !DILocation(line: 146, column: 16, scope: !192)
!199 = !DILocation(line: 148, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !8, line: 146, column: 27)
!201 = !DILocation(line: 148, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !8, line: 148, column: 16)
!203 = !DILocation(line: 148, column: 16, scope: !197)
!204 = !DILocation(line: 150, column: 5, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !8, line: 148, column: 27)
!206 = !DILocation(line: 150, column: 20, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !8, line: 150, column: 16)
!208 = !DILocation(line: 150, column: 16, scope: !202)
!209 = !DILocation(line: 152, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !8, line: 150, column: 27)
!211 = !DILocation(line: 153, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !8, line: 152, column: 12)
!213 = !DILocation(line: 154, column: 9, scope: !212)
!214 = !DILocation(line: 0, scope: !202)
!215 = !DILocation(line: 0, scope: !197)
!216 = !DILocation(line: 0, scope: !192)
!217 = !DILocation(line: 0, scope: !187)
!218 = !DILocation(line: 157, column: 5, scope: !182)
!219 = !DILocation(line: 158, column: 5, scope: !182)
!220 = !DILocation(line: 159, column: 5, scope: !182)
!221 = !DILocation(line: 160, column: 1, scope: !182)
!222 = distinct !DISubprogram(name: "func5", scope: !8, file: !8, line: 161, type: !23, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!223 = !DILocalVariable(name: "val", arg: 1, scope: !222, file: !8, line: 161, type: !11)
!224 = !DILocation(line: 0, scope: !222)
!225 = !DILocalVariable(name: "funcP5", arg: 2, scope: !222, file: !8, line: 161, type: !15)
!226 = !DILocation(line: 162, column: 13, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !8, line: 162, column: 9)
!228 = !DILocation(line: 162, column: 9, scope: !222)
!229 = !DILocation(line: 164, column: 5, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !8, line: 162, column: 19)
!231 = !DILocation(line: 164, column: 20, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !8, line: 164, column: 16)
!233 = !DILocation(line: 164, column: 16, scope: !227)
!234 = !DILocation(line: 166, column: 5, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !8, line: 164, column: 26)
!236 = !DILocation(line: 166, column: 20, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !8, line: 166, column: 16)
!238 = !DILocation(line: 166, column: 16, scope: !232)
!239 = !DILocation(line: 168, column: 5, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !8, line: 166, column: 26)
!241 = !DILocation(line: 168, column: 20, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !8, line: 168, column: 16)
!243 = !DILocation(line: 168, column: 16, scope: !237)
!244 = !DILocation(line: 170, column: 5, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !8, line: 168, column: 27)
!246 = !DILocation(line: 170, column: 20, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !8, line: 170, column: 16)
!248 = !DILocation(line: 170, column: 16, scope: !242)
!249 = !DILocation(line: 172, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !8, line: 170, column: 27)
!251 = !DILocation(line: 173, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !8, line: 172, column: 12)
!253 = !DILocation(line: 174, column: 9, scope: !252)
!254 = !DILocation(line: 0, scope: !242)
!255 = !DILocation(line: 0, scope: !237)
!256 = !DILocation(line: 0, scope: !232)
!257 = !DILocation(line: 0, scope: !227)
!258 = !DILocation(line: 177, column: 5, scope: !222)
!259 = !DILocation(line: 178, column: 5, scope: !222)
!260 = !DILocation(line: 179, column: 5, scope: !222)
!261 = !DILocation(line: 180, column: 1, scope: !222)
!262 = distinct !DISubprogram(name: "func7", scope: !8, file: !8, line: 185, type: !16, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!263 = !DILocalVariable(name: "val", arg: 1, scope: !262, file: !8, line: 185, type: !11)
!264 = !DILocation(line: 0, scope: !262)
!265 = !DILocation(line: 186, column: 5, scope: !262)
!266 = !DILocation(line: 187, column: 5, scope: !262)
!267 = distinct !DISubprogram(name: "func8", scope: !8, file: !8, line: 189, type: !16, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!268 = !DILocalVariable(name: "val", arg: 1, scope: !267, file: !8, line: 189, type: !11)
!269 = !DILocation(line: 0, scope: !267)
!270 = !DILocation(line: 190, column: 5, scope: !267)
!271 = !DILocation(line: 191, column: 5, scope: !267)
!272 = distinct !DISubprogram(name: "func9", scope: !8, file: !8, line: 193, type: !16, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!273 = !DILocalVariable(name: "val", arg: 1, scope: !272, file: !8, line: 193, type: !11)
!274 = !DILocation(line: 0, scope: !272)
!275 = !DILocation(line: 194, column: 5, scope: !272)
!276 = !DILocation(line: 195, column: 5, scope: !272)
!277 = distinct !DISubprogram(name: "func10", scope: !8, file: !8, line: 197, type: !16, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!278 = !DILocalVariable(name: "val", arg: 1, scope: !277, file: !8, line: 197, type: !11)
!279 = !DILocation(line: 0, scope: !277)
!280 = !DILocation(line: 198, column: 5, scope: !277)
!281 = !DILocation(line: 199, column: 5, scope: !277)
!282 = distinct !DISubprogram(name: "func11", scope: !8, file: !8, line: 201, type: !16, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!283 = !DILocalVariable(name: "val", arg: 1, scope: !282, file: !8, line: 201, type: !11)
!284 = !DILocation(line: 0, scope: !282)
!285 = !DILocation(line: 202, column: 5, scope: !282)
!286 = !DILocation(line: 203, column: 5, scope: !282)
!287 = distinct !DISubprogram(name: "func12", scope: !8, file: !8, line: 205, type: !16, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!288 = !DILocalVariable(name: "val", arg: 1, scope: !287, file: !8, line: 205, type: !11)
!289 = !DILocation(line: 0, scope: !287)
!290 = !DILocation(line: 206, column: 5, scope: !287)
!291 = !DILocation(line: 207, column: 5, scope: !287)
!292 = distinct !DISubprogram(name: "func13", scope: !8, file: !8, line: 209, type: !16, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!293 = !DILocalVariable(name: "val", arg: 1, scope: !292, file: !8, line: 209, type: !11)
!294 = !DILocation(line: 0, scope: !292)
!295 = !DILocation(line: 210, column: 5, scope: !292)
!296 = !DILocation(line: 211, column: 5, scope: !292)
!297 = distinct !DISubprogram(name: "func14", scope: !8, file: !8, line: 213, type: !16, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!298 = !DILocalVariable(name: "val", arg: 1, scope: !297, file: !8, line: 213, type: !11)
!299 = !DILocation(line: 0, scope: !297)
!300 = !DILocation(line: 214, column: 5, scope: !297)
!301 = !DILocation(line: 215, column: 5, scope: !297)
!302 = distinct !DISubprogram(name: "func15", scope: !8, file: !8, line: 217, type: !16, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!303 = !DILocalVariable(name: "val", arg: 1, scope: !302, file: !8, line: 217, type: !11)
!304 = !DILocation(line: 0, scope: !302)
!305 = !DILocation(line: 218, column: 5, scope: !302)
!306 = !DILocation(line: 219, column: 5, scope: !302)
!307 = distinct !DISubprogram(name: "func16", scope: !8, file: !8, line: 221, type: !16, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!308 = !DILocalVariable(name: "val", arg: 1, scope: !307, file: !8, line: 221, type: !11)
!309 = !DILocation(line: 0, scope: !307)
!310 = !DILocation(line: 222, column: 5, scope: !307)
!311 = !DILocation(line: 223, column: 5, scope: !307)
!312 = distinct !DISubprogram(name: "func17", scope: !8, file: !8, line: 225, type: !16, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!313 = !DILocalVariable(name: "val", arg: 1, scope: !312, file: !8, line: 225, type: !11)
!314 = !DILocation(line: 0, scope: !312)
!315 = !DILocation(line: 226, column: 5, scope: !312)
!316 = !DILocation(line: 227, column: 5, scope: !312)
!317 = distinct !DISubprogram(name: "func18", scope: !8, file: !8, line: 229, type: !16, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!318 = !DILocalVariable(name: "val", arg: 1, scope: !317, file: !8, line: 229, type: !11)
!319 = !DILocation(line: 0, scope: !317)
!320 = !DILocation(line: 230, column: 5, scope: !317)
!321 = !DILocation(line: 231, column: 5, scope: !317)
!322 = distinct !DISubprogram(name: "func19", scope: !8, file: !8, line: 233, type: !16, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!323 = !DILocalVariable(name: "val", arg: 1, scope: !322, file: !8, line: 233, type: !11)
!324 = !DILocation(line: 0, scope: !322)
!325 = !DILocation(line: 234, column: 5, scope: !322)
!326 = !DILocation(line: 235, column: 5, scope: !322)
!327 = distinct !DISubprogram(name: "func20", scope: !8, file: !8, line: 237, type: !16, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!328 = !DILocalVariable(name: "val", arg: 1, scope: !327, file: !8, line: 237, type: !11)
!329 = !DILocation(line: 0, scope: !327)
!330 = !DILocation(line: 238, column: 5, scope: !327)
!331 = !DILocation(line: 239, column: 5, scope: !327)
!332 = distinct !DISubprogram(name: "func21", scope: !8, file: !8, line: 241, type: !16, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!333 = !DILocalVariable(name: "val", arg: 1, scope: !332, file: !8, line: 241, type: !11)
!334 = !DILocation(line: 0, scope: !332)
!335 = !DILocation(line: 242, column: 5, scope: !332)
!336 = !DILocation(line: 243, column: 5, scope: !332)
!337 = distinct !DISubprogram(name: "func22", scope: !8, file: !8, line: 245, type: !16, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!338 = !DILocalVariable(name: "val", arg: 1, scope: !337, file: !8, line: 245, type: !11)
!339 = !DILocation(line: 0, scope: !337)
!340 = !DILocation(line: 246, column: 5, scope: !337)
!341 = !DILocation(line: 247, column: 5, scope: !337)
!342 = distinct !DISubprogram(name: "func23", scope: !8, file: !8, line: 249, type: !16, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!343 = !DILocalVariable(name: "val", arg: 1, scope: !342, file: !8, line: 249, type: !11)
!344 = !DILocation(line: 0, scope: !342)
!345 = !DILocation(line: 250, column: 5, scope: !342)
!346 = !DILocation(line: 251, column: 5, scope: !342)
!347 = distinct !DISubprogram(name: "func24", scope: !8, file: !8, line: 253, type: !16, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!348 = !DILocalVariable(name: "val", arg: 1, scope: !347, file: !8, line: 253, type: !11)
!349 = !DILocation(line: 0, scope: !347)
!350 = !DILocation(line: 254, column: 5, scope: !347)
!351 = !DILocation(line: 255, column: 5, scope: !347)
!352 = distinct !DISubprogram(name: "func25", scope: !8, file: !8, line: 257, type: !16, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!353 = !DILocalVariable(name: "val", arg: 1, scope: !352, file: !8, line: 257, type: !11)
!354 = !DILocation(line: 0, scope: !352)
!355 = !DILocation(line: 258, column: 5, scope: !352)
!356 = !DILocation(line: 259, column: 5, scope: !352)
!357 = distinct !DISubprogram(name: "func26", scope: !8, file: !8, line: 261, type: !16, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!358 = !DILocalVariable(name: "val", arg: 1, scope: !357, file: !8, line: 261, type: !11)
!359 = !DILocation(line: 0, scope: !357)
!360 = !DILocation(line: 262, column: 5, scope: !357)
!361 = !DILocation(line: 263, column: 5, scope: !357)
!362 = distinct !DISubprogram(name: "func27", scope: !8, file: !8, line: 265, type: !16, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!363 = !DILocalVariable(name: "val", arg: 1, scope: !362, file: !8, line: 265, type: !11)
!364 = !DILocation(line: 0, scope: !362)
!365 = !DILocation(line: 266, column: 5, scope: !362)
!366 = !DILocation(line: 267, column: 5, scope: !362)
!367 = distinct !DISubprogram(name: "func28", scope: !8, file: !8, line: 269, type: !16, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!368 = !DILocalVariable(name: "val", arg: 1, scope: !367, file: !8, line: 269, type: !11)
!369 = !DILocation(line: 0, scope: !367)
!370 = !DILocation(line: 270, column: 5, scope: !367)
!371 = !DILocation(line: 271, column: 5, scope: !367)
!372 = distinct !DISubprogram(name: "func29", scope: !8, file: !8, line: 273, type: !16, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!373 = !DILocalVariable(name: "val", arg: 1, scope: !372, file: !8, line: 273, type: !11)
!374 = !DILocation(line: 0, scope: !372)
!375 = !DILocation(line: 274, column: 5, scope: !372)
!376 = !DILocation(line: 275, column: 5, scope: !372)
!377 = distinct !DISubprogram(name: "func30", scope: !8, file: !8, line: 277, type: !16, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!378 = !DILocalVariable(name: "val", arg: 1, scope: !377, file: !8, line: 277, type: !11)
!379 = !DILocation(line: 0, scope: !377)
!380 = !DILocation(line: 278, column: 5, scope: !377)
!381 = !DILocation(line: 279, column: 5, scope: !377)
