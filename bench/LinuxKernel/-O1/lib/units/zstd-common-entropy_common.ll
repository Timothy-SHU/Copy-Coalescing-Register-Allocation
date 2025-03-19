; ModuleID = 'lib/zstd/common/entropy_common.c'
source_filename = "lib/zstd/common/entropy_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @FSE_versionNumber() #0 align 16 !dbg !87 {
entry:
  ret i32 900, !dbg !90
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @FSE_isError(i64 noundef %code) #0 align 16 !dbg !91 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i64, ptr %code.addr, align 8, !dbg !97
  %call = call i32 @ERR_isError(i64 noundef %0) #10, !dbg !98
  ret i32 %call, !dbg !99
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_isError(i64 noundef %code) #0 align 16 !dbg !100 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load i64, ptr %code.addr, align 8, !dbg !104
  %cmp = icmp ugt i64 %0, -120, !dbg !105
  %conv = zext i1 %cmp to i32, !dbg !105
  ret i32 %conv, !dbg !106
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @FSE_getErrorName(i64 noundef %code) #0 align 16 !dbg !107 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load i64, ptr %code.addr, align 8, !dbg !116
  %call = call ptr @ERR_getErrorName(i64 noundef %0) #10, !dbg !117
  ret ptr %call, !dbg !118
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_getErrorName(i64 noundef %code) #0 align 16 !dbg !119 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i64, ptr %code.addr, align 8, !dbg !123
  %call = call i32 @ERR_getErrorCode(i64 noundef %0) #10, !dbg !124
  %call1 = call ptr @ERR_getErrorString(i32 noundef %call) #10, !dbg !125
  ret ptr %call1, !dbg !126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @HUF_isError(i64 noundef %code) #0 align 16 !dbg !127 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load i64, ptr %code.addr, align 8, !dbg !131
  %call = call i32 @ERR_isError(i64 noundef %0) #10, !dbg !132
  ret i32 %call, !dbg !133
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @HUF_getErrorName(i64 noundef %code) #0 align 16 !dbg !134 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load i64, ptr %code.addr, align 8, !dbg !138
  %call = call ptr @ERR_getErrorName(i64 noundef %0) #10, !dbg !139
  ret ptr %call, !dbg !140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_readNCount_bmi2(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef %headerBuffer, i64 noundef %hbSize, i32 noundef %bmi2) #0 align 16 !dbg !141 {
entry:
  %retval = alloca i64, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSVPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %headerBuffer.addr = alloca ptr, align 8
  %hbSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !147, metadata !DIExpression()), !dbg !153
  store ptr %maxSVPtr, ptr %maxSVPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxSVPtr.addr, metadata !148, metadata !DIExpression()), !dbg !154
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !149, metadata !DIExpression()), !dbg !155
  store ptr %headerBuffer, ptr %headerBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %headerBuffer.addr, metadata !150, metadata !DIExpression()), !dbg !156
  store i64 %hbSize, ptr %hbSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hbSize.addr, metadata !151, metadata !DIExpression()), !dbg !157
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !152, metadata !DIExpression()), !dbg !158
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !159
  %tobool = icmp ne i32 %0, 0, !dbg !159
  br i1 %tobool, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !162
  %2 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !164
  %3 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !165
  %4 = load ptr, ptr %headerBuffer.addr, align 8, !dbg !166
  %5 = load i64, ptr %hbSize.addr, align 8, !dbg !167
  %call = call i64 @FSE_readNCount_body_bmi2(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #10, !dbg !168
  store i64 %call, ptr %retval, align 8, !dbg !169
  br label %return, !dbg !169

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %bmi2.addr, align 4, !dbg !170
  %7 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !171
  %8 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !172
  %9 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !173
  %10 = load ptr, ptr %headerBuffer.addr, align 8, !dbg !174
  %11 = load i64, ptr %hbSize.addr, align 8, !dbg !175
  %call1 = call i64 @FSE_readNCount_body_default(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i64 noundef %11) #10, !dbg !176
  store i64 %call1, ptr %retval, align 8, !dbg !177
  br label %return, !dbg !177

return:                                           ; preds = %if.end, %if.then
  %12 = load i64, ptr %retval, align 8, !dbg !178
  ret i64 %12, !dbg !178
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_readNCount_body_bmi2(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef %headerBuffer, i64 noundef %hbSize) #2 align 16 !dbg !179 {
entry:
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSVPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %headerBuffer.addr = alloca ptr, align 8
  %hbSize.addr = alloca i64, align 8
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !183, metadata !DIExpression()), !dbg !188
  store ptr %maxSVPtr, ptr %maxSVPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxSVPtr.addr, metadata !184, metadata !DIExpression()), !dbg !189
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !185, metadata !DIExpression()), !dbg !190
  store ptr %headerBuffer, ptr %headerBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %headerBuffer.addr, metadata !186, metadata !DIExpression()), !dbg !191
  store i64 %hbSize, ptr %hbSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hbSize.addr, metadata !187, metadata !DIExpression()), !dbg !192
  %0 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !193
  %1 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !194
  %2 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !195
  %3 = load ptr, ptr %headerBuffer.addr, align 8, !dbg !196
  %4 = load i64, ptr %hbSize.addr, align 8, !dbg !197
  %call = call i64 @FSE_readNCount_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #10, !dbg !198
  ret i64 %call, !dbg !199
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_readNCount_body_default(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef %headerBuffer, i64 noundef %hbSize) #0 align 16 !dbg !200 {
entry:
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSVPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %headerBuffer.addr = alloca ptr, align 8
  %hbSize.addr = alloca i64, align 8
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !202, metadata !DIExpression()), !dbg !207
  store ptr %maxSVPtr, ptr %maxSVPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxSVPtr.addr, metadata !203, metadata !DIExpression()), !dbg !208
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !204, metadata !DIExpression()), !dbg !209
  store ptr %headerBuffer, ptr %headerBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %headerBuffer.addr, metadata !205, metadata !DIExpression()), !dbg !210
  store i64 %hbSize, ptr %hbSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hbSize.addr, metadata !206, metadata !DIExpression()), !dbg !211
  %0 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !212
  %1 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !213
  %2 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !214
  %3 = load ptr, ptr %headerBuffer.addr, align 8, !dbg !215
  %4 = load i64, ptr %hbSize.addr, align 8, !dbg !216
  %call = call i64 @FSE_readNCount_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #10, !dbg !217
  ret i64 %call, !dbg !218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @FSE_readNCount(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef %headerBuffer, i64 noundef %hbSize) #0 align 16 !dbg !219 {
entry:
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSVPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %headerBuffer.addr = alloca ptr, align 8
  %hbSize.addr = alloca i64, align 8
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !221, metadata !DIExpression()), !dbg !226
  store ptr %maxSVPtr, ptr %maxSVPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxSVPtr.addr, metadata !222, metadata !DIExpression()), !dbg !227
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !223, metadata !DIExpression()), !dbg !228
  store ptr %headerBuffer, ptr %headerBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %headerBuffer.addr, metadata !224, metadata !DIExpression()), !dbg !229
  store i64 %hbSize, ptr %hbSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hbSize.addr, metadata !225, metadata !DIExpression()), !dbg !230
  %0 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !231
  %1 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !232
  %2 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !233
  %3 = load ptr, ptr %headerBuffer.addr, align 8, !dbg !234
  %4 = load i64, ptr %hbSize.addr, align 8, !dbg !235
  %call = call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0) #10, !dbg !236
  ret i64 %call, !dbg !237
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_readStats(ptr noundef %huffWeight, i64 noundef %hwSize, ptr noundef %rankStats, ptr noundef %nbSymbolsPtr, ptr noundef %tableLogPtr, ptr noundef %src, i64 noundef %srcSize) #0 align 16 !dbg !238 {
entry:
  %huffWeight.addr = alloca ptr, align 8
  %hwSize.addr = alloca i64, align 8
  %rankStats.addr = alloca ptr, align 8
  %nbSymbolsPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %wksp = alloca [218 x i32], align 16
  store ptr %huffWeight, ptr %huffWeight.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %huffWeight.addr, metadata !244, metadata !DIExpression()), !dbg !255
  store i64 %hwSize, ptr %hwSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwSize.addr, metadata !245, metadata !DIExpression()), !dbg !256
  store ptr %rankStats, ptr %rankStats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankStats.addr, metadata !246, metadata !DIExpression()), !dbg !257
  store ptr %nbSymbolsPtr, ptr %nbSymbolsPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbSymbolsPtr.addr, metadata !247, metadata !DIExpression()), !dbg !258
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !248, metadata !DIExpression()), !dbg !259
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !249, metadata !DIExpression()), !dbg !260
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !250, metadata !DIExpression()), !dbg !261
  call void @llvm.lifetime.start.p0(i64 872, ptr %wksp) #11, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %wksp, metadata !251, metadata !DIExpression()), !dbg !263
  %0 = load ptr, ptr %huffWeight.addr, align 8, !dbg !264
  %1 = load i64, ptr %hwSize.addr, align 8, !dbg !265
  %2 = load ptr, ptr %rankStats.addr, align 8, !dbg !266
  %3 = load ptr, ptr %nbSymbolsPtr.addr, align 8, !dbg !267
  %4 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !268
  %5 = load ptr, ptr %src.addr, align 8, !dbg !269
  %6 = load i64, ptr %srcSize.addr, align 8, !dbg !270
  %arraydecay = getelementptr inbounds [218 x i32], ptr %wksp, i64 0, i64 0, !dbg !271
  %call = call i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %arraydecay, i64 noundef 872, i32 noundef 0) #10, !dbg !272
  call void @llvm.lifetime.end.p0(i64 872, ptr %wksp) #11, !dbg !273
  ret i64 %call, !dbg !274
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @HUF_readStats_wksp(ptr noundef %huffWeight, i64 noundef %hwSize, ptr noundef %rankStats, ptr noundef %nbSymbolsPtr, ptr noundef %tableLogPtr, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #0 align 16 !dbg !275 {
entry:
  %retval = alloca i64, align 8
  %huffWeight.addr = alloca ptr, align 8
  %hwSize.addr = alloca i64, align 8
  %rankStats.addr = alloca ptr, align 8
  %nbSymbolsPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  store ptr %huffWeight, ptr %huffWeight.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %huffWeight.addr, metadata !280, metadata !DIExpression()), !dbg !290
  store i64 %hwSize, ptr %hwSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwSize.addr, metadata !281, metadata !DIExpression()), !dbg !291
  store ptr %rankStats, ptr %rankStats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankStats.addr, metadata !282, metadata !DIExpression()), !dbg !292
  store ptr %nbSymbolsPtr, ptr %nbSymbolsPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbSymbolsPtr.addr, metadata !283, metadata !DIExpression()), !dbg !293
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !284, metadata !DIExpression()), !dbg !294
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !285, metadata !DIExpression()), !dbg !295
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !286, metadata !DIExpression()), !dbg !296
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !287, metadata !DIExpression()), !dbg !297
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !288, metadata !DIExpression()), !dbg !298
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !289, metadata !DIExpression()), !dbg !299
  %0 = load i32, ptr %bmi2.addr, align 4, !dbg !300
  %tobool = icmp ne i32 %0, 0, !dbg !300
  br i1 %tobool, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %huffWeight.addr, align 8, !dbg !303
  %2 = load i64, ptr %hwSize.addr, align 8, !dbg !305
  %3 = load ptr, ptr %rankStats.addr, align 8, !dbg !306
  %4 = load ptr, ptr %nbSymbolsPtr.addr, align 8, !dbg !307
  %5 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !308
  %6 = load ptr, ptr %src.addr, align 8, !dbg !309
  %7 = load i64, ptr %srcSize.addr, align 8, !dbg !310
  %8 = load ptr, ptr %workSpace.addr, align 8, !dbg !311
  %9 = load i64, ptr %wkspSize.addr, align 8, !dbg !312
  %call = call i64 @HUF_readStats_body_bmi2(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9) #10, !dbg !313
  store i64 %call, ptr %retval, align 8, !dbg !314
  br label %return, !dbg !314

if.end:                                           ; preds = %entry
  %10 = load i32, ptr %bmi2.addr, align 4, !dbg !315
  %11 = load ptr, ptr %huffWeight.addr, align 8, !dbg !316
  %12 = load i64, ptr %hwSize.addr, align 8, !dbg !317
  %13 = load ptr, ptr %rankStats.addr, align 8, !dbg !318
  %14 = load ptr, ptr %nbSymbolsPtr.addr, align 8, !dbg !319
  %15 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !320
  %16 = load ptr, ptr %src.addr, align 8, !dbg !321
  %17 = load i64, ptr %srcSize.addr, align 8, !dbg !322
  %18 = load ptr, ptr %workSpace.addr, align 8, !dbg !323
  %19 = load i64, ptr %wkspSize.addr, align 8, !dbg !324
  %call1 = call i64 @HUF_readStats_body_default(ptr noundef %11, i64 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, i64 noundef %17, ptr noundef %18, i64 noundef %19) #10, !dbg !325
  store i64 %call1, ptr %retval, align 8, !dbg !326
  br label %return, !dbg !326

return:                                           ; preds = %if.end, %if.then
  %20 = load i64, ptr %retval, align 8, !dbg !327
  ret i64 %20, !dbg !327
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_readStats_body_bmi2(ptr noundef %huffWeight, i64 noundef %hwSize, ptr noundef %rankStats, ptr noundef %nbSymbolsPtr, ptr noundef %tableLogPtr, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #2 align 16 !dbg !328 {
entry:
  %huffWeight.addr = alloca ptr, align 8
  %hwSize.addr = alloca i64, align 8
  %rankStats.addr = alloca ptr, align 8
  %nbSymbolsPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %huffWeight, ptr %huffWeight.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %huffWeight.addr, metadata !332, metadata !DIExpression()), !dbg !341
  store i64 %hwSize, ptr %hwSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwSize.addr, metadata !333, metadata !DIExpression()), !dbg !342
  store ptr %rankStats, ptr %rankStats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankStats.addr, metadata !334, metadata !DIExpression()), !dbg !343
  store ptr %nbSymbolsPtr, ptr %nbSymbolsPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbSymbolsPtr.addr, metadata !335, metadata !DIExpression()), !dbg !344
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !336, metadata !DIExpression()), !dbg !345
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !337, metadata !DIExpression()), !dbg !346
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !338, metadata !DIExpression()), !dbg !347
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !339, metadata !DIExpression()), !dbg !348
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !340, metadata !DIExpression()), !dbg !349
  %0 = load ptr, ptr %huffWeight.addr, align 8, !dbg !350
  %1 = load i64, ptr %hwSize.addr, align 8, !dbg !351
  %2 = load ptr, ptr %rankStats.addr, align 8, !dbg !352
  %3 = load ptr, ptr %nbSymbolsPtr.addr, align 8, !dbg !353
  %4 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !354
  %5 = load ptr, ptr %src.addr, align 8, !dbg !355
  %6 = load i64, ptr %srcSize.addr, align 8, !dbg !356
  %7 = load ptr, ptr %workSpace.addr, align 8, !dbg !357
  %8 = load i64, ptr %wkspSize.addr, align 8, !dbg !358
  %call = call i64 @HUF_readStats_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef 1) #10, !dbg !359
  ret i64 %call, !dbg !360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_readStats_body_default(ptr noundef %huffWeight, i64 noundef %hwSize, ptr noundef %rankStats, ptr noundef %nbSymbolsPtr, ptr noundef %tableLogPtr, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize) #0 align 16 !dbg !361 {
entry:
  %huffWeight.addr = alloca ptr, align 8
  %hwSize.addr = alloca i64, align 8
  %rankStats.addr = alloca ptr, align 8
  %nbSymbolsPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  store ptr %huffWeight, ptr %huffWeight.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %huffWeight.addr, metadata !363, metadata !DIExpression()), !dbg !372
  store i64 %hwSize, ptr %hwSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwSize.addr, metadata !364, metadata !DIExpression()), !dbg !373
  store ptr %rankStats, ptr %rankStats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankStats.addr, metadata !365, metadata !DIExpression()), !dbg !374
  store ptr %nbSymbolsPtr, ptr %nbSymbolsPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbSymbolsPtr.addr, metadata !366, metadata !DIExpression()), !dbg !375
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !367, metadata !DIExpression()), !dbg !376
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !368, metadata !DIExpression()), !dbg !377
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !369, metadata !DIExpression()), !dbg !378
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !370, metadata !DIExpression()), !dbg !379
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !371, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %huffWeight.addr, align 8, !dbg !381
  %1 = load i64, ptr %hwSize.addr, align 8, !dbg !382
  %2 = load ptr, ptr %rankStats.addr, align 8, !dbg !383
  %3 = load ptr, ptr %nbSymbolsPtr.addr, align 8, !dbg !384
  %4 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !385
  %5 = load ptr, ptr %src.addr, align 8, !dbg !386
  %6 = load i64, ptr %srcSize.addr, align 8, !dbg !387
  %7 = load ptr, ptr %workSpace.addr, align 8, !dbg !388
  %8 = load i64, ptr %wkspSize.addr, align 8, !dbg !389
  %call = call i64 @HUF_readStats_body(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #10, !dbg !390
  ret i64 %call, !dbg !391
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !392 dso_local ptr @ERR_getErrorString(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ERR_getErrorCode(i64 noundef %code) #0 align 16 !dbg !395 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i64, align 8
  store i64 %code, ptr %code.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %code.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i64, ptr %code.addr, align 8, !dbg !401
  %call = call i32 @ERR_isError(i64 noundef %0) #10, !dbg !403
  %tobool = icmp ne i32 %call, 0, !dbg !403
  br i1 %tobool, label %if.end, label %if.then, !dbg !404

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !405
  br label %return, !dbg !405

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %code.addr, align 8, !dbg !406
  %sub = sub i64 0, %1, !dbg !407
  %conv = trunc i64 %sub to i32, !dbg !408
  store i32 %conv, ptr %retval, align 4, !dbg !409
  br label %return, !dbg !409

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !410
  ret i32 %2, !dbg !410
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @FSE_readNCount_body(ptr noundef %normalizedCounter, ptr noundef %maxSVPtr, ptr noundef %tableLogPtr, ptr noundef %headerBuffer, i64 noundef %hbSize) #5 align 16 !dbg !411 {
entry:
  %retval = alloca i64, align 8
  %normalizedCounter.addr = alloca ptr, align 8
  %maxSVPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %headerBuffer.addr = alloca ptr, align 8
  %hbSize.addr = alloca i64, align 8
  %istart = alloca ptr, align 8
  %iend = alloca ptr, align 8
  %ip = alloca ptr, align 8
  %nbBits = alloca i32, align 4
  %remaining = alloca i32, align 4
  %threshold = alloca i32, align 4
  %bitStream = alloca i32, align 4
  %bitCount = alloca i32, align 4
  %charnum = alloca i32, align 4
  %maxSV1 = alloca i32, align 4
  %previous0 = alloca i32, align 4
  %buffer = alloca [8 x i8], align 1
  %countSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %repeats = alloca i32, align 4
  %max = alloca i32, align 4
  %count = alloca i32, align 4
  store ptr %normalizedCounter, ptr %normalizedCounter.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %normalizedCounter.addr, metadata !413, metadata !DIExpression()), !dbg !450
  store ptr %maxSVPtr, ptr %maxSVPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxSVPtr.addr, metadata !414, metadata !DIExpression()), !dbg !451
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !415, metadata !DIExpression()), !dbg !452
  store ptr %headerBuffer, ptr %headerBuffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %headerBuffer.addr, metadata !416, metadata !DIExpression()), !dbg !453
  store i64 %hbSize, ptr %hbSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hbSize.addr, metadata !417, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 8, ptr %istart) #11, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %istart, metadata !418, metadata !DIExpression()), !dbg !456
  %0 = load ptr, ptr %headerBuffer.addr, align 8, !dbg !457
  store ptr %0, ptr %istart, align 8, !dbg !456
  call void @llvm.lifetime.start.p0(i64 8, ptr %iend) #11, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %iend, metadata !420, metadata !DIExpression()), !dbg !459
  %1 = load ptr, ptr %istart, align 8, !dbg !460
  %2 = load i64, ptr %hbSize.addr, align 8, !dbg !461
  %add.ptr = getelementptr i8, ptr %1, i64 %2, !dbg !462
  store ptr %add.ptr, ptr %iend, align 8, !dbg !459
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !421, metadata !DIExpression()), !dbg !464
  %3 = load ptr, ptr %istart, align 8, !dbg !465
  store ptr %3, ptr %ip, align 8, !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbBits) #11, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %nbBits, metadata !422, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0(i64 4, ptr %remaining) #11, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %remaining, metadata !423, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 4, ptr %threshold) #11, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %threshold, metadata !424, metadata !DIExpression()), !dbg !471
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitStream) #11, !dbg !472
  call void @llvm.dbg.declare(metadata ptr %bitStream, metadata !425, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitCount) #11, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %bitCount, metadata !426, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 4, ptr %charnum) #11, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %charnum, metadata !427, metadata !DIExpression()), !dbg !477
  store i32 0, ptr %charnum, align 4, !dbg !477
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxSV1) #11, !dbg !478
  call void @llvm.dbg.declare(metadata ptr %maxSV1, metadata !428, metadata !DIExpression()), !dbg !479
  %4 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !480
  %5 = load i32, ptr %4, align 4, !dbg !481
  %add = add i32 %5, 1, !dbg !482
  store i32 %add, ptr %maxSV1, align 4, !dbg !479
  call void @llvm.lifetime.start.p0(i64 4, ptr %previous0) #11, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %previous0, metadata !430, metadata !DIExpression()), !dbg !484
  store i32 0, ptr %previous0, align 4, !dbg !484
  %6 = load i64, ptr %hbSize.addr, align 8, !dbg !485
  %cmp = icmp ult i64 %6, 8, !dbg !486
  br i1 %cmp, label %if.then, label %if.end8, !dbg !487

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #11, !dbg !488
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !431, metadata !DIExpression()), !dbg !489
  call void @llvm.memset.p0.i64(ptr align 1 %buffer, i8 0, i64 8, i1 false), !dbg !489
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 0, !dbg !490
  %7 = load ptr, ptr %headerBuffer.addr, align 8, !dbg !490
  %8 = load i64, ptr %hbSize.addr, align 8, !dbg !490
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arraydecay, ptr align 1 %7, i64 %8, i1 false), !dbg !490
  call void @llvm.lifetime.start.p0(i64 8, ptr %countSize) #11, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %countSize, metadata !437, metadata !DIExpression()), !dbg !492
  %9 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !493
  %10 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !494
  %11 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !495
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 0, !dbg !496
  %call = call i64 @FSE_readNCount(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %arraydecay1, i64 noundef 8) #10, !dbg !497
  store i64 %call, ptr %countSize, align 8, !dbg !492
  %12 = load i64, ptr %countSize, align 8, !dbg !498
  %call2 = call i32 @FSE_isError(i64 noundef %12) #10, !dbg !500
  %tobool = icmp ne i32 %call2, 0, !dbg !500
  br i1 %tobool, label %if.then3, label %if.end, !dbg !501

if.then3:                                         ; preds = %if.then
  %13 = load i64, ptr %countSize, align 8, !dbg !502
  store i64 %13, ptr %retval, align 8, !dbg !503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

if.end:                                           ; preds = %if.then
  %14 = load i64, ptr %countSize, align 8, !dbg !504
  %15 = load i64, ptr %hbSize.addr, align 8, !dbg !506
  %cmp4 = icmp ugt i64 %14, %15, !dbg !507
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !508

if.then5:                                         ; preds = %if.end
  store i64 -20, ptr %retval, align 8, !dbg !509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !509

if.end6:                                          ; preds = %if.end
  %16 = load i64, ptr %countSize, align 8, !dbg !510
  store i64 %16, ptr %retval, align 8, !dbg !511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !511

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %countSize) #11, !dbg !512
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #11, !dbg !513
  br label %cleanup192

if.end8:                                          ; preds = %entry
  %17 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !514
  %18 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !514
  %19 = load i32, ptr %18, align 4, !dbg !514
  %add9 = add i32 %19, 1, !dbg !514
  %conv = zext i32 %add9 to i64, !dbg !514
  %mul = mul i64 %conv, 2, !dbg !514
  call void @llvm.memset.p0.i64(ptr align 2 %17, i8 0, i64 %mul, i1 false), !dbg !514
  %20 = load ptr, ptr %ip, align 8, !dbg !515
  %call10 = call i32 @MEM_readLE32(ptr noundef %20) #10, !dbg !516
  store i32 %call10, ptr %bitStream, align 4, !dbg !517
  %21 = load i32, ptr %bitStream, align 4, !dbg !518
  %and = and i32 %21, 15, !dbg !519
  %add11 = add i32 %and, 5, !dbg !520
  store i32 %add11, ptr %nbBits, align 4, !dbg !521
  %22 = load i32, ptr %nbBits, align 4, !dbg !522
  %cmp12 = icmp sgt i32 %22, 15, !dbg !524
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !525

if.then14:                                        ; preds = %if.end8
  store i64 -44, ptr %retval, align 8, !dbg !526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup192, !dbg !526

if.end15:                                         ; preds = %if.end8
  %23 = load i32, ptr %bitStream, align 4, !dbg !527
  %shr = lshr i32 %23, 4, !dbg !527
  store i32 %shr, ptr %bitStream, align 4, !dbg !527
  store i32 4, ptr %bitCount, align 4, !dbg !528
  %24 = load i32, ptr %nbBits, align 4, !dbg !529
  %25 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !530
  store i32 %24, ptr %25, align 4, !dbg !531
  %26 = load i32, ptr %nbBits, align 4, !dbg !532
  %shl = shl i32 1, %26, !dbg !533
  %add16 = add i32 %shl, 1, !dbg !534
  store i32 %add16, ptr %remaining, align 4, !dbg !535
  %27 = load i32, ptr %nbBits, align 4, !dbg !536
  %shl17 = shl i32 1, %27, !dbg !537
  store i32 %shl17, ptr %threshold, align 4, !dbg !538
  %28 = load i32, ptr %nbBits, align 4, !dbg !539
  %inc = add i32 %28, 1, !dbg !539
  store i32 %inc, ptr %nbBits, align 4, !dbg !539
  br label %for.cond, !dbg !540

for.cond:                                         ; preds = %cleanup.cont171, %if.end15
  %29 = load i32, ptr %previous0, align 4, !dbg !541
  %tobool18 = icmp ne i32 %29, 0, !dbg !541
  br i1 %tobool18, label %if.then19, label %if.end87, !dbg !542

if.then19:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %repeats) #11, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %repeats, metadata !440, metadata !DIExpression()), !dbg !544
  %30 = load i32, ptr %bitStream, align 4, !dbg !545
  %not = xor i32 %30, -1, !dbg !546
  %or = or i32 %not, -2147483648, !dbg !547
  %call20 = call i32 @FSE_ctz(i32 noundef %or) #10, !dbg !548
  %shr21 = lshr i32 %call20, 1, !dbg !549
  store i32 %shr21, ptr %repeats, align 4, !dbg !544
  br label %while.cond, !dbg !550

while.cond:                                       ; preds = %if.end37, %if.then19
  %31 = load i32, ptr %repeats, align 4, !dbg !551
  %cmp22 = icmp sge i32 %31, 12, !dbg !552
  br i1 %cmp22, label %while.body, label %while.end, !dbg !550

while.body:                                       ; preds = %while.cond
  %32 = load i32, ptr %charnum, align 4, !dbg !553
  %add24 = add i32 %32, 36, !dbg !553
  store i32 %add24, ptr %charnum, align 4, !dbg !553
  %33 = load ptr, ptr %ip, align 8, !dbg !555
  %34 = load ptr, ptr %iend, align 8, !dbg !555
  %add.ptr25 = getelementptr i8, ptr %34, i64 -7, !dbg !555
  %cmp26 = icmp ule ptr %33, %add.ptr25, !dbg !555
  %conv27 = zext i1 %cmp26 to i32, !dbg !555
  %conv28 = sext i32 %conv27 to i64, !dbg !555
  %expval = call i64 @llvm.expect.i64(i64 %conv28, i64 1), !dbg !555
  %tobool29 = icmp ne i64 %expval, 0, !dbg !555
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !557

if.then30:                                        ; preds = %while.body
  %35 = load ptr, ptr %ip, align 8, !dbg !558
  %add.ptr31 = getelementptr i8, ptr %35, i64 3, !dbg !558
  store ptr %add.ptr31, ptr %ip, align 8, !dbg !558
  br label %if.end37, !dbg !560

if.else:                                          ; preds = %while.body
  %36 = load ptr, ptr %iend, align 8, !dbg !561
  %add.ptr32 = getelementptr i8, ptr %36, i64 -7, !dbg !563
  %37 = load ptr, ptr %ip, align 8, !dbg !564
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr32 to i64, !dbg !565
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i64, !dbg !565
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !565
  %mul33 = mul i64 8, %sub.ptr.sub, !dbg !566
  %conv34 = trunc i64 %mul33 to i32, !dbg !567
  %38 = load i32, ptr %bitCount, align 4, !dbg !568
  %sub = sub i32 %38, %conv34, !dbg !568
  store i32 %sub, ptr %bitCount, align 4, !dbg !568
  %39 = load i32, ptr %bitCount, align 4, !dbg !569
  %and35 = and i32 %39, 31, !dbg !569
  store i32 %and35, ptr %bitCount, align 4, !dbg !569
  %40 = load ptr, ptr %iend, align 8, !dbg !570
  %add.ptr36 = getelementptr i8, ptr %40, i64 -4, !dbg !571
  store ptr %add.ptr36, ptr %ip, align 8, !dbg !572
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then30
  %41 = load ptr, ptr %ip, align 8, !dbg !573
  %call38 = call i32 @MEM_readLE32(ptr noundef %41) #10, !dbg !574
  %42 = load i32, ptr %bitCount, align 4, !dbg !575
  %shr39 = lshr i32 %call38, %42, !dbg !576
  store i32 %shr39, ptr %bitStream, align 4, !dbg !577
  %43 = load i32, ptr %bitStream, align 4, !dbg !578
  %not40 = xor i32 %43, -1, !dbg !579
  %or41 = or i32 %not40, -2147483648, !dbg !580
  %call42 = call i32 @FSE_ctz(i32 noundef %or41) #10, !dbg !581
  %shr43 = lshr i32 %call42, 1, !dbg !582
  store i32 %shr43, ptr %repeats, align 4, !dbg !583
  br label %while.cond, !dbg !550, !llvm.loop !584

while.end:                                        ; preds = %while.cond
  %44 = load i32, ptr %repeats, align 4, !dbg !588
  %mul44 = mul i32 3, %44, !dbg !589
  %45 = load i32, ptr %charnum, align 4, !dbg !590
  %add45 = add i32 %45, %mul44, !dbg !590
  store i32 %add45, ptr %charnum, align 4, !dbg !590
  %46 = load i32, ptr %repeats, align 4, !dbg !591
  %mul46 = mul i32 2, %46, !dbg !592
  %47 = load i32, ptr %bitStream, align 4, !dbg !593
  %shr47 = lshr i32 %47, %mul46, !dbg !593
  store i32 %shr47, ptr %bitStream, align 4, !dbg !593
  %48 = load i32, ptr %repeats, align 4, !dbg !594
  %mul48 = mul i32 2, %48, !dbg !595
  %49 = load i32, ptr %bitCount, align 4, !dbg !596
  %add49 = add i32 %49, %mul48, !dbg !596
  store i32 %add49, ptr %bitCount, align 4, !dbg !596
  %50 = load i32, ptr %bitStream, align 4, !dbg !597
  %and50 = and i32 %50, 3, !dbg !598
  %51 = load i32, ptr %charnum, align 4, !dbg !599
  %add51 = add i32 %51, %and50, !dbg !599
  store i32 %add51, ptr %charnum, align 4, !dbg !599
  %52 = load i32, ptr %bitCount, align 4, !dbg !600
  %add52 = add i32 %52, 2, !dbg !600
  store i32 %add52, ptr %bitCount, align 4, !dbg !600
  %53 = load i32, ptr %charnum, align 4, !dbg !601
  %54 = load i32, ptr %maxSV1, align 4, !dbg !603
  %cmp53 = icmp uge i32 %53, %54, !dbg !604
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !605

if.then55:                                        ; preds = %while.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup86, !dbg !606

if.end56:                                         ; preds = %while.end
  %55 = load ptr, ptr %ip, align 8, !dbg !607
  %56 = load ptr, ptr %iend, align 8, !dbg !607
  %add.ptr57 = getelementptr i8, ptr %56, i64 -7, !dbg !607
  %cmp58 = icmp ule ptr %55, %add.ptr57, !dbg !607
  %conv59 = zext i1 %cmp58 to i32, !dbg !607
  %conv60 = sext i32 %conv59 to i64, !dbg !607
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 1), !dbg !607
  %tobool62 = icmp ne i64 %expval61, 0, !dbg !607
  br i1 %tobool62, label %if.then68, label %lor.lhs.false, !dbg !609

lor.lhs.false:                                    ; preds = %if.end56
  %57 = load ptr, ptr %ip, align 8, !dbg !610
  %58 = load i32, ptr %bitCount, align 4, !dbg !611
  %shr63 = ashr i32 %58, 3, !dbg !612
  %idx.ext = sext i32 %shr63 to i64, !dbg !613
  %add.ptr64 = getelementptr i8, ptr %57, i64 %idx.ext, !dbg !613
  %59 = load ptr, ptr %iend, align 8, !dbg !614
  %add.ptr65 = getelementptr i8, ptr %59, i64 -4, !dbg !615
  %cmp66 = icmp ule ptr %add.ptr64, %add.ptr65, !dbg !616
  br i1 %cmp66, label %if.then68, label %if.else73, !dbg !617

if.then68:                                        ; preds = %lor.lhs.false, %if.end56
  %60 = load i32, ptr %bitCount, align 4, !dbg !618
  %shr69 = ashr i32 %60, 3, !dbg !620
  %61 = load ptr, ptr %ip, align 8, !dbg !621
  %idx.ext70 = sext i32 %shr69 to i64, !dbg !621
  %add.ptr71 = getelementptr i8, ptr %61, i64 %idx.ext70, !dbg !621
  store ptr %add.ptr71, ptr %ip, align 8, !dbg !621
  %62 = load i32, ptr %bitCount, align 4, !dbg !622
  %and72 = and i32 %62, 7, !dbg !622
  store i32 %and72, ptr %bitCount, align 4, !dbg !622
  br label %if.end83, !dbg !623

if.else73:                                        ; preds = %lor.lhs.false
  %63 = load ptr, ptr %iend, align 8, !dbg !624
  %add.ptr74 = getelementptr i8, ptr %63, i64 -4, !dbg !626
  %64 = load ptr, ptr %ip, align 8, !dbg !627
  %sub.ptr.lhs.cast75 = ptrtoint ptr %add.ptr74 to i64, !dbg !628
  %sub.ptr.rhs.cast76 = ptrtoint ptr %64 to i64, !dbg !628
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76, !dbg !628
  %mul78 = mul i64 8, %sub.ptr.sub77, !dbg !629
  %conv79 = trunc i64 %mul78 to i32, !dbg !630
  %65 = load i32, ptr %bitCount, align 4, !dbg !631
  %sub80 = sub i32 %65, %conv79, !dbg !631
  store i32 %sub80, ptr %bitCount, align 4, !dbg !631
  %66 = load i32, ptr %bitCount, align 4, !dbg !632
  %and81 = and i32 %66, 31, !dbg !632
  store i32 %and81, ptr %bitCount, align 4, !dbg !632
  %67 = load ptr, ptr %iend, align 8, !dbg !633
  %add.ptr82 = getelementptr i8, ptr %67, i64 -4, !dbg !634
  store ptr %add.ptr82, ptr %ip, align 8, !dbg !635
  br label %if.end83

if.end83:                                         ; preds = %if.else73, %if.then68
  %68 = load ptr, ptr %ip, align 8, !dbg !636
  %call84 = call i32 @MEM_readLE32(ptr noundef %68) #10, !dbg !637
  %69 = load i32, ptr %bitCount, align 4, !dbg !638
  %shr85 = lshr i32 %call84, %69, !dbg !639
  store i32 %shr85, ptr %bitStream, align 4, !dbg !640
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !641
  br label %cleanup86, !dbg !641

cleanup86:                                        ; preds = %if.end83, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr %repeats) #11, !dbg !641
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup86
  br label %if.end87, !dbg !642

if.end87:                                         ; preds = %cleanup.cont, %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #11, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %max, metadata !446, metadata !DIExpression()), !dbg !644
  %70 = load i32, ptr %threshold, align 4, !dbg !645
  %mul88 = mul i32 2, %70, !dbg !646
  %sub89 = sub i32 %mul88, 1, !dbg !647
  %71 = load i32, ptr %remaining, align 4, !dbg !648
  %sub90 = sub i32 %sub89, %71, !dbg !649
  store i32 %sub90, ptr %max, align 4, !dbg !644
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %count, metadata !449, metadata !DIExpression()), !dbg !651
  %72 = load i32, ptr %bitStream, align 4, !dbg !652
  %73 = load i32, ptr %threshold, align 4, !dbg !654
  %sub91 = sub i32 %73, 1, !dbg !655
  %and92 = and i32 %72, %sub91, !dbg !656
  %74 = load i32, ptr %max, align 4, !dbg !657
  %cmp93 = icmp ult i32 %and92, %74, !dbg !658
  br i1 %cmp93, label %if.then95, label %if.else100, !dbg !659

if.then95:                                        ; preds = %if.end87
  %75 = load i32, ptr %bitStream, align 4, !dbg !660
  %76 = load i32, ptr %threshold, align 4, !dbg !662
  %sub96 = sub i32 %76, 1, !dbg !663
  %and97 = and i32 %75, %sub96, !dbg !664
  store i32 %and97, ptr %count, align 4, !dbg !665
  %77 = load i32, ptr %nbBits, align 4, !dbg !666
  %sub98 = sub i32 %77, 1, !dbg !667
  %78 = load i32, ptr %bitCount, align 4, !dbg !668
  %add99 = add i32 %78, %sub98, !dbg !668
  store i32 %add99, ptr %bitCount, align 4, !dbg !668
  br label %if.end110, !dbg !669

if.else100:                                       ; preds = %if.end87
  %79 = load i32, ptr %bitStream, align 4, !dbg !670
  %80 = load i32, ptr %threshold, align 4, !dbg !672
  %mul101 = mul i32 2, %80, !dbg !673
  %sub102 = sub i32 %mul101, 1, !dbg !674
  %and103 = and i32 %79, %sub102, !dbg !675
  store i32 %and103, ptr %count, align 4, !dbg !676
  %81 = load i32, ptr %count, align 4, !dbg !677
  %82 = load i32, ptr %threshold, align 4, !dbg !679
  %cmp104 = icmp sge i32 %81, %82, !dbg !680
  br i1 %cmp104, label %if.then106, label %if.end108, !dbg !681

if.then106:                                       ; preds = %if.else100
  %83 = load i32, ptr %max, align 4, !dbg !682
  %84 = load i32, ptr %count, align 4, !dbg !683
  %sub107 = sub i32 %84, %83, !dbg !683
  store i32 %sub107, ptr %count, align 4, !dbg !683
  br label %if.end108, !dbg !684

if.end108:                                        ; preds = %if.then106, %if.else100
  %85 = load i32, ptr %nbBits, align 4, !dbg !685
  %86 = load i32, ptr %bitCount, align 4, !dbg !686
  %add109 = add i32 %86, %85, !dbg !686
  store i32 %add109, ptr %bitCount, align 4, !dbg !686
  br label %if.end110

if.end110:                                        ; preds = %if.end108, %if.then95
  %87 = load i32, ptr %count, align 4, !dbg !687
  %dec = add i32 %87, -1, !dbg !687
  store i32 %dec, ptr %count, align 4, !dbg !687
  %88 = load i32, ptr %count, align 4, !dbg !688
  %cmp111 = icmp sge i32 %88, 0, !dbg !690
  br i1 %cmp111, label %if.then113, label %if.else115, !dbg !691

if.then113:                                       ; preds = %if.end110
  %89 = load i32, ptr %count, align 4, !dbg !692
  %90 = load i32, ptr %remaining, align 4, !dbg !694
  %sub114 = sub i32 %90, %89, !dbg !694
  store i32 %sub114, ptr %remaining, align 4, !dbg !694
  br label %if.end117, !dbg !695

if.else115:                                       ; preds = %if.end110
  %91 = load i32, ptr %count, align 4, !dbg !696
  %92 = load i32, ptr %remaining, align 4, !dbg !698
  %add116 = add i32 %92, %91, !dbg !698
  store i32 %add116, ptr %remaining, align 4, !dbg !698
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then113
  %93 = load i32, ptr %count, align 4, !dbg !699
  %conv118 = trunc i32 %93 to i16, !dbg !700
  %94 = load ptr, ptr %normalizedCounter.addr, align 8, !dbg !701
  %95 = load i32, ptr %charnum, align 4, !dbg !702
  %inc119 = add i32 %95, 1, !dbg !702
  store i32 %inc119, ptr %charnum, align 4, !dbg !702
  %idxprom = zext i32 %95 to i64, !dbg !701
  %arrayidx = getelementptr i16, ptr %94, i64 %idxprom, !dbg !701
  store i16 %conv118, ptr %arrayidx, align 2, !dbg !703
  %96 = load i32, ptr %count, align 4, !dbg !704
  %tobool120 = icmp ne i32 %96, 0, !dbg !705
  %lnot = xor i1 %tobool120, true, !dbg !705
  %lnot.ext = zext i1 %lnot to i32, !dbg !705
  store i32 %lnot.ext, ptr %previous0, align 4, !dbg !706
  %97 = load i32, ptr %remaining, align 4, !dbg !707
  %98 = load i32, ptr %threshold, align 4, !dbg !709
  %cmp121 = icmp slt i32 %97, %98, !dbg !710
  br i1 %cmp121, label %if.then123, label %if.end132, !dbg !711

if.then123:                                       ; preds = %if.end117
  %99 = load i32, ptr %remaining, align 4, !dbg !712
  %cmp124 = icmp sle i32 %99, 1, !dbg !715
  br i1 %cmp124, label %if.then126, label %if.end127, !dbg !716

if.then126:                                       ; preds = %if.then123
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup168, !dbg !717

if.end127:                                        ; preds = %if.then123
  %100 = load i32, ptr %remaining, align 4, !dbg !718
  %call128 = call i32 @BIT_highbit32(i32 noundef %100) #10, !dbg !719
  %add129 = add i32 %call128, 1, !dbg !720
  store i32 %add129, ptr %nbBits, align 4, !dbg !721
  %101 = load i32, ptr %nbBits, align 4, !dbg !722
  %sub130 = sub i32 %101, 1, !dbg !723
  %shl131 = shl i32 1, %sub130, !dbg !724
  store i32 %shl131, ptr %threshold, align 4, !dbg !725
  br label %if.end132, !dbg !726

if.end132:                                        ; preds = %if.end127, %if.end117
  %102 = load i32, ptr %charnum, align 4, !dbg !727
  %103 = load i32, ptr %maxSV1, align 4, !dbg !729
  %cmp133 = icmp uge i32 %102, %103, !dbg !730
  br i1 %cmp133, label %if.then135, label %if.end136, !dbg !731

if.then135:                                       ; preds = %if.end132
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup168, !dbg !732

if.end136:                                        ; preds = %if.end132
  %104 = load ptr, ptr %ip, align 8, !dbg !733
  %105 = load ptr, ptr %iend, align 8, !dbg !733
  %add.ptr137 = getelementptr i8, ptr %105, i64 -7, !dbg !733
  %cmp138 = icmp ule ptr %104, %add.ptr137, !dbg !733
  %conv139 = zext i1 %cmp138 to i32, !dbg !733
  %conv140 = sext i32 %conv139 to i64, !dbg !733
  %expval141 = call i64 @llvm.expect.i64(i64 %conv140, i64 1), !dbg !733
  %tobool142 = icmp ne i64 %expval141, 0, !dbg !733
  br i1 %tobool142, label %if.then150, label %lor.lhs.false143, !dbg !735

lor.lhs.false143:                                 ; preds = %if.end136
  %106 = load ptr, ptr %ip, align 8, !dbg !736
  %107 = load i32, ptr %bitCount, align 4, !dbg !737
  %shr144 = ashr i32 %107, 3, !dbg !738
  %idx.ext145 = sext i32 %shr144 to i64, !dbg !739
  %add.ptr146 = getelementptr i8, ptr %106, i64 %idx.ext145, !dbg !739
  %108 = load ptr, ptr %iend, align 8, !dbg !740
  %add.ptr147 = getelementptr i8, ptr %108, i64 -4, !dbg !741
  %cmp148 = icmp ule ptr %add.ptr146, %add.ptr147, !dbg !742
  br i1 %cmp148, label %if.then150, label %if.else155, !dbg !743

if.then150:                                       ; preds = %lor.lhs.false143, %if.end136
  %109 = load i32, ptr %bitCount, align 4, !dbg !744
  %shr151 = ashr i32 %109, 3, !dbg !746
  %110 = load ptr, ptr %ip, align 8, !dbg !747
  %idx.ext152 = sext i32 %shr151 to i64, !dbg !747
  %add.ptr153 = getelementptr i8, ptr %110, i64 %idx.ext152, !dbg !747
  store ptr %add.ptr153, ptr %ip, align 8, !dbg !747
  %111 = load i32, ptr %bitCount, align 4, !dbg !748
  %and154 = and i32 %111, 7, !dbg !748
  store i32 %and154, ptr %bitCount, align 4, !dbg !748
  br label %if.end165, !dbg !749

if.else155:                                       ; preds = %lor.lhs.false143
  %112 = load ptr, ptr %iend, align 8, !dbg !750
  %add.ptr156 = getelementptr i8, ptr %112, i64 -4, !dbg !752
  %113 = load ptr, ptr %ip, align 8, !dbg !753
  %sub.ptr.lhs.cast157 = ptrtoint ptr %add.ptr156 to i64, !dbg !754
  %sub.ptr.rhs.cast158 = ptrtoint ptr %113 to i64, !dbg !754
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast158, !dbg !754
  %mul160 = mul i64 8, %sub.ptr.sub159, !dbg !755
  %conv161 = trunc i64 %mul160 to i32, !dbg !756
  %114 = load i32, ptr %bitCount, align 4, !dbg !757
  %sub162 = sub i32 %114, %conv161, !dbg !757
  store i32 %sub162, ptr %bitCount, align 4, !dbg !757
  %115 = load i32, ptr %bitCount, align 4, !dbg !758
  %and163 = and i32 %115, 31, !dbg !758
  store i32 %and163, ptr %bitCount, align 4, !dbg !758
  %116 = load ptr, ptr %iend, align 8, !dbg !759
  %add.ptr164 = getelementptr i8, ptr %116, i64 -4, !dbg !760
  store ptr %add.ptr164, ptr %ip, align 8, !dbg !761
  br label %if.end165

if.end165:                                        ; preds = %if.else155, %if.then150
  %117 = load ptr, ptr %ip, align 8, !dbg !762
  %call166 = call i32 @MEM_readLE32(ptr noundef %117) #10, !dbg !763
  %118 = load i32, ptr %bitCount, align 4, !dbg !764
  %shr167 = lshr i32 %call166, %118, !dbg !765
  store i32 %shr167, ptr %bitStream, align 4, !dbg !766
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !767
  br label %cleanup168, !dbg !767

cleanup168:                                       ; preds = %if.end165, %if.then135, %if.then126
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !767
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #11, !dbg !767
  %cleanup.dest170 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest170, label %unreachable [
    i32 0, label %cleanup.cont171
    i32 2, label %for.end
  ]

cleanup.cont171:                                  ; preds = %cleanup168
  br label %for.cond, !dbg !768, !llvm.loop !769

for.end:                                          ; preds = %cleanup168, %cleanup86
  %119 = load i32, ptr %remaining, align 4, !dbg !772
  %cmp172 = icmp ne i32 %119, 1, !dbg !774
  br i1 %cmp172, label %if.then174, label %if.end175, !dbg !775

if.then174:                                       ; preds = %for.end
  store i64 -20, ptr %retval, align 8, !dbg !776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup192, !dbg !776

if.end175:                                        ; preds = %for.end
  %120 = load i32, ptr %charnum, align 4, !dbg !777
  %121 = load i32, ptr %maxSV1, align 4, !dbg !779
  %cmp176 = icmp ugt i32 %120, %121, !dbg !780
  br i1 %cmp176, label %if.then178, label %if.end179, !dbg !781

if.then178:                                       ; preds = %if.end175
  store i64 -48, ptr %retval, align 8, !dbg !782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup192, !dbg !782

if.end179:                                        ; preds = %if.end175
  %122 = load i32, ptr %bitCount, align 4, !dbg !783
  %cmp180 = icmp sgt i32 %122, 32, !dbg !785
  br i1 %cmp180, label %if.then182, label %if.end183, !dbg !786

if.then182:                                       ; preds = %if.end179
  store i64 -20, ptr %retval, align 8, !dbg !787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup192, !dbg !787

if.end183:                                        ; preds = %if.end179
  %123 = load i32, ptr %charnum, align 4, !dbg !788
  %sub184 = sub i32 %123, 1, !dbg !789
  %124 = load ptr, ptr %maxSVPtr.addr, align 8, !dbg !790
  store i32 %sub184, ptr %124, align 4, !dbg !791
  %125 = load i32, ptr %bitCount, align 4, !dbg !792
  %add185 = add i32 %125, 7, !dbg !793
  %shr186 = ashr i32 %add185, 3, !dbg !794
  %126 = load ptr, ptr %ip, align 8, !dbg !795
  %idx.ext187 = sext i32 %shr186 to i64, !dbg !795
  %add.ptr188 = getelementptr i8, ptr %126, i64 %idx.ext187, !dbg !795
  store ptr %add.ptr188, ptr %ip, align 8, !dbg !795
  %127 = load ptr, ptr %ip, align 8, !dbg !796
  %128 = load ptr, ptr %istart, align 8, !dbg !797
  %sub.ptr.lhs.cast189 = ptrtoint ptr %127 to i64, !dbg !798
  %sub.ptr.rhs.cast190 = ptrtoint ptr %128 to i64, !dbg !798
  %sub.ptr.sub191 = sub i64 %sub.ptr.lhs.cast189, %sub.ptr.rhs.cast190, !dbg !798
  store i64 %sub.ptr.sub191, ptr %retval, align 8, !dbg !799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup192, !dbg !799

cleanup192:                                       ; preds = %if.end183, %if.then182, %if.then178, %if.then174, %if.then14, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %previous0) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxSV1) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 4, ptr %charnum) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitCount) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitStream) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 4, ptr %threshold) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 4, ptr %remaining) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbBits) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 8, ptr %iend) #11, !dbg !800
  call void @llvm.lifetime.end.p0(i64 8, ptr %istart) #11, !dbg !800
  %129 = load i64, ptr %retval, align 8, !dbg !800
  ret i64 %129, !dbg !800

unreachable:                                      ; preds = %cleanup168, %cleanup86
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @MEM_readLE32(ptr noundef %memPtr) #8 align 16 !dbg !801 {
entry:
  %memPtr.addr = alloca ptr, align 8
  store ptr %memPtr, ptr %memPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memPtr.addr, metadata !805, metadata !DIExpression()), !dbg !806
  %0 = load ptr, ptr %memPtr.addr, align 8, !dbg !807
  %call = call i32 @get_unaligned_le32(ptr noundef %0) #10, !dbg !808
  ret i32 %call, !dbg !809
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @FSE_ctz(i32 noundef %val) #0 align 16 !dbg !810 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !814, metadata !DIExpression()), !dbg !815
  %0 = load i32, ptr %val.addr, align 4, !dbg !816
  %1 = call i32 @llvm.cttz.i32(i32 %0, i1 true), !dbg !818
  ret i32 %1, !dbg !819
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @BIT_highbit32(i32 noundef %val) #8 align 16 !dbg !820 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !825, metadata !DIExpression()), !dbg !826
  %0 = load i32, ptr %val.addr, align 4, !dbg !827
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !829
  %xor = xor i32 %1, 31, !dbg !830
  ret i32 %xor, !dbg !831
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_unaligned_le32(ptr noundef %p) #8 align 16 !dbg !67 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !73, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #11, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !74, metadata !DIExpression()), !dbg !833
  %0 = load ptr, ptr %p.addr, align 8, !dbg !833
  store ptr %0, ptr %__pptr, align 8, !dbg !833
  %1 = load ptr, ptr %__pptr, align 8, !dbg !833
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !833
  %2 = load i32, ptr %x, align 1, !dbg !833
  store i32 %2, ptr %tmp, align 4, !dbg !833
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #11, !dbg !834
  %3 = load i32, ptr %tmp, align 4, !dbg !833
  ret i32 %3, !dbg !835
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @HUF_readStats_body(ptr noundef %huffWeight, i64 noundef %hwSize, ptr noundef %rankStats, ptr noundef %nbSymbolsPtr, ptr noundef %tableLogPtr, ptr noundef %src, i64 noundef %srcSize, ptr noundef %workSpace, i64 noundef %wkspSize, i32 noundef %bmi2) #5 align 16 !dbg !836 {
entry:
  %retval = alloca i64, align 8
  %huffWeight.addr = alloca ptr, align 8
  %hwSize.addr = alloca i64, align 8
  %rankStats.addr = alloca ptr, align 8
  %nbSymbolsPtr.addr = alloca ptr, align 8
  %tableLogPtr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %srcSize.addr = alloca i64, align 8
  %workSpace.addr = alloca ptr, align 8
  %wkspSize.addr = alloca i64, align 8
  %bmi2.addr = alloca i32, align 4
  %weightTotal = alloca i32, align 4
  %ip = alloca ptr, align 8
  %iSize = alloca i64, align 8
  %oSize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca i32, align 4
  %n42 = alloca i32, align 4
  %tableLog = alloca i32, align 4
  %total = alloca i32, align 4
  %rest = alloca i32, align 4
  %verif = alloca i32, align 4
  %lastWeight = alloca i32, align 4
  store ptr %huffWeight, ptr %huffWeight.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %huffWeight.addr, metadata !838, metadata !DIExpression()), !dbg !866
  store i64 %hwSize, ptr %hwSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hwSize.addr, metadata !839, metadata !DIExpression()), !dbg !867
  store ptr %rankStats, ptr %rankStats.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rankStats.addr, metadata !840, metadata !DIExpression()), !dbg !868
  store ptr %nbSymbolsPtr, ptr %nbSymbolsPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nbSymbolsPtr.addr, metadata !841, metadata !DIExpression()), !dbg !869
  store ptr %tableLogPtr, ptr %tableLogPtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tableLogPtr.addr, metadata !842, metadata !DIExpression()), !dbg !870
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !843, metadata !DIExpression()), !dbg !871
  store i64 %srcSize, ptr %srcSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcSize.addr, metadata !844, metadata !DIExpression()), !dbg !872
  store ptr %workSpace, ptr %workSpace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %workSpace.addr, metadata !845, metadata !DIExpression()), !dbg !873
  store i64 %wkspSize, ptr %wkspSize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wkspSize.addr, metadata !846, metadata !DIExpression()), !dbg !874
  store i32 %bmi2, ptr %bmi2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bmi2.addr, metadata !847, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 4, ptr %weightTotal) #11, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %weightTotal, metadata !848, metadata !DIExpression()), !dbg !877
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #11, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !849, metadata !DIExpression()), !dbg !879
  %0 = load ptr, ptr %src.addr, align 8, !dbg !880
  store ptr %0, ptr %ip, align 8, !dbg !879
  call void @llvm.lifetime.start.p0(i64 8, ptr %iSize) #11, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %iSize, metadata !850, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 8, ptr %oSize) #11, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %oSize, metadata !851, metadata !DIExpression()), !dbg !884
  %1 = load i64, ptr %srcSize.addr, align 8, !dbg !885
  %tobool = icmp ne i64 %1, 0, !dbg !885
  br i1 %tobool, label %if.end, label %if.then, !dbg !887

if.then:                                          ; preds = %entry
  store i64 -72, ptr %retval, align 8, !dbg !888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !888

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ip, align 8, !dbg !889
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !889
  %3 = load i8, ptr %arrayidx, align 1, !dbg !889
  %conv = zext i8 %3 to i64, !dbg !889
  store i64 %conv, ptr %iSize, align 8, !dbg !890
  %4 = load i64, ptr %iSize, align 8, !dbg !891
  %cmp = icmp uge i64 %4, 128, !dbg !892
  br i1 %cmp, label %if.then2, label %if.else, !dbg !893

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %iSize, align 8, !dbg !894
  %sub = sub i64 %5, 127, !dbg !895
  store i64 %sub, ptr %oSize, align 8, !dbg !896
  %6 = load i64, ptr %oSize, align 8, !dbg !897
  %add = add i64 %6, 1, !dbg !898
  %div = udiv i64 %add, 2, !dbg !899
  store i64 %div, ptr %iSize, align 8, !dbg !900
  %7 = load i64, ptr %iSize, align 8, !dbg !901
  %add3 = add i64 %7, 1, !dbg !903
  %8 = load i64, ptr %srcSize.addr, align 8, !dbg !904
  %cmp4 = icmp ugt i64 %add3, %8, !dbg !905
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !906

if.then6:                                         ; preds = %if.then2
  store i64 -72, ptr %retval, align 8, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !907

if.end7:                                          ; preds = %if.then2
  %9 = load i64, ptr %oSize, align 8, !dbg !908
  %10 = load i64, ptr %hwSize.addr, align 8, !dbg !910
  %cmp8 = icmp uge i64 %9, %10, !dbg !911
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !912

if.then10:                                        ; preds = %if.end7
  store i64 -20, ptr %retval, align 8, !dbg !913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !913

if.end11:                                         ; preds = %if.end7
  %11 = load ptr, ptr %ip, align 8, !dbg !914
  %add.ptr = getelementptr i8, ptr %11, i64 1, !dbg !914
  store ptr %add.ptr, ptr %ip, align 8, !dbg !914
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #11, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %n, metadata !852, metadata !DIExpression()), !dbg !916
  store i32 0, ptr %n, align 4, !dbg !917
  br label %for.cond, !dbg !919

for.cond:                                         ; preds = %for.inc, %if.end11
  %12 = load i32, ptr %n, align 4, !dbg !920
  %conv12 = zext i32 %12 to i64, !dbg !920
  %13 = load i64, ptr %oSize, align 8, !dbg !922
  %cmp13 = icmp ult i64 %conv12, %13, !dbg !923
  br i1 %cmp13, label %for.body, label %for.end, !dbg !924

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %ip, align 8, !dbg !925
  %15 = load i32, ptr %n, align 4, !dbg !927
  %div15 = udiv i32 %15, 2, !dbg !928
  %idxprom = zext i32 %div15 to i64, !dbg !925
  %arrayidx16 = getelementptr i8, ptr %14, i64 %idxprom, !dbg !925
  %16 = load i8, ptr %arrayidx16, align 1, !dbg !925
  %conv17 = zext i8 %16 to i32, !dbg !925
  %shr = ashr i32 %conv17, 4, !dbg !929
  %conv18 = trunc i32 %shr to i8, !dbg !925
  %17 = load ptr, ptr %huffWeight.addr, align 8, !dbg !930
  %18 = load i32, ptr %n, align 4, !dbg !931
  %idxprom19 = zext i32 %18 to i64, !dbg !930
  %arrayidx20 = getelementptr i8, ptr %17, i64 %idxprom19, !dbg !930
  store i8 %conv18, ptr %arrayidx20, align 1, !dbg !932
  %19 = load ptr, ptr %ip, align 8, !dbg !933
  %20 = load i32, ptr %n, align 4, !dbg !934
  %div21 = udiv i32 %20, 2, !dbg !935
  %idxprom22 = zext i32 %div21 to i64, !dbg !933
  %arrayidx23 = getelementptr i8, ptr %19, i64 %idxprom22, !dbg !933
  %21 = load i8, ptr %arrayidx23, align 1, !dbg !933
  %conv24 = zext i8 %21 to i32, !dbg !933
  %and = and i32 %conv24, 15, !dbg !936
  %conv25 = trunc i32 %and to i8, !dbg !933
  %22 = load ptr, ptr %huffWeight.addr, align 8, !dbg !937
  %23 = load i32, ptr %n, align 4, !dbg !938
  %add26 = add i32 %23, 1, !dbg !939
  %idxprom27 = zext i32 %add26 to i64, !dbg !937
  %arrayidx28 = getelementptr i8, ptr %22, i64 %idxprom27, !dbg !937
  store i8 %conv25, ptr %arrayidx28, align 1, !dbg !940
  br label %for.inc, !dbg !941

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %n, align 4, !dbg !942
  %add29 = add i32 %24, 2, !dbg !942
  store i32 %add29, ptr %n, align 4, !dbg !942
  br label %for.cond, !dbg !943, !llvm.loop !944

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #11, !dbg !946
  br label %if.end41, !dbg !947

if.else:                                          ; preds = %if.end
  %25 = load i64, ptr %iSize, align 8, !dbg !948
  %add30 = add i64 %25, 1, !dbg !951
  %26 = load i64, ptr %srcSize.addr, align 8, !dbg !952
  %cmp31 = icmp ugt i64 %add30, %26, !dbg !953
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !954

if.then33:                                        ; preds = %if.else
  store i64 -72, ptr %retval, align 8, !dbg !955
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !955

if.end34:                                         ; preds = %if.else
  %27 = load ptr, ptr %huffWeight.addr, align 8, !dbg !956
  %28 = load i64, ptr %hwSize.addr, align 8, !dbg !957
  %sub35 = sub i64 %28, 1, !dbg !958
  %29 = load ptr, ptr %ip, align 8, !dbg !959
  %add.ptr36 = getelementptr i8, ptr %29, i64 1, !dbg !960
  %30 = load i64, ptr %iSize, align 8, !dbg !961
  %31 = load ptr, ptr %workSpace.addr, align 8, !dbg !962
  %32 = load i64, ptr %wkspSize.addr, align 8, !dbg !963
  %33 = load i32, ptr %bmi2.addr, align 4, !dbg !964
  %call = call i64 @FSE_decompress_wksp_bmi2(ptr noundef %27, i64 noundef %sub35, ptr noundef %add.ptr36, i64 noundef %30, i32 noundef 6, ptr noundef %31, i64 noundef %32, i32 noundef %33) #10, !dbg !965
  store i64 %call, ptr %oSize, align 8, !dbg !966
  %34 = load i64, ptr %oSize, align 8, !dbg !967
  %call37 = call i32 @FSE_isError(i64 noundef %34) #10, !dbg !969
  %tobool38 = icmp ne i32 %call37, 0, !dbg !969
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !970

if.then39:                                        ; preds = %if.end34
  %35 = load i64, ptr %oSize, align 8, !dbg !971
  store i64 %35, ptr %retval, align 8, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !972

if.end40:                                         ; preds = %if.end34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %for.end
  %36 = load ptr, ptr %rankStats.addr, align 8, !dbg !973
  call void @llvm.memset.p0.i64(ptr align 4 %36, i8 0, i64 52, i1 false), !dbg !973
  store i32 0, ptr %weightTotal, align 4, !dbg !974
  call void @llvm.lifetime.start.p0(i64 4, ptr %n42) #11, !dbg !975
  call void @llvm.dbg.declare(metadata ptr %n42, metadata !856, metadata !DIExpression()), !dbg !976
  store i32 0, ptr %n42, align 4, !dbg !977
  br label %for.cond43, !dbg !979

for.cond43:                                       ; preds = %for.inc64, %if.end41
  %37 = load i32, ptr %n42, align 4, !dbg !980
  %conv44 = zext i32 %37 to i64, !dbg !980
  %38 = load i64, ptr %oSize, align 8, !dbg !982
  %cmp45 = icmp ult i64 %conv44, %38, !dbg !983
  br i1 %cmp45, label %for.body47, label %for.end66, !dbg !984

for.body47:                                       ; preds = %for.cond43
  %39 = load ptr, ptr %huffWeight.addr, align 8, !dbg !985
  %40 = load i32, ptr %n42, align 4, !dbg !988
  %idxprom48 = zext i32 %40 to i64, !dbg !985
  %arrayidx49 = getelementptr i8, ptr %39, i64 %idxprom48, !dbg !985
  %41 = load i8, ptr %arrayidx49, align 1, !dbg !985
  %conv50 = zext i8 %41 to i32, !dbg !985
  %cmp51 = icmp sgt i32 %conv50, 12, !dbg !989
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !990

if.then53:                                        ; preds = %for.body47
  store i64 -20, ptr %retval, align 8, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

if.end54:                                         ; preds = %for.body47
  %42 = load ptr, ptr %rankStats.addr, align 8, !dbg !992
  %43 = load ptr, ptr %huffWeight.addr, align 8, !dbg !993
  %44 = load i32, ptr %n42, align 4, !dbg !994
  %idxprom55 = zext i32 %44 to i64, !dbg !993
  %arrayidx56 = getelementptr i8, ptr %43, i64 %idxprom55, !dbg !993
  %45 = load i8, ptr %arrayidx56, align 1, !dbg !993
  %idxprom57 = zext i8 %45 to i64, !dbg !992
  %arrayidx58 = getelementptr i32, ptr %42, i64 %idxprom57, !dbg !992
  %46 = load i32, ptr %arrayidx58, align 4, !dbg !995
  %inc = add i32 %46, 1, !dbg !995
  store i32 %inc, ptr %arrayidx58, align 4, !dbg !995
  %47 = load ptr, ptr %huffWeight.addr, align 8, !dbg !996
  %48 = load i32, ptr %n42, align 4, !dbg !997
  %idxprom59 = zext i32 %48 to i64, !dbg !996
  %arrayidx60 = getelementptr i8, ptr %47, i64 %idxprom59, !dbg !996
  %49 = load i8, ptr %arrayidx60, align 1, !dbg !996
  %conv61 = zext i8 %49 to i32, !dbg !996
  %shl = shl i32 1, %conv61, !dbg !998
  %shr62 = ashr i32 %shl, 1, !dbg !999
  %50 = load i32, ptr %weightTotal, align 4, !dbg !1000
  %add63 = add i32 %50, %shr62, !dbg !1000
  store i32 %add63, ptr %weightTotal, align 4, !dbg !1000
  br label %for.inc64, !dbg !1001

for.inc64:                                        ; preds = %if.end54
  %51 = load i32, ptr %n42, align 4, !dbg !1002
  %inc65 = add i32 %51, 1, !dbg !1002
  store i32 %inc65, ptr %n42, align 4, !dbg !1002
  br label %for.cond43, !dbg !1003, !llvm.loop !1004

for.end66:                                        ; preds = %for.cond43
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1006
  br label %cleanup, !dbg !1006

cleanup:                                          ; preds = %for.end66, %if.then53
  call void @llvm.lifetime.end.p0(i64 4, ptr %n42) #11, !dbg !1006
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup112 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %52 = load i32, ptr %weightTotal, align 4, !dbg !1007
  %cmp67 = icmp eq i32 %52, 0, !dbg !1009
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !1010

if.then69:                                        ; preds = %cleanup.cont
  store i64 -20, ptr %retval, align 8, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !1011

if.end70:                                         ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 4, ptr %tableLog) #11, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %tableLog, metadata !858, metadata !DIExpression()), !dbg !1013
  %53 = load i32, ptr %weightTotal, align 4, !dbg !1014
  %call71 = call i32 @BIT_highbit32(i32 noundef %53) #10, !dbg !1015
  %add72 = add i32 %call71, 1, !dbg !1016
  store i32 %add72, ptr %tableLog, align 4, !dbg !1013
  %54 = load i32, ptr %tableLog, align 4, !dbg !1017
  %cmp73 = icmp ugt i32 %54, 12, !dbg !1019
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !1020

if.then75:                                        ; preds = %if.end70
  store i64 -20, ptr %retval, align 8, !dbg !1021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup98, !dbg !1021

if.end76:                                         ; preds = %if.end70
  %55 = load i32, ptr %tableLog, align 4, !dbg !1022
  %56 = load ptr, ptr %tableLogPtr.addr, align 8, !dbg !1023
  store i32 %55, ptr %56, align 4, !dbg !1024
  call void @llvm.lifetime.start.p0(i64 4, ptr %total) #11, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %total, metadata !861, metadata !DIExpression()), !dbg !1026
  %57 = load i32, ptr %tableLog, align 4, !dbg !1027
  %shl77 = shl i32 1, %57, !dbg !1028
  store i32 %shl77, ptr %total, align 4, !dbg !1026
  call void @llvm.lifetime.start.p0(i64 4, ptr %rest) #11, !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %rest, metadata !863, metadata !DIExpression()), !dbg !1030
  %58 = load i32, ptr %total, align 4, !dbg !1031
  %59 = load i32, ptr %weightTotal, align 4, !dbg !1032
  %sub78 = sub i32 %58, %59, !dbg !1033
  store i32 %sub78, ptr %rest, align 4, !dbg !1030
  call void @llvm.lifetime.start.p0(i64 4, ptr %verif) #11, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %verif, metadata !864, metadata !DIExpression()), !dbg !1035
  %60 = load i32, ptr %rest, align 4, !dbg !1036
  %call79 = call i32 @BIT_highbit32(i32 noundef %60) #10, !dbg !1037
  %shl80 = shl i32 1, %call79, !dbg !1038
  store i32 %shl80, ptr %verif, align 4, !dbg !1035
  call void @llvm.lifetime.start.p0(i64 4, ptr %lastWeight) #11, !dbg !1039
  call void @llvm.dbg.declare(metadata ptr %lastWeight, metadata !865, metadata !DIExpression()), !dbg !1040
  %61 = load i32, ptr %rest, align 4, !dbg !1041
  %call81 = call i32 @BIT_highbit32(i32 noundef %61) #10, !dbg !1042
  %add82 = add i32 %call81, 1, !dbg !1043
  store i32 %add82, ptr %lastWeight, align 4, !dbg !1040
  %62 = load i32, ptr %verif, align 4, !dbg !1044
  %63 = load i32, ptr %rest, align 4, !dbg !1046
  %cmp83 = icmp ne i32 %62, %63, !dbg !1047
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !1048

if.then85:                                        ; preds = %if.end76
  store i64 -20, ptr %retval, align 8, !dbg !1049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !1049

if.end86:                                         ; preds = %if.end76
  %64 = load i32, ptr %lastWeight, align 4, !dbg !1050
  %conv87 = trunc i32 %64 to i8, !dbg !1051
  %65 = load ptr, ptr %huffWeight.addr, align 8, !dbg !1052
  %66 = load i64, ptr %oSize, align 8, !dbg !1053
  %arrayidx88 = getelementptr i8, ptr %65, i64 %66, !dbg !1052
  store i8 %conv87, ptr %arrayidx88, align 1, !dbg !1054
  %67 = load ptr, ptr %rankStats.addr, align 8, !dbg !1055
  %68 = load i32, ptr %lastWeight, align 4, !dbg !1056
  %idxprom89 = zext i32 %68 to i64, !dbg !1055
  %arrayidx90 = getelementptr i32, ptr %67, i64 %idxprom89, !dbg !1055
  %69 = load i32, ptr %arrayidx90, align 4, !dbg !1057
  %inc91 = add i32 %69, 1, !dbg !1057
  store i32 %inc91, ptr %arrayidx90, align 4, !dbg !1057
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1058
  br label %cleanup92, !dbg !1058

cleanup92:                                        ; preds = %if.end86, %if.then85
  call void @llvm.lifetime.end.p0(i64 4, ptr %lastWeight) #11, !dbg !1058
  call void @llvm.lifetime.end.p0(i64 4, ptr %verif) #11, !dbg !1058
  call void @llvm.lifetime.end.p0(i64 4, ptr %rest) #11, !dbg !1058
  call void @llvm.lifetime.end.p0(i64 4, ptr %total) #11, !dbg !1058
  %cleanup.dest96 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest96, label %cleanup98 [
    i32 0, label %cleanup.cont97
  ]

cleanup.cont97:                                   ; preds = %cleanup92
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1059
  br label %cleanup98, !dbg !1059

cleanup98:                                        ; preds = %cleanup.cont97, %cleanup92, %if.then75
  call void @llvm.lifetime.end.p0(i64 4, ptr %tableLog) #11, !dbg !1059
  %cleanup.dest99 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest99, label %cleanup112 [
    i32 0, label %cleanup.cont100
  ]

cleanup.cont100:                                  ; preds = %cleanup98
  %70 = load ptr, ptr %rankStats.addr, align 8, !dbg !1060
  %arrayidx101 = getelementptr i32, ptr %70, i64 1, !dbg !1060
  %71 = load i32, ptr %arrayidx101, align 4, !dbg !1060
  %cmp102 = icmp ult i32 %71, 2, !dbg !1062
  br i1 %cmp102, label %if.then107, label %lor.lhs.false, !dbg !1063

lor.lhs.false:                                    ; preds = %cleanup.cont100
  %72 = load ptr, ptr %rankStats.addr, align 8, !dbg !1064
  %arrayidx104 = getelementptr i32, ptr %72, i64 1, !dbg !1064
  %73 = load i32, ptr %arrayidx104, align 4, !dbg !1064
  %and105 = and i32 %73, 1, !dbg !1065
  %tobool106 = icmp ne i32 %and105, 0, !dbg !1065
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !1066

if.then107:                                       ; preds = %lor.lhs.false, %cleanup.cont100
  store i64 -20, ptr %retval, align 8, !dbg !1067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !1067

if.end108:                                        ; preds = %lor.lhs.false
  %74 = load i64, ptr %oSize, align 8, !dbg !1068
  %add109 = add i64 %74, 1, !dbg !1069
  %conv110 = trunc i64 %add109 to i32, !dbg !1070
  %75 = load ptr, ptr %nbSymbolsPtr.addr, align 8, !dbg !1071
  store i32 %conv110, ptr %75, align 4, !dbg !1072
  %76 = load i64, ptr %iSize, align 8, !dbg !1073
  %add111 = add i64 %76, 1, !dbg !1074
  store i64 %add111, ptr %retval, align 8, !dbg !1075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup112, !dbg !1075

cleanup112:                                       ; preds = %if.end108, %if.then107, %cleanup98, %if.then69, %cleanup, %if.then39, %if.then33, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %oSize) #11, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 8, ptr %iSize) #11, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #11, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 4, ptr %weightTotal) #11, !dbg !1076
  %77 = load i64, ptr %retval, align 8, !dbg !1076
  ret i64 %77, !dbg !1076
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1077 dso_local i64 @FSE_decompress_wksp_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/zstd/common/.entropy_common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/zstd/zstd_common\22 -D KBUILD_BASENAME=\22entropy_common\22 -D KBUILD_MODNAME=\22zstd_common\22 -D __KBUILD_MODNAME=kmod_zstd_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/zstd/common/entropy_common.ll lib/zstd/common/entropy_common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/zstd/common/entropy_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd405c3b4150fc5589e798e685145802")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/zstd_errors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b65e56a0777f4855c2ba6522d04d0e69")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!7 = !DIEnumerator(name: "ZSTD_error_no_error", value: 0)
!8 = !DIEnumerator(name: "ZSTD_error_GENERIC", value: 1)
!9 = !DIEnumerator(name: "ZSTD_error_prefix_unknown", value: 10)
!10 = !DIEnumerator(name: "ZSTD_error_version_unsupported", value: 12)
!11 = !DIEnumerator(name: "ZSTD_error_frameParameter_unsupported", value: 14)
!12 = !DIEnumerator(name: "ZSTD_error_frameParameter_windowTooLarge", value: 16)
!13 = !DIEnumerator(name: "ZSTD_error_corruption_detected", value: 20)
!14 = !DIEnumerator(name: "ZSTD_error_checksum_wrong", value: 22)
!15 = !DIEnumerator(name: "ZSTD_error_dictionary_corrupted", value: 30)
!16 = !DIEnumerator(name: "ZSTD_error_dictionary_wrong", value: 32)
!17 = !DIEnumerator(name: "ZSTD_error_dictionaryCreation_failed", value: 34)
!18 = !DIEnumerator(name: "ZSTD_error_parameter_unsupported", value: 40)
!19 = !DIEnumerator(name: "ZSTD_error_parameter_outOfBound", value: 42)
!20 = !DIEnumerator(name: "ZSTD_error_tableLog_tooLarge", value: 44)
!21 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooLarge", value: 46)
!22 = !DIEnumerator(name: "ZSTD_error_maxSymbolValue_tooSmall", value: 48)
!23 = !DIEnumerator(name: "ZSTD_error_stage_wrong", value: 60)
!24 = !DIEnumerator(name: "ZSTD_error_init_missing", value: 62)
!25 = !DIEnumerator(name: "ZSTD_error_memory_allocation", value: 64)
!26 = !DIEnumerator(name: "ZSTD_error_workSpace_tooSmall", value: 66)
!27 = !DIEnumerator(name: "ZSTD_error_dstSize_tooSmall", value: 70)
!28 = !DIEnumerator(name: "ZSTD_error_srcSize_wrong", value: 72)
!29 = !DIEnumerator(name: "ZSTD_error_dstBuffer_null", value: 74)
!30 = !DIEnumerator(name: "ZSTD_error_frameIndex_tooLarge", value: 100)
!31 = !DIEnumerator(name: "ZSTD_error_seekableIO", value: 102)
!32 = !DIEnumerator(name: "ZSTD_error_dstBuffer_wrong", value: 104)
!33 = !DIEnumerator(name: "ZSTD_error_srcBuffer_wrong", value: 105)
!34 = !DIEnumerator(name: "ZSTD_error_maxCode", value: 120)
!35 = !{!36, !42, !45, !55, !56, !60, !59, !61, !63, !47}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !39, line: 72, baseType: !40)
!39 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !39, line: 16, baseType: !41)
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ERR_enum", file: !43, line: 36, baseType: !44)
!43 = !DIFile(filename: "lib/zstd/common/error_private.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c1e76caf533df7af314a25a57fa92da")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZSTD_ErrorCode", file: !4, line: 67, baseType: !3)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !48, line: 32, baseType: !49)
!48 = !DIFile(filename: "lib/zstd/common/mem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ecad453ab26990e649f823cad6e0e9a6")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !37, line: 108, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !51, line: 17, baseType: !52)
!51 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !53, line: 21, baseType: !54)
!53 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!54 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !48, line: 37, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !37, line: 110, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !51, line: 21, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !53, line: 27, baseType: !5)
!60 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !62, line: 38, baseType: !59)
!62 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !66, line: 32, size: 32, elements: !76)
!66 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!67 = distinct !DISubprogram(name: "get_unaligned_le32", scope: !66, file: !66, line: 30, type: !68, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!68 = !DISubroutineType(types: !69)
!69 = !{!58, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!72 = !{!73, !74}
!73 = !DILocalVariable(name: "p", arg: 1, scope: !67, file: !66, line: 30, type: !70)
!74 = !DILocalVariable(name: "__pptr", scope: !75, file: !66, line: 32, type: !63)
!75 = distinct !DILexicalBlock(scope: !67, file: !66, line: 32, column: 9)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !65, file: !66, line: 32, baseType: !61, size: 32)
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 8, !"cf-protection-branch", i32 1}
!82 = !{i32 4, !"function_return_thunk_extern", i32 1}
!83 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!84 = !{i32 1, !"Code Model", i32 2}
!85 = !{i32 1, !"override-stack-alignment", i32 8}
!86 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!87 = distinct !DISubprogram(name: "FSE_versionNumber", scope: !1, file: !1, line: 27, type: !88, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!88 = !DISubroutineType(types: !89)
!89 = !{!5}
!90 = !DILocation(line: 27, column: 36, scope: !87)
!91 = distinct !DISubprogram(name: "FSE_isError", scope: !1, file: !1, line: 31, type: !92, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{!5, !36}
!94 = !{!95}
!95 = !DILocalVariable(name: "code", arg: 1, scope: !91, file: !1, line: 31, type: !36)
!96 = !DILocation(line: 31, column: 29, scope: !91)
!97 = !DILocation(line: 31, column: 56, scope: !91)
!98 = !DILocation(line: 31, column: 44, scope: !91)
!99 = !DILocation(line: 31, column: 37, scope: !91)
!100 = distinct !DISubprogram(name: "ERR_isError", scope: !43, file: !43, line: 47, type: !92, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!101 = !{!102}
!102 = !DILocalVariable(name: "code", arg: 1, scope: !100, file: !43, line: 47, type: !36)
!103 = !DILocation(line: 47, column: 40, scope: !100)
!104 = !DILocation(line: 47, column: 56, scope: !100)
!105 = !DILocation(line: 47, column: 61, scope: !100)
!106 = !DILocation(line: 47, column: 48, scope: !100)
!107 = distinct !DISubprogram(name: "FSE_getErrorName", scope: !1, file: !1, line: 32, type: !108, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !36}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !{!114}
!114 = !DILocalVariable(name: "code", arg: 1, scope: !107, file: !1, line: 32, type: !36)
!115 = !DILocation(line: 32, column: 37, scope: !107)
!116 = !DILocation(line: 32, column: 69, scope: !107)
!117 = !DILocation(line: 32, column: 52, scope: !107)
!118 = !DILocation(line: 32, column: 45, scope: !107)
!119 = distinct !DISubprogram(name: "ERR_getErrorName", scope: !43, file: !43, line: 62, type: !108, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!120 = !{!121}
!121 = !DILocalVariable(name: "code", arg: 1, scope: !119, file: !43, line: 62, type: !36)
!122 = !DILocation(line: 62, column: 48, scope: !119)
!123 = !DILocation(line: 64, column: 48, scope: !119)
!124 = !DILocation(line: 64, column: 31, scope: !119)
!125 = !DILocation(line: 64, column: 12, scope: !119)
!126 = !DILocation(line: 64, column: 5, scope: !119)
!127 = distinct !DISubprogram(name: "HUF_isError", scope: !1, file: !1, line: 34, type: !92, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!128 = !{!129}
!129 = !DILocalVariable(name: "code", arg: 1, scope: !127, file: !1, line: 34, type: !36)
!130 = !DILocation(line: 34, column: 29, scope: !127)
!131 = !DILocation(line: 34, column: 56, scope: !127)
!132 = !DILocation(line: 34, column: 44, scope: !127)
!133 = !DILocation(line: 34, column: 37, scope: !127)
!134 = distinct !DISubprogram(name: "HUF_getErrorName", scope: !1, file: !1, line: 35, type: !108, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!135 = !{!136}
!136 = !DILocalVariable(name: "code", arg: 1, scope: !134, file: !1, line: 35, type: !36)
!137 = !DILocation(line: 35, column: 37, scope: !134)
!138 = !DILocation(line: 35, column: 69, scope: !134)
!139 = !DILocation(line: 35, column: 52, scope: !134)
!140 = !DILocation(line: 35, column: 45, scope: !134)
!141 = distinct !DISubprogram(name: "FSE_readNCount_bmi2", scope: !1, file: !1, line: 223, type: !142, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!142 = !DISubroutineType(types: !143)
!143 = !{!36, !144, !145, !145, !70, !36, !55}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!146 = !{!147, !148, !149, !150, !151, !152}
!147 = !DILocalVariable(name: "normalizedCounter", arg: 1, scope: !141, file: !1, line: 224, type: !144)
!148 = !DILocalVariable(name: "maxSVPtr", arg: 2, scope: !141, file: !1, line: 224, type: !145)
!149 = !DILocalVariable(name: "tableLogPtr", arg: 3, scope: !141, file: !1, line: 224, type: !145)
!150 = !DILocalVariable(name: "headerBuffer", arg: 4, scope: !141, file: !1, line: 225, type: !70)
!151 = !DILocalVariable(name: "hbSize", arg: 5, scope: !141, file: !1, line: 225, type: !36)
!152 = !DILocalVariable(name: "bmi2", arg: 6, scope: !141, file: !1, line: 225, type: !55)
!153 = !DILocation(line: 224, column: 16, scope: !141)
!154 = !DILocation(line: 224, column: 45, scope: !141)
!155 = !DILocation(line: 224, column: 65, scope: !141)
!156 = !DILocation(line: 225, column: 21, scope: !141)
!157 = !DILocation(line: 225, column: 42, scope: !141)
!158 = !DILocation(line: 225, column: 54, scope: !141)
!159 = !DILocation(line: 228, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !141, file: !1, line: 228, column: 9)
!161 = !DILocation(line: 228, column: 9, scope: !141)
!162 = !DILocation(line: 229, column: 41, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !1, line: 228, column: 15)
!164 = !DILocation(line: 229, column: 60, scope: !163)
!165 = !DILocation(line: 229, column: 70, scope: !163)
!166 = !DILocation(line: 229, column: 83, scope: !163)
!167 = !DILocation(line: 229, column: 97, scope: !163)
!168 = !DILocation(line: 229, column: 16, scope: !163)
!169 = !DILocation(line: 229, column: 9, scope: !163)
!170 = !DILocation(line: 232, column: 11, scope: !141)
!171 = !DILocation(line: 233, column: 40, scope: !141)
!172 = !DILocation(line: 233, column: 59, scope: !141)
!173 = !DILocation(line: 233, column: 69, scope: !141)
!174 = !DILocation(line: 233, column: 82, scope: !141)
!175 = !DILocation(line: 233, column: 96, scope: !141)
!176 = !DILocation(line: 233, column: 12, scope: !141)
!177 = !DILocation(line: 233, column: 5, scope: !141)
!178 = !DILocation(line: 234, column: 1, scope: !141)
!179 = distinct !DISubprogram(name: "FSE_readNCount_body_bmi2", scope: !1, file: !1, line: 215, type: !180, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!36, !144, !145, !145, !70, !36}
!182 = !{!183, !184, !185, !186, !187}
!183 = !DILocalVariable(name: "normalizedCounter", arg: 1, scope: !179, file: !1, line: 216, type: !144)
!184 = !DILocalVariable(name: "maxSVPtr", arg: 2, scope: !179, file: !1, line: 216, type: !145)
!185 = !DILocalVariable(name: "tableLogPtr", arg: 3, scope: !179, file: !1, line: 216, type: !145)
!186 = !DILocalVariable(name: "headerBuffer", arg: 4, scope: !179, file: !1, line: 217, type: !70)
!187 = !DILocalVariable(name: "hbSize", arg: 5, scope: !179, file: !1, line: 217, type: !36)
!188 = !DILocation(line: 216, column: 16, scope: !179)
!189 = !DILocation(line: 216, column: 45, scope: !179)
!190 = !DILocation(line: 216, column: 65, scope: !179)
!191 = !DILocation(line: 217, column: 21, scope: !179)
!192 = !DILocation(line: 217, column: 42, scope: !179)
!193 = !DILocation(line: 219, column: 32, scope: !179)
!194 = !DILocation(line: 219, column: 51, scope: !179)
!195 = !DILocation(line: 219, column: 61, scope: !179)
!196 = !DILocation(line: 219, column: 74, scope: !179)
!197 = !DILocation(line: 219, column: 88, scope: !179)
!198 = !DILocation(line: 219, column: 12, scope: !179)
!199 = !DILocation(line: 219, column: 5, scope: !179)
!200 = distinct !DISubprogram(name: "FSE_readNCount_body_default", scope: !1, file: !1, line: 207, type: !180, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !201)
!201 = !{!202, !203, !204, !205, !206}
!202 = !DILocalVariable(name: "normalizedCounter", arg: 1, scope: !200, file: !1, line: 208, type: !144)
!203 = !DILocalVariable(name: "maxSVPtr", arg: 2, scope: !200, file: !1, line: 208, type: !145)
!204 = !DILocalVariable(name: "tableLogPtr", arg: 3, scope: !200, file: !1, line: 208, type: !145)
!205 = !DILocalVariable(name: "headerBuffer", arg: 4, scope: !200, file: !1, line: 209, type: !70)
!206 = !DILocalVariable(name: "hbSize", arg: 5, scope: !200, file: !1, line: 209, type: !36)
!207 = !DILocation(line: 208, column: 16, scope: !200)
!208 = !DILocation(line: 208, column: 45, scope: !200)
!209 = !DILocation(line: 208, column: 65, scope: !200)
!210 = !DILocation(line: 209, column: 21, scope: !200)
!211 = !DILocation(line: 209, column: 42, scope: !200)
!212 = !DILocation(line: 211, column: 32, scope: !200)
!213 = !DILocation(line: 211, column: 51, scope: !200)
!214 = !DILocation(line: 211, column: 61, scope: !200)
!215 = !DILocation(line: 211, column: 74, scope: !200)
!216 = !DILocation(line: 211, column: 88, scope: !200)
!217 = !DILocation(line: 211, column: 12, scope: !200)
!218 = !DILocation(line: 211, column: 5, scope: !200)
!219 = distinct !DISubprogram(name: "FSE_readNCount", scope: !1, file: !1, line: 236, type: !180, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !220)
!220 = !{!221, !222, !223, !224, !225}
!221 = !DILocalVariable(name: "normalizedCounter", arg: 1, scope: !219, file: !1, line: 237, type: !144)
!222 = !DILocalVariable(name: "maxSVPtr", arg: 2, scope: !219, file: !1, line: 237, type: !145)
!223 = !DILocalVariable(name: "tableLogPtr", arg: 3, scope: !219, file: !1, line: 237, type: !145)
!224 = !DILocalVariable(name: "headerBuffer", arg: 4, scope: !219, file: !1, line: 238, type: !70)
!225 = !DILocalVariable(name: "hbSize", arg: 5, scope: !219, file: !1, line: 238, type: !36)
!226 = !DILocation(line: 237, column: 16, scope: !219)
!227 = !DILocation(line: 237, column: 45, scope: !219)
!228 = !DILocation(line: 237, column: 65, scope: !219)
!229 = !DILocation(line: 238, column: 21, scope: !219)
!230 = !DILocation(line: 238, column: 42, scope: !219)
!231 = !DILocation(line: 240, column: 32, scope: !219)
!232 = !DILocation(line: 240, column: 51, scope: !219)
!233 = !DILocation(line: 240, column: 61, scope: !219)
!234 = !DILocation(line: 240, column: 74, scope: !219)
!235 = !DILocation(line: 240, column: 88, scope: !219)
!236 = !DILocation(line: 240, column: 12, scope: !219)
!237 = !DILocation(line: 240, column: 5, scope: !219)
!238 = distinct !DISubprogram(name: "HUF_readStats", scope: !1, file: !1, line: 251, type: !239, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!239 = !DISubroutineType(types: !240)
!240 = !{!36, !241, !36, !242, !242, !242, !70, !36}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251}
!244 = !DILocalVariable(name: "huffWeight", arg: 1, scope: !238, file: !1, line: 251, type: !241)
!245 = !DILocalVariable(name: "hwSize", arg: 2, scope: !238, file: !1, line: 251, type: !36)
!246 = !DILocalVariable(name: "rankStats", arg: 3, scope: !238, file: !1, line: 251, type: !242)
!247 = !DILocalVariable(name: "nbSymbolsPtr", arg: 4, scope: !238, file: !1, line: 252, type: !242)
!248 = !DILocalVariable(name: "tableLogPtr", arg: 5, scope: !238, file: !1, line: 252, type: !242)
!249 = !DILocalVariable(name: "src", arg: 6, scope: !238, file: !1, line: 253, type: !70)
!250 = !DILocalVariable(name: "srcSize", arg: 7, scope: !238, file: !1, line: 253, type: !36)
!251 = !DILocalVariable(name: "wksp", scope: !238, file: !1, line: 255, type: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 6976, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 218)
!255 = !DILocation(line: 251, column: 28, scope: !238)
!256 = !DILocation(line: 251, column: 47, scope: !238)
!257 = !DILocation(line: 251, column: 60, scope: !238)
!258 = !DILocation(line: 252, column: 27, scope: !238)
!259 = !DILocation(line: 252, column: 46, scope: !238)
!260 = !DILocation(line: 253, column: 34, scope: !238)
!261 = !DILocation(line: 253, column: 46, scope: !238)
!262 = !DILocation(line: 255, column: 5, scope: !238)
!263 = !DILocation(line: 255, column: 9, scope: !238)
!264 = !DILocation(line: 256, column: 31, scope: !238)
!265 = !DILocation(line: 256, column: 43, scope: !238)
!266 = !DILocation(line: 256, column: 51, scope: !238)
!267 = !DILocation(line: 256, column: 62, scope: !238)
!268 = !DILocation(line: 256, column: 76, scope: !238)
!269 = !DILocation(line: 256, column: 89, scope: !238)
!270 = !DILocation(line: 256, column: 94, scope: !238)
!271 = !DILocation(line: 256, column: 103, scope: !238)
!272 = !DILocation(line: 256, column: 12, scope: !238)
!273 = !DILocation(line: 257, column: 1, scope: !238)
!274 = !DILocation(line: 256, column: 5, scope: !238)
!275 = distinct !DISubprogram(name: "HUF_readStats_wksp", scope: !1, file: !1, line: 344, type: !276, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !279)
!276 = !DISubroutineType(types: !277)
!277 = !{!36, !241, !36, !242, !242, !242, !70, !36, !278, !36, !55}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DILocalVariable(name: "huffWeight", arg: 1, scope: !275, file: !1, line: 344, type: !241)
!281 = !DILocalVariable(name: "hwSize", arg: 2, scope: !275, file: !1, line: 344, type: !36)
!282 = !DILocalVariable(name: "rankStats", arg: 3, scope: !275, file: !1, line: 344, type: !242)
!283 = !DILocalVariable(name: "nbSymbolsPtr", arg: 4, scope: !275, file: !1, line: 345, type: !242)
!284 = !DILocalVariable(name: "tableLogPtr", arg: 5, scope: !275, file: !1, line: 345, type: !242)
!285 = !DILocalVariable(name: "src", arg: 6, scope: !275, file: !1, line: 346, type: !70)
!286 = !DILocalVariable(name: "srcSize", arg: 7, scope: !275, file: !1, line: 346, type: !36)
!287 = !DILocalVariable(name: "workSpace", arg: 8, scope: !275, file: !1, line: 347, type: !278)
!288 = !DILocalVariable(name: "wkspSize", arg: 9, scope: !275, file: !1, line: 347, type: !36)
!289 = !DILocalVariable(name: "bmi2", arg: 10, scope: !275, file: !1, line: 348, type: !55)
!290 = !DILocation(line: 344, column: 33, scope: !275)
!291 = !DILocation(line: 344, column: 52, scope: !275)
!292 = !DILocation(line: 344, column: 65, scope: !275)
!293 = !DILocation(line: 345, column: 27, scope: !275)
!294 = !DILocation(line: 345, column: 46, scope: !275)
!295 = !DILocation(line: 346, column: 34, scope: !275)
!296 = !DILocation(line: 346, column: 46, scope: !275)
!297 = !DILocation(line: 347, column: 28, scope: !275)
!298 = !DILocation(line: 347, column: 46, scope: !275)
!299 = !DILocation(line: 348, column: 26, scope: !275)
!300 = !DILocation(line: 351, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !275, file: !1, line: 351, column: 9)
!302 = !DILocation(line: 351, column: 9, scope: !275)
!303 = !DILocation(line: 352, column: 40, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !1, line: 351, column: 15)
!305 = !DILocation(line: 352, column: 52, scope: !304)
!306 = !DILocation(line: 352, column: 60, scope: !304)
!307 = !DILocation(line: 352, column: 71, scope: !304)
!308 = !DILocation(line: 352, column: 85, scope: !304)
!309 = !DILocation(line: 352, column: 98, scope: !304)
!310 = !DILocation(line: 352, column: 103, scope: !304)
!311 = !DILocation(line: 352, column: 112, scope: !304)
!312 = !DILocation(line: 352, column: 123, scope: !304)
!313 = !DILocation(line: 352, column: 16, scope: !304)
!314 = !DILocation(line: 352, column: 9, scope: !304)
!315 = !DILocation(line: 355, column: 11, scope: !275)
!316 = !DILocation(line: 356, column: 39, scope: !275)
!317 = !DILocation(line: 356, column: 51, scope: !275)
!318 = !DILocation(line: 356, column: 59, scope: !275)
!319 = !DILocation(line: 356, column: 70, scope: !275)
!320 = !DILocation(line: 356, column: 84, scope: !275)
!321 = !DILocation(line: 356, column: 97, scope: !275)
!322 = !DILocation(line: 356, column: 102, scope: !275)
!323 = !DILocation(line: 356, column: 111, scope: !275)
!324 = !DILocation(line: 356, column: 122, scope: !275)
!325 = !DILocation(line: 356, column: 12, scope: !275)
!326 = !DILocation(line: 356, column: 5, scope: !275)
!327 = !DILocation(line: 357, column: 1, scope: !275)
!328 = distinct !DISubprogram(name: "HUF_readStats_body_bmi2", scope: !1, file: !1, line: 335, type: !329, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!36, !241, !36, !242, !242, !242, !70, !36, !278, !36}
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340}
!332 = !DILocalVariable(name: "huffWeight", arg: 1, scope: !328, file: !1, line: 335, type: !241)
!333 = !DILocalVariable(name: "hwSize", arg: 2, scope: !328, file: !1, line: 335, type: !36)
!334 = !DILocalVariable(name: "rankStats", arg: 3, scope: !328, file: !1, line: 335, type: !242)
!335 = !DILocalVariable(name: "nbSymbolsPtr", arg: 4, scope: !328, file: !1, line: 336, type: !242)
!336 = !DILocalVariable(name: "tableLogPtr", arg: 5, scope: !328, file: !1, line: 336, type: !242)
!337 = !DILocalVariable(name: "src", arg: 6, scope: !328, file: !1, line: 337, type: !70)
!338 = !DILocalVariable(name: "srcSize", arg: 7, scope: !328, file: !1, line: 337, type: !36)
!339 = !DILocalVariable(name: "workSpace", arg: 8, scope: !328, file: !1, line: 338, type: !278)
!340 = !DILocalVariable(name: "wkspSize", arg: 9, scope: !328, file: !1, line: 338, type: !36)
!341 = !DILocation(line: 335, column: 67, scope: !328)
!342 = !DILocation(line: 335, column: 86, scope: !328)
!343 = !DILocation(line: 335, column: 99, scope: !328)
!344 = !DILocation(line: 336, column: 27, scope: !328)
!345 = !DILocation(line: 336, column: 46, scope: !328)
!346 = !DILocation(line: 337, column: 34, scope: !328)
!347 = !DILocation(line: 337, column: 46, scope: !328)
!348 = !DILocation(line: 338, column: 28, scope: !328)
!349 = !DILocation(line: 338, column: 46, scope: !328)
!350 = !DILocation(line: 340, column: 31, scope: !328)
!351 = !DILocation(line: 340, column: 43, scope: !328)
!352 = !DILocation(line: 340, column: 51, scope: !328)
!353 = !DILocation(line: 340, column: 62, scope: !328)
!354 = !DILocation(line: 340, column: 76, scope: !328)
!355 = !DILocation(line: 340, column: 89, scope: !328)
!356 = !DILocation(line: 340, column: 94, scope: !328)
!357 = !DILocation(line: 340, column: 103, scope: !328)
!358 = !DILocation(line: 340, column: 114, scope: !328)
!359 = !DILocation(line: 340, column: 12, scope: !328)
!360 = !DILocation(line: 340, column: 5, scope: !328)
!361 = distinct !DISubprogram(name: "HUF_readStats_body_default", scope: !1, file: !1, line: 326, type: !329, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371}
!363 = !DILocalVariable(name: "huffWeight", arg: 1, scope: !361, file: !1, line: 326, type: !241)
!364 = !DILocalVariable(name: "hwSize", arg: 2, scope: !361, file: !1, line: 326, type: !36)
!365 = !DILocalVariable(name: "rankStats", arg: 3, scope: !361, file: !1, line: 326, type: !242)
!366 = !DILocalVariable(name: "nbSymbolsPtr", arg: 4, scope: !361, file: !1, line: 327, type: !242)
!367 = !DILocalVariable(name: "tableLogPtr", arg: 5, scope: !361, file: !1, line: 327, type: !242)
!368 = !DILocalVariable(name: "src", arg: 6, scope: !361, file: !1, line: 328, type: !70)
!369 = !DILocalVariable(name: "srcSize", arg: 7, scope: !361, file: !1, line: 328, type: !36)
!370 = !DILocalVariable(name: "workSpace", arg: 8, scope: !361, file: !1, line: 329, type: !278)
!371 = !DILocalVariable(name: "wkspSize", arg: 9, scope: !361, file: !1, line: 329, type: !36)
!372 = !DILocation(line: 326, column: 48, scope: !361)
!373 = !DILocation(line: 326, column: 67, scope: !361)
!374 = !DILocation(line: 326, column: 80, scope: !361)
!375 = !DILocation(line: 327, column: 27, scope: !361)
!376 = !DILocation(line: 327, column: 46, scope: !361)
!377 = !DILocation(line: 328, column: 34, scope: !361)
!378 = !DILocation(line: 328, column: 46, scope: !361)
!379 = !DILocation(line: 329, column: 28, scope: !361)
!380 = !DILocation(line: 329, column: 46, scope: !361)
!381 = !DILocation(line: 331, column: 31, scope: !361)
!382 = !DILocation(line: 331, column: 43, scope: !361)
!383 = !DILocation(line: 331, column: 51, scope: !361)
!384 = !DILocation(line: 331, column: 62, scope: !361)
!385 = !DILocation(line: 331, column: 76, scope: !361)
!386 = !DILocation(line: 331, column: 89, scope: !361)
!387 = !DILocation(line: 331, column: 94, scope: !361)
!388 = !DILocation(line: 331, column: 103, scope: !361)
!389 = !DILocation(line: 331, column: 114, scope: !361)
!390 = !DILocation(line: 331, column: 12, scope: !361)
!391 = !DILocation(line: 331, column: 5, scope: !361)
!392 = !DISubprogram(name: "ERR_getErrorString", scope: !43, file: !43, line: 60, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!110, !42}
!395 = distinct !DISubprogram(name: "ERR_getErrorCode", scope: !43, file: !43, line: 49, type: !396, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!42, !36}
!398 = !{!399}
!399 = !DILocalVariable(name: "code", arg: 1, scope: !395, file: !43, line: 49, type: !36)
!400 = !DILocation(line: 49, column: 45, scope: !395)
!401 = !DILocation(line: 49, column: 70, scope: !402)
!402 = distinct !DILexicalBlock(scope: !395, file: !43, line: 49, column: 57)
!403 = !DILocation(line: 49, column: 58, scope: !402)
!404 = !DILocation(line: 49, column: 57, scope: !395)
!405 = !DILocation(line: 49, column: 77, scope: !402)
!406 = !DILocation(line: 49, column: 118, scope: !395)
!407 = !DILocation(line: 49, column: 117, scope: !395)
!408 = !DILocation(line: 49, column: 104, scope: !395)
!409 = !DILocation(line: 49, column: 97, scope: !395)
!410 = !DILocation(line: 49, column: 125, scope: !395)
!411 = distinct !DISubprogram(name: "FSE_readNCount_body", scope: !1, file: !1, line: 59, type: !180, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !420, !421, !422, !423, !424, !425, !426, !427, !428, !430, !431, !437, !440, !446, !449}
!413 = !DILocalVariable(name: "normalizedCounter", arg: 1, scope: !411, file: !1, line: 59, type: !144)
!414 = !DILocalVariable(name: "maxSVPtr", arg: 2, scope: !411, file: !1, line: 59, type: !145)
!415 = !DILocalVariable(name: "tableLogPtr", arg: 3, scope: !411, file: !1, line: 59, type: !145)
!416 = !DILocalVariable(name: "headerBuffer", arg: 4, scope: !411, file: !1, line: 60, type: !70)
!417 = !DILocalVariable(name: "hbSize", arg: 5, scope: !411, file: !1, line: 60, type: !36)
!418 = !DILocalVariable(name: "istart", scope: !411, file: !1, line: 62, type: !419)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!420 = !DILocalVariable(name: "iend", scope: !411, file: !1, line: 63, type: !419)
!421 = !DILocalVariable(name: "ip", scope: !411, file: !1, line: 64, type: !45)
!422 = !DILocalVariable(name: "nbBits", scope: !411, file: !1, line: 65, type: !55)
!423 = !DILocalVariable(name: "remaining", scope: !411, file: !1, line: 66, type: !55)
!424 = !DILocalVariable(name: "threshold", scope: !411, file: !1, line: 67, type: !55)
!425 = !DILocalVariable(name: "bitStream", scope: !411, file: !1, line: 68, type: !56)
!426 = !DILocalVariable(name: "bitCount", scope: !411, file: !1, line: 69, type: !55)
!427 = !DILocalVariable(name: "charnum", scope: !411, file: !1, line: 70, type: !5)
!428 = !DILocalVariable(name: "maxSV1", scope: !411, file: !1, line: 71, type: !429)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!430 = !DILocalVariable(name: "previous0", scope: !411, file: !1, line: 72, type: !55)
!431 = !DILocalVariable(name: "buffer", scope: !432, file: !1, line: 76, type: !434)
!432 = distinct !DILexicalBlock(scope: !433, file: !1, line: 74, column: 21)
!433 = distinct !DILexicalBlock(scope: !411, file: !1, line: 74, column: 9)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 8)
!437 = !DILocalVariable(name: "countSize", scope: !438, file: !1, line: 78, type: !439)
!438 = distinct !DILexicalBlock(scope: !432, file: !1, line: 78, column: 9)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!440 = !DILocalVariable(name: "repeats", scope: !441, file: !1, line: 105, type: !55)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 99, column: 24)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 99, column: 13)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 98, column: 14)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 98, column: 5)
!445 = distinct !DILexicalBlock(scope: !411, file: !1, line: 98, column: 5)
!446 = !DILocalVariable(name: "max", scope: !447, file: !1, line: 149, type: !448)
!447 = distinct !DILexicalBlock(scope: !443, file: !1, line: 148, column: 9)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!449 = !DILocalVariable(name: "count", scope: !447, file: !1, line: 150, type: !55)
!450 = !DILocation(line: 59, column: 35, scope: !411)
!451 = !DILocation(line: 59, column: 64, scope: !411)
!452 = !DILocation(line: 59, column: 84, scope: !411)
!453 = !DILocation(line: 60, column: 40, scope: !411)
!454 = !DILocation(line: 60, column: 61, scope: !411)
!455 = !DILocation(line: 62, column: 5, scope: !411)
!456 = !DILocation(line: 62, column: 23, scope: !411)
!457 = !DILocation(line: 62, column: 46, scope: !411)
!458 = !DILocation(line: 63, column: 5, scope: !411)
!459 = !DILocation(line: 63, column: 23, scope: !411)
!460 = !DILocation(line: 63, column: 30, scope: !411)
!461 = !DILocation(line: 63, column: 39, scope: !411)
!462 = !DILocation(line: 63, column: 37, scope: !411)
!463 = !DILocation(line: 64, column: 5, scope: !411)
!464 = !DILocation(line: 64, column: 17, scope: !411)
!465 = !DILocation(line: 64, column: 22, scope: !411)
!466 = !DILocation(line: 65, column: 5, scope: !411)
!467 = !DILocation(line: 65, column: 9, scope: !411)
!468 = !DILocation(line: 66, column: 5, scope: !411)
!469 = !DILocation(line: 66, column: 9, scope: !411)
!470 = !DILocation(line: 67, column: 5, scope: !411)
!471 = !DILocation(line: 67, column: 9, scope: !411)
!472 = !DILocation(line: 68, column: 5, scope: !411)
!473 = !DILocation(line: 68, column: 9, scope: !411)
!474 = !DILocation(line: 69, column: 5, scope: !411)
!475 = !DILocation(line: 69, column: 9, scope: !411)
!476 = !DILocation(line: 70, column: 5, scope: !411)
!477 = !DILocation(line: 70, column: 14, scope: !411)
!478 = !DILocation(line: 71, column: 5, scope: !411)
!479 = !DILocation(line: 71, column: 20, scope: !411)
!480 = !DILocation(line: 71, column: 30, scope: !411)
!481 = !DILocation(line: 71, column: 29, scope: !411)
!482 = !DILocation(line: 71, column: 39, scope: !411)
!483 = !DILocation(line: 72, column: 5, scope: !411)
!484 = !DILocation(line: 72, column: 9, scope: !411)
!485 = !DILocation(line: 74, column: 9, scope: !433)
!486 = !DILocation(line: 74, column: 16, scope: !433)
!487 = !DILocation(line: 74, column: 9, scope: !411)
!488 = !DILocation(line: 76, column: 9, scope: !432)
!489 = !DILocation(line: 76, column: 14, scope: !432)
!490 = !DILocation(line: 77, column: 9, scope: !432)
!491 = !DILocation(line: 78, column: 13, scope: !438)
!492 = !DILocation(line: 78, column: 26, scope: !438)
!493 = !DILocation(line: 78, column: 53, scope: !438)
!494 = !DILocation(line: 78, column: 72, scope: !438)
!495 = !DILocation(line: 78, column: 82, scope: !438)
!496 = !DILocation(line: 79, column: 53, scope: !438)
!497 = !DILocation(line: 78, column: 38, scope: !438)
!498 = !DILocation(line: 80, column: 29, scope: !499)
!499 = distinct !DILexicalBlock(scope: !438, file: !1, line: 80, column: 17)
!500 = !DILocation(line: 80, column: 17, scope: !499)
!501 = !DILocation(line: 80, column: 17, scope: !438)
!502 = !DILocation(line: 80, column: 48, scope: !499)
!503 = !DILocation(line: 80, column: 41, scope: !499)
!504 = !DILocation(line: 81, column: 17, scope: !505)
!505 = distinct !DILexicalBlock(scope: !438, file: !1, line: 81, column: 17)
!506 = !DILocation(line: 81, column: 29, scope: !505)
!507 = !DILocation(line: 81, column: 27, scope: !505)
!508 = !DILocation(line: 81, column: 17, scope: !438)
!509 = !DILocation(line: 81, column: 37, scope: !505)
!510 = !DILocation(line: 82, column: 20, scope: !438)
!511 = !DILocation(line: 82, column: 13, scope: !438)
!512 = !DILocation(line: 83, column: 5, scope: !432)
!513 = !DILocation(line: 83, column: 9, scope: !433)
!514 = !DILocation(line: 87, column: 5, scope: !411)
!515 = !DILocation(line: 88, column: 30, scope: !411)
!516 = !DILocation(line: 88, column: 17, scope: !411)
!517 = !DILocation(line: 88, column: 15, scope: !411)
!518 = !DILocation(line: 89, column: 15, scope: !411)
!519 = !DILocation(line: 89, column: 25, scope: !411)
!520 = !DILocation(line: 89, column: 32, scope: !411)
!521 = !DILocation(line: 89, column: 12, scope: !411)
!522 = !DILocation(line: 90, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !411, file: !1, line: 90, column: 9)
!524 = !DILocation(line: 90, column: 16, scope: !523)
!525 = !DILocation(line: 90, column: 9, scope: !411)
!526 = !DILocation(line: 90, column: 45, scope: !523)
!527 = !DILocation(line: 91, column: 15, scope: !411)
!528 = !DILocation(line: 92, column: 14, scope: !411)
!529 = !DILocation(line: 93, column: 20, scope: !411)
!530 = !DILocation(line: 93, column: 6, scope: !411)
!531 = !DILocation(line: 93, column: 18, scope: !411)
!532 = !DILocation(line: 94, column: 21, scope: !411)
!533 = !DILocation(line: 94, column: 19, scope: !411)
!534 = !DILocation(line: 94, column: 28, scope: !411)
!535 = !DILocation(line: 94, column: 15, scope: !411)
!536 = !DILocation(line: 95, column: 20, scope: !411)
!537 = !DILocation(line: 95, column: 18, scope: !411)
!538 = !DILocation(line: 95, column: 15, scope: !411)
!539 = !DILocation(line: 96, column: 11, scope: !411)
!540 = !DILocation(line: 98, column: 5, scope: !411)
!541 = !DILocation(line: 99, column: 13, scope: !442)
!542 = !DILocation(line: 99, column: 13, scope: !443)
!543 = !DILocation(line: 105, column: 13, scope: !441)
!544 = !DILocation(line: 105, column: 17, scope: !441)
!545 = !DILocation(line: 105, column: 36, scope: !441)
!546 = !DILocation(line: 105, column: 35, scope: !441)
!547 = !DILocation(line: 105, column: 46, scope: !441)
!548 = !DILocation(line: 105, column: 27, scope: !441)
!549 = !DILocation(line: 105, column: 60, scope: !441)
!550 = !DILocation(line: 106, column: 13, scope: !441)
!551 = !DILocation(line: 106, column: 20, scope: !441)
!552 = !DILocation(line: 106, column: 28, scope: !441)
!553 = !DILocation(line: 107, column: 25, scope: !554)
!554 = distinct !DILexicalBlock(scope: !441, file: !1, line: 106, column: 35)
!555 = !DILocation(line: 108, column: 21, scope: !556)
!556 = distinct !DILexicalBlock(scope: !554, file: !1, line: 108, column: 21)
!557 = !DILocation(line: 108, column: 21, scope: !554)
!558 = !DILocation(line: 109, column: 24, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !1, line: 108, column: 43)
!560 = !DILocation(line: 110, column: 17, scope: !559)
!561 = !DILocation(line: 111, column: 44, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !1, line: 110, column: 24)
!563 = !DILocation(line: 111, column: 49, scope: !562)
!564 = !DILocation(line: 111, column: 55, scope: !562)
!565 = !DILocation(line: 111, column: 53, scope: !562)
!566 = !DILocation(line: 111, column: 41, scope: !562)
!567 = !DILocation(line: 111, column: 33, scope: !562)
!568 = !DILocation(line: 111, column: 30, scope: !562)
!569 = !DILocation(line: 112, column: 30, scope: !562)
!570 = !DILocation(line: 113, column: 26, scope: !562)
!571 = !DILocation(line: 113, column: 31, scope: !562)
!572 = !DILocation(line: 113, column: 24, scope: !562)
!573 = !DILocation(line: 115, column: 42, scope: !554)
!574 = !DILocation(line: 115, column: 29, scope: !554)
!575 = !DILocation(line: 115, column: 49, scope: !554)
!576 = !DILocation(line: 115, column: 46, scope: !554)
!577 = !DILocation(line: 115, column: 27, scope: !554)
!578 = !DILocation(line: 116, column: 36, scope: !554)
!579 = !DILocation(line: 116, column: 35, scope: !554)
!580 = !DILocation(line: 116, column: 46, scope: !554)
!581 = !DILocation(line: 116, column: 27, scope: !554)
!582 = !DILocation(line: 116, column: 60, scope: !554)
!583 = !DILocation(line: 116, column: 25, scope: !554)
!584 = distinct !{!584, !550, !585, !586, !587}
!585 = !DILocation(line: 117, column: 13, scope: !441)
!586 = !{!"llvm.loop.mustprogress"}
!587 = !{!"llvm.loop.unroll.disable"}
!588 = !DILocation(line: 118, column: 28, scope: !441)
!589 = !DILocation(line: 118, column: 26, scope: !441)
!590 = !DILocation(line: 118, column: 21, scope: !441)
!591 = !DILocation(line: 119, column: 31, scope: !441)
!592 = !DILocation(line: 119, column: 29, scope: !441)
!593 = !DILocation(line: 119, column: 23, scope: !441)
!594 = !DILocation(line: 120, column: 29, scope: !441)
!595 = !DILocation(line: 120, column: 27, scope: !441)
!596 = !DILocation(line: 120, column: 22, scope: !441)
!597 = !DILocation(line: 124, column: 24, scope: !441)
!598 = !DILocation(line: 124, column: 34, scope: !441)
!599 = !DILocation(line: 124, column: 21, scope: !441)
!600 = !DILocation(line: 125, column: 22, scope: !441)
!601 = !DILocation(line: 131, column: 17, scope: !602)
!602 = distinct !DILexicalBlock(scope: !441, file: !1, line: 131, column: 17)
!603 = !DILocation(line: 131, column: 28, scope: !602)
!604 = !DILocation(line: 131, column: 25, scope: !602)
!605 = !DILocation(line: 131, column: 17, scope: !441)
!606 = !DILocation(line: 131, column: 36, scope: !602)
!607 = !DILocation(line: 137, column: 17, scope: !608)
!608 = distinct !DILexicalBlock(scope: !441, file: !1, line: 137, column: 17)
!609 = !DILocation(line: 137, column: 38, scope: !608)
!610 = !DILocation(line: 137, column: 42, scope: !608)
!611 = !DILocation(line: 137, column: 48, scope: !608)
!612 = !DILocation(line: 137, column: 56, scope: !608)
!613 = !DILocation(line: 137, column: 45, scope: !608)
!614 = !DILocation(line: 137, column: 64, scope: !608)
!615 = !DILocation(line: 137, column: 68, scope: !608)
!616 = !DILocation(line: 137, column: 61, scope: !608)
!617 = !DILocation(line: 137, column: 17, scope: !441)
!618 = !DILocation(line: 139, column: 23, scope: !619)
!619 = distinct !DILexicalBlock(scope: !608, file: !1, line: 137, column: 73)
!620 = !DILocation(line: 139, column: 31, scope: !619)
!621 = !DILocation(line: 139, column: 20, scope: !619)
!622 = !DILocation(line: 140, column: 26, scope: !619)
!623 = !DILocation(line: 141, column: 13, scope: !619)
!624 = !DILocation(line: 142, column: 40, scope: !625)
!625 = distinct !DILexicalBlock(scope: !608, file: !1, line: 141, column: 20)
!626 = !DILocation(line: 142, column: 45, scope: !625)
!627 = !DILocation(line: 142, column: 51, scope: !625)
!628 = !DILocation(line: 142, column: 49, scope: !625)
!629 = !DILocation(line: 142, column: 37, scope: !625)
!630 = !DILocation(line: 142, column: 29, scope: !625)
!631 = !DILocation(line: 142, column: 26, scope: !625)
!632 = !DILocation(line: 143, column: 26, scope: !625)
!633 = !DILocation(line: 144, column: 22, scope: !625)
!634 = !DILocation(line: 144, column: 27, scope: !625)
!635 = !DILocation(line: 144, column: 20, scope: !625)
!636 = !DILocation(line: 146, column: 38, scope: !441)
!637 = !DILocation(line: 146, column: 25, scope: !441)
!638 = !DILocation(line: 146, column: 45, scope: !441)
!639 = !DILocation(line: 146, column: 42, scope: !441)
!640 = !DILocation(line: 146, column: 23, scope: !441)
!641 = !DILocation(line: 147, column: 9, scope: !442)
!642 = !DILocation(line: 147, column: 9, scope: !441)
!643 = !DILocation(line: 149, column: 13, scope: !447)
!644 = !DILocation(line: 149, column: 23, scope: !447)
!645 = !DILocation(line: 149, column: 32, scope: !447)
!646 = !DILocation(line: 149, column: 31, scope: !447)
!647 = !DILocation(line: 149, column: 41, scope: !447)
!648 = !DILocation(line: 149, column: 47, scope: !447)
!649 = !DILocation(line: 149, column: 45, scope: !447)
!650 = !DILocation(line: 150, column: 13, scope: !447)
!651 = !DILocation(line: 150, column: 17, scope: !447)
!652 = !DILocation(line: 152, column: 18, scope: !653)
!653 = distinct !DILexicalBlock(scope: !447, file: !1, line: 152, column: 17)
!654 = !DILocation(line: 152, column: 31, scope: !653)
!655 = !DILocation(line: 152, column: 40, scope: !653)
!656 = !DILocation(line: 152, column: 28, scope: !653)
!657 = !DILocation(line: 152, column: 52, scope: !653)
!658 = !DILocation(line: 152, column: 45, scope: !653)
!659 = !DILocation(line: 152, column: 17, scope: !447)
!660 = !DILocation(line: 153, column: 25, scope: !661)
!661 = distinct !DILexicalBlock(scope: !653, file: !1, line: 152, column: 57)
!662 = !DILocation(line: 153, column: 38, scope: !661)
!663 = !DILocation(line: 153, column: 47, scope: !661)
!664 = !DILocation(line: 153, column: 35, scope: !661)
!665 = !DILocation(line: 153, column: 23, scope: !661)
!666 = !DILocation(line: 154, column: 29, scope: !661)
!667 = !DILocation(line: 154, column: 35, scope: !661)
!668 = !DILocation(line: 154, column: 26, scope: !661)
!669 = !DILocation(line: 155, column: 13, scope: !661)
!670 = !DILocation(line: 156, column: 25, scope: !671)
!671 = distinct !DILexicalBlock(scope: !653, file: !1, line: 155, column: 20)
!672 = !DILocation(line: 156, column: 40, scope: !671)
!673 = !DILocation(line: 156, column: 39, scope: !671)
!674 = !DILocation(line: 156, column: 49, scope: !671)
!675 = !DILocation(line: 156, column: 35, scope: !671)
!676 = !DILocation(line: 156, column: 23, scope: !671)
!677 = !DILocation(line: 157, column: 21, scope: !678)
!678 = distinct !DILexicalBlock(scope: !671, file: !1, line: 157, column: 21)
!679 = !DILocation(line: 157, column: 30, scope: !678)
!680 = !DILocation(line: 157, column: 27, scope: !678)
!681 = !DILocation(line: 157, column: 21, scope: !671)
!682 = !DILocation(line: 157, column: 50, scope: !678)
!683 = !DILocation(line: 157, column: 47, scope: !678)
!684 = !DILocation(line: 157, column: 41, scope: !678)
!685 = !DILocation(line: 158, column: 29, scope: !671)
!686 = !DILocation(line: 158, column: 26, scope: !671)
!687 = !DILocation(line: 161, column: 18, scope: !447)
!688 = !DILocation(line: 165, column: 17, scope: !689)
!689 = distinct !DILexicalBlock(scope: !447, file: !1, line: 165, column: 17)
!690 = !DILocation(line: 165, column: 23, scope: !689)
!691 = !DILocation(line: 165, column: 17, scope: !447)
!692 = !DILocation(line: 166, column: 30, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !1, line: 165, column: 29)
!694 = !DILocation(line: 166, column: 27, scope: !693)
!695 = !DILocation(line: 167, column: 13, scope: !693)
!696 = !DILocation(line: 169, column: 30, scope: !697)
!697 = distinct !DILexicalBlock(scope: !689, file: !1, line: 167, column: 20)
!698 = !DILocation(line: 169, column: 27, scope: !697)
!699 = !DILocation(line: 171, column: 51, scope: !447)
!700 = !DILocation(line: 171, column: 44, scope: !447)
!701 = !DILocation(line: 171, column: 13, scope: !447)
!702 = !DILocation(line: 171, column: 38, scope: !447)
!703 = !DILocation(line: 171, column: 42, scope: !447)
!704 = !DILocation(line: 172, column: 26, scope: !447)
!705 = !DILocation(line: 172, column: 25, scope: !447)
!706 = !DILocation(line: 172, column: 23, scope: !447)
!707 = !DILocation(line: 175, column: 17, scope: !708)
!708 = distinct !DILexicalBlock(scope: !447, file: !1, line: 175, column: 17)
!709 = !DILocation(line: 175, column: 29, scope: !708)
!710 = !DILocation(line: 175, column: 27, scope: !708)
!711 = !DILocation(line: 175, column: 17, scope: !447)
!712 = !DILocation(line: 180, column: 21, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 180, column: 21)
!714 = distinct !DILexicalBlock(scope: !708, file: !1, line: 175, column: 40)
!715 = !DILocation(line: 180, column: 31, scope: !713)
!716 = !DILocation(line: 180, column: 21, scope: !714)
!717 = !DILocation(line: 180, column: 37, scope: !713)
!718 = !DILocation(line: 181, column: 40, scope: !714)
!719 = !DILocation(line: 181, column: 26, scope: !714)
!720 = !DILocation(line: 181, column: 51, scope: !714)
!721 = !DILocation(line: 181, column: 24, scope: !714)
!722 = !DILocation(line: 182, column: 35, scope: !714)
!723 = !DILocation(line: 182, column: 42, scope: !714)
!724 = !DILocation(line: 182, column: 31, scope: !714)
!725 = !DILocation(line: 182, column: 27, scope: !714)
!726 = !DILocation(line: 183, column: 13, scope: !714)
!727 = !DILocation(line: 184, column: 17, scope: !728)
!728 = distinct !DILexicalBlock(scope: !447, file: !1, line: 184, column: 17)
!729 = !DILocation(line: 184, column: 28, scope: !728)
!730 = !DILocation(line: 184, column: 25, scope: !728)
!731 = !DILocation(line: 184, column: 17, scope: !447)
!732 = !DILocation(line: 184, column: 36, scope: !728)
!733 = !DILocation(line: 186, column: 17, scope: !734)
!734 = distinct !DILexicalBlock(scope: !447, file: !1, line: 186, column: 17)
!735 = !DILocation(line: 186, column: 38, scope: !734)
!736 = !DILocation(line: 186, column: 42, scope: !734)
!737 = !DILocation(line: 186, column: 48, scope: !734)
!738 = !DILocation(line: 186, column: 56, scope: !734)
!739 = !DILocation(line: 186, column: 45, scope: !734)
!740 = !DILocation(line: 186, column: 64, scope: !734)
!741 = !DILocation(line: 186, column: 68, scope: !734)
!742 = !DILocation(line: 186, column: 61, scope: !734)
!743 = !DILocation(line: 186, column: 17, scope: !447)
!744 = !DILocation(line: 187, column: 23, scope: !745)
!745 = distinct !DILexicalBlock(scope: !734, file: !1, line: 186, column: 73)
!746 = !DILocation(line: 187, column: 31, scope: !745)
!747 = !DILocation(line: 187, column: 20, scope: !745)
!748 = !DILocation(line: 188, column: 26, scope: !745)
!749 = !DILocation(line: 189, column: 13, scope: !745)
!750 = !DILocation(line: 190, column: 40, scope: !751)
!751 = distinct !DILexicalBlock(scope: !734, file: !1, line: 189, column: 20)
!752 = !DILocation(line: 190, column: 45, scope: !751)
!753 = !DILocation(line: 190, column: 51, scope: !751)
!754 = !DILocation(line: 190, column: 49, scope: !751)
!755 = !DILocation(line: 190, column: 37, scope: !751)
!756 = !DILocation(line: 190, column: 29, scope: !751)
!757 = !DILocation(line: 190, column: 26, scope: !751)
!758 = !DILocation(line: 191, column: 26, scope: !751)
!759 = !DILocation(line: 192, column: 22, scope: !751)
!760 = !DILocation(line: 192, column: 27, scope: !751)
!761 = !DILocation(line: 192, column: 20, scope: !751)
!762 = !DILocation(line: 194, column: 38, scope: !447)
!763 = !DILocation(line: 194, column: 25, scope: !447)
!764 = !DILocation(line: 194, column: 45, scope: !447)
!765 = !DILocation(line: 194, column: 42, scope: !447)
!766 = !DILocation(line: 194, column: 23, scope: !447)
!767 = !DILocation(line: 195, column: 5, scope: !443)
!768 = !DILocation(line: 98, column: 5, scope: !444)
!769 = distinct !{!769, !770, !771, !587}
!770 = !DILocation(line: 98, column: 5, scope: !445)
!771 = !DILocation(line: 195, column: 9, scope: !445)
!772 = !DILocation(line: 196, column: 9, scope: !773)
!773 = distinct !DILexicalBlock(scope: !411, file: !1, line: 196, column: 9)
!774 = !DILocation(line: 196, column: 19, scope: !773)
!775 = !DILocation(line: 196, column: 9, scope: !411)
!776 = !DILocation(line: 196, column: 25, scope: !773)
!777 = !DILocation(line: 198, column: 9, scope: !778)
!778 = distinct !DILexicalBlock(scope: !411, file: !1, line: 198, column: 9)
!779 = !DILocation(line: 198, column: 19, scope: !778)
!780 = !DILocation(line: 198, column: 17, scope: !778)
!781 = !DILocation(line: 198, column: 9, scope: !411)
!782 = !DILocation(line: 198, column: 27, scope: !778)
!783 = !DILocation(line: 199, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !411, file: !1, line: 199, column: 9)
!785 = !DILocation(line: 199, column: 18, scope: !784)
!786 = !DILocation(line: 199, column: 9, scope: !411)
!787 = !DILocation(line: 199, column: 24, scope: !784)
!788 = !DILocation(line: 200, column: 17, scope: !411)
!789 = !DILocation(line: 200, column: 24, scope: !411)
!790 = !DILocation(line: 200, column: 6, scope: !411)
!791 = !DILocation(line: 200, column: 15, scope: !411)
!792 = !DILocation(line: 202, column: 12, scope: !411)
!793 = !DILocation(line: 202, column: 20, scope: !411)
!794 = !DILocation(line: 202, column: 23, scope: !411)
!795 = !DILocation(line: 202, column: 8, scope: !411)
!796 = !DILocation(line: 203, column: 12, scope: !411)
!797 = !DILocation(line: 203, column: 15, scope: !411)
!798 = !DILocation(line: 203, column: 14, scope: !411)
!799 = !DILocation(line: 203, column: 5, scope: !411)
!800 = !DILocation(line: 204, column: 1, scope: !411)
!801 = distinct !DISubprogram(name: "MEM_readLE32", scope: !48, file: !48, line: 169, type: !802, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!56, !70}
!804 = !{!805}
!805 = !DILocalVariable(name: "memPtr", arg: 1, scope: !801, file: !48, line: 169, type: !70)
!806 = !DILocation(line: 169, column: 41, scope: !801)
!807 = !DILocation(line: 171, column: 31, scope: !801)
!808 = !DILocation(line: 171, column: 12, scope: !801)
!809 = !DILocation(line: 171, column: 5, scope: !801)
!810 = distinct !DISubprogram(name: "FSE_ctz", scope: !1, file: !1, line: 41, type: !811, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!56, !56}
!813 = !{!814}
!814 = !DILocalVariable(name: "val", arg: 1, scope: !810, file: !1, line: 41, type: !56)
!815 = !DILocation(line: 41, column: 24, scope: !810)
!816 = !DILocation(line: 46, column: 30, scope: !817)
!817 = distinct !DILexicalBlock(scope: !810, file: !1, line: 44, column: 5)
!818 = !DILocation(line: 46, column: 16, scope: !817)
!819 = !DILocation(line: 46, column: 9, scope: !817)
!820 = distinct !DISubprogram(name: "BIT_highbit32", scope: !821, file: !821, line: 130, type: !822, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !824)
!821 = !DIFile(filename: "lib/zstd/common/bitstream.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1506eb3bcf17fe963e7dde55b0cfcb8f")
!822 = !DISubroutineType(types: !823)
!823 = !{!5, !56}
!824 = !{!825}
!825 = !DILocalVariable(name: "val", arg: 1, scope: !820, file: !821, line: 130, type: !56)
!826 = !DILocation(line: 130, column: 40, scope: !820)
!827 = !DILocation(line: 135, column: 31, scope: !828)
!828 = distinct !DILexicalBlock(scope: !820, file: !821, line: 133, column: 5)
!829 = !DILocation(line: 135, column: 16, scope: !828)
!830 = !DILocation(line: 135, column: 36, scope: !828)
!831 = !DILocation(line: 135, column: 9, scope: !828)
!832 = !DILocation(line: 30, column: 50, scope: !67)
!833 = !DILocation(line: 32, column: 9, scope: !75)
!834 = !DILocation(line: 32, column: 9, scope: !67)
!835 = !DILocation(line: 32, column: 2, scope: !67)
!836 = distinct !DISubprogram(name: "HUF_readStats_body", scope: !1, file: !1, line: 260, type: !276, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !856, !858, !861, !863, !864, !865}
!838 = !DILocalVariable(name: "huffWeight", arg: 1, scope: !836, file: !1, line: 260, type: !241)
!839 = !DILocalVariable(name: "hwSize", arg: 2, scope: !836, file: !1, line: 260, type: !36)
!840 = !DILocalVariable(name: "rankStats", arg: 3, scope: !836, file: !1, line: 260, type: !242)
!841 = !DILocalVariable(name: "nbSymbolsPtr", arg: 4, scope: !836, file: !1, line: 261, type: !242)
!842 = !DILocalVariable(name: "tableLogPtr", arg: 5, scope: !836, file: !1, line: 261, type: !242)
!843 = !DILocalVariable(name: "src", arg: 6, scope: !836, file: !1, line: 262, type: !70)
!844 = !DILocalVariable(name: "srcSize", arg: 7, scope: !836, file: !1, line: 262, type: !36)
!845 = !DILocalVariable(name: "workSpace", arg: 8, scope: !836, file: !1, line: 263, type: !278)
!846 = !DILocalVariable(name: "wkspSize", arg: 9, scope: !836, file: !1, line: 263, type: !36)
!847 = !DILocalVariable(name: "bmi2", arg: 10, scope: !836, file: !1, line: 264, type: !55)
!848 = !DILocalVariable(name: "weightTotal", scope: !836, file: !1, line: 266, type: !56)
!849 = !DILocalVariable(name: "ip", scope: !836, file: !1, line: 267, type: !45)
!850 = !DILocalVariable(name: "iSize", scope: !836, file: !1, line: 268, type: !36)
!851 = !DILocalVariable(name: "oSize", scope: !836, file: !1, line: 269, type: !36)
!852 = !DILocalVariable(name: "n", scope: !853, file: !1, line: 281, type: !56)
!853 = distinct !DILexicalBlock(scope: !854, file: !1, line: 281, column: 9)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 275, column: 23)
!855 = distinct !DILexicalBlock(scope: !836, file: !1, line: 275, column: 9)
!856 = !DILocalVariable(name: "n", scope: !857, file: !1, line: 296, type: !56)
!857 = distinct !DILexicalBlock(scope: !836, file: !1, line: 296, column: 5)
!858 = !DILocalVariable(name: "tableLog", scope: !859, file: !1, line: 304, type: !860)
!859 = distinct !DILexicalBlock(scope: !836, file: !1, line: 304, column: 5)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!861 = !DILocalVariable(name: "total", scope: !862, file: !1, line: 308, type: !860)
!862 = distinct !DILexicalBlock(scope: !859, file: !1, line: 308, column: 9)
!863 = !DILocalVariable(name: "rest", scope: !862, file: !1, line: 309, type: !860)
!864 = !DILocalVariable(name: "verif", scope: !862, file: !1, line: 310, type: !860)
!865 = !DILocalVariable(name: "lastWeight", scope: !862, file: !1, line: 311, type: !860)
!866 = !DILocation(line: 260, column: 26, scope: !836)
!867 = !DILocation(line: 260, column: 45, scope: !836)
!868 = !DILocation(line: 260, column: 58, scope: !836)
!869 = !DILocation(line: 261, column: 25, scope: !836)
!870 = !DILocation(line: 261, column: 44, scope: !836)
!871 = !DILocation(line: 262, column: 32, scope: !836)
!872 = !DILocation(line: 262, column: 44, scope: !836)
!873 = !DILocation(line: 263, column: 26, scope: !836)
!874 = !DILocation(line: 263, column: 44, scope: !836)
!875 = !DILocation(line: 264, column: 24, scope: !836)
!876 = !DILocation(line: 266, column: 5, scope: !836)
!877 = !DILocation(line: 266, column: 9, scope: !836)
!878 = !DILocation(line: 267, column: 5, scope: !836)
!879 = !DILocation(line: 267, column: 17, scope: !836)
!880 = !DILocation(line: 267, column: 36, scope: !836)
!881 = !DILocation(line: 268, column: 5, scope: !836)
!882 = !DILocation(line: 268, column: 12, scope: !836)
!883 = !DILocation(line: 269, column: 5, scope: !836)
!884 = !DILocation(line: 269, column: 12, scope: !836)
!885 = !DILocation(line: 271, column: 10, scope: !886)
!886 = distinct !DILexicalBlock(scope: !836, file: !1, line: 271, column: 9)
!887 = !DILocation(line: 271, column: 9, scope: !836)
!888 = !DILocation(line: 271, column: 19, scope: !886)
!889 = !DILocation(line: 272, column: 13, scope: !836)
!890 = !DILocation(line: 272, column: 11, scope: !836)
!891 = !DILocation(line: 275, column: 9, scope: !855)
!892 = !DILocation(line: 275, column: 15, scope: !855)
!893 = !DILocation(line: 275, column: 9, scope: !836)
!894 = !DILocation(line: 276, column: 17, scope: !854)
!895 = !DILocation(line: 276, column: 23, scope: !854)
!896 = !DILocation(line: 276, column: 15, scope: !854)
!897 = !DILocation(line: 277, column: 19, scope: !854)
!898 = !DILocation(line: 277, column: 24, scope: !854)
!899 = !DILocation(line: 277, column: 27, scope: !854)
!900 = !DILocation(line: 277, column: 15, scope: !854)
!901 = !DILocation(line: 278, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !854, file: !1, line: 278, column: 13)
!903 = !DILocation(line: 278, column: 18, scope: !902)
!904 = !DILocation(line: 278, column: 23, scope: !902)
!905 = !DILocation(line: 278, column: 21, scope: !902)
!906 = !DILocation(line: 278, column: 13, scope: !854)
!907 = !DILocation(line: 278, column: 32, scope: !902)
!908 = !DILocation(line: 279, column: 13, scope: !909)
!909 = distinct !DILexicalBlock(scope: !854, file: !1, line: 279, column: 13)
!910 = !DILocation(line: 279, column: 22, scope: !909)
!911 = !DILocation(line: 279, column: 19, scope: !909)
!912 = !DILocation(line: 279, column: 13, scope: !854)
!913 = !DILocation(line: 279, column: 30, scope: !909)
!914 = !DILocation(line: 280, column: 12, scope: !854)
!915 = !DILocation(line: 281, column: 13, scope: !853)
!916 = !DILocation(line: 281, column: 17, scope: !853)
!917 = !DILocation(line: 282, column: 19, scope: !918)
!918 = distinct !DILexicalBlock(scope: !853, file: !1, line: 282, column: 13)
!919 = !DILocation(line: 282, column: 18, scope: !918)
!920 = !DILocation(line: 282, column: 23, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !1, line: 282, column: 13)
!922 = !DILocation(line: 282, column: 25, scope: !921)
!923 = !DILocation(line: 282, column: 24, scope: !921)
!924 = !DILocation(line: 282, column: 13, scope: !918)
!925 = !DILocation(line: 283, column: 35, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !1, line: 282, column: 38)
!927 = !DILocation(line: 283, column: 38, scope: !926)
!928 = !DILocation(line: 283, column: 39, scope: !926)
!929 = !DILocation(line: 283, column: 43, scope: !926)
!930 = !DILocation(line: 283, column: 17, scope: !926)
!931 = !DILocation(line: 283, column: 28, scope: !926)
!932 = !DILocation(line: 283, column: 33, scope: !926)
!933 = !DILocation(line: 284, column: 35, scope: !926)
!934 = !DILocation(line: 284, column: 38, scope: !926)
!935 = !DILocation(line: 284, column: 39, scope: !926)
!936 = !DILocation(line: 284, column: 43, scope: !926)
!937 = !DILocation(line: 284, column: 17, scope: !926)
!938 = !DILocation(line: 284, column: 28, scope: !926)
!939 = !DILocation(line: 284, column: 29, scope: !926)
!940 = !DILocation(line: 284, column: 33, scope: !926)
!941 = !DILocation(line: 285, column: 5, scope: !926)
!942 = !DILocation(line: 282, column: 33, scope: !921)
!943 = !DILocation(line: 282, column: 13, scope: !921)
!944 = distinct !{!944, !924, !945, !586, !587}
!945 = !DILocation(line: 285, column: 5, scope: !918)
!946 = !DILocation(line: 285, column: 9, scope: !854)
!947 = !DILocation(line: 285, column: 13, scope: !854)
!948 = !DILocation(line: 287, column: 13, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 287, column: 13)
!950 = distinct !DILexicalBlock(scope: !855, file: !1, line: 286, column: 11)
!951 = !DILocation(line: 287, column: 18, scope: !949)
!952 = !DILocation(line: 287, column: 23, scope: !949)
!953 = !DILocation(line: 287, column: 21, scope: !949)
!954 = !DILocation(line: 287, column: 13, scope: !950)
!955 = !DILocation(line: 287, column: 32, scope: !949)
!956 = !DILocation(line: 289, column: 42, scope: !950)
!957 = !DILocation(line: 289, column: 54, scope: !950)
!958 = !DILocation(line: 289, column: 60, scope: !950)
!959 = !DILocation(line: 289, column: 64, scope: !950)
!960 = !DILocation(line: 289, column: 66, scope: !950)
!961 = !DILocation(line: 289, column: 70, scope: !950)
!962 = !DILocation(line: 289, column: 80, scope: !950)
!963 = !DILocation(line: 289, column: 91, scope: !950)
!964 = !DILocation(line: 289, column: 101, scope: !950)
!965 = !DILocation(line: 289, column: 17, scope: !950)
!966 = !DILocation(line: 289, column: 15, scope: !950)
!967 = !DILocation(line: 290, column: 25, scope: !968)
!968 = distinct !DILexicalBlock(scope: !950, file: !1, line: 290, column: 13)
!969 = !DILocation(line: 290, column: 13, scope: !968)
!970 = !DILocation(line: 290, column: 13, scope: !950)
!971 = !DILocation(line: 290, column: 40, scope: !968)
!972 = !DILocation(line: 290, column: 33, scope: !968)
!973 = !DILocation(line: 294, column: 5, scope: !836)
!974 = !DILocation(line: 295, column: 17, scope: !836)
!975 = !DILocation(line: 296, column: 9, scope: !857)
!976 = !DILocation(line: 296, column: 13, scope: !857)
!977 = !DILocation(line: 296, column: 22, scope: !978)
!978 = distinct !DILexicalBlock(scope: !857, file: !1, line: 296, column: 16)
!979 = !DILocation(line: 296, column: 21, scope: !978)
!980 = !DILocation(line: 296, column: 26, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !1, line: 296, column: 16)
!982 = !DILocation(line: 296, column: 28, scope: !981)
!983 = !DILocation(line: 296, column: 27, scope: !981)
!984 = !DILocation(line: 296, column: 16, scope: !978)
!985 = !DILocation(line: 297, column: 17, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !1, line: 297, column: 17)
!987 = distinct !DILexicalBlock(scope: !981, file: !1, line: 296, column: 40)
!988 = !DILocation(line: 297, column: 28, scope: !986)
!989 = !DILocation(line: 297, column: 31, scope: !986)
!990 = !DILocation(line: 297, column: 17, scope: !987)
!991 = !DILocation(line: 297, column: 51, scope: !986)
!992 = !DILocation(line: 298, column: 13, scope: !987)
!993 = !DILocation(line: 298, column: 23, scope: !987)
!994 = !DILocation(line: 298, column: 34, scope: !987)
!995 = !DILocation(line: 298, column: 37, scope: !987)
!996 = !DILocation(line: 299, column: 34, scope: !987)
!997 = !DILocation(line: 299, column: 45, scope: !987)
!998 = !DILocation(line: 299, column: 31, scope: !987)
!999 = !DILocation(line: 299, column: 49, scope: !987)
!1000 = !DILocation(line: 299, column: 25, scope: !987)
!1001 = !DILocation(line: 300, column: 5, scope: !987)
!1002 = !DILocation(line: 296, column: 36, scope: !981)
!1003 = !DILocation(line: 296, column: 16, scope: !981)
!1004 = distinct !{!1004, !984, !1005, !586, !587}
!1005 = !DILocation(line: 300, column: 5, scope: !978)
!1006 = !DILocation(line: 300, column: 9, scope: !836)
!1007 = !DILocation(line: 301, column: 9, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !836, file: !1, line: 301, column: 9)
!1009 = !DILocation(line: 301, column: 21, scope: !1008)
!1010 = !DILocation(line: 301, column: 9, scope: !836)
!1011 = !DILocation(line: 301, column: 27, scope: !1008)
!1012 = !DILocation(line: 304, column: 9, scope: !859)
!1013 = !DILocation(line: 304, column: 19, scope: !859)
!1014 = !DILocation(line: 304, column: 44, scope: !859)
!1015 = !DILocation(line: 304, column: 30, scope: !859)
!1016 = !DILocation(line: 304, column: 57, scope: !859)
!1017 = !DILocation(line: 305, column: 13, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !859, file: !1, line: 305, column: 13)
!1019 = !DILocation(line: 305, column: 22, scope: !1018)
!1020 = !DILocation(line: 305, column: 13, scope: !859)
!1021 = !DILocation(line: 305, column: 42, scope: !1018)
!1022 = !DILocation(line: 306, column: 24, scope: !859)
!1023 = !DILocation(line: 306, column: 10, scope: !859)
!1024 = !DILocation(line: 306, column: 22, scope: !859)
!1025 = !DILocation(line: 308, column: 13, scope: !862)
!1026 = !DILocation(line: 308, column: 23, scope: !862)
!1027 = !DILocation(line: 308, column: 36, scope: !862)
!1028 = !DILocation(line: 308, column: 33, scope: !862)
!1029 = !DILocation(line: 309, column: 13, scope: !862)
!1030 = !DILocation(line: 309, column: 23, scope: !862)
!1031 = !DILocation(line: 309, column: 30, scope: !862)
!1032 = !DILocation(line: 309, column: 38, scope: !862)
!1033 = !DILocation(line: 309, column: 36, scope: !862)
!1034 = !DILocation(line: 310, column: 13, scope: !862)
!1035 = !DILocation(line: 310, column: 23, scope: !862)
!1036 = !DILocation(line: 310, column: 50, scope: !862)
!1037 = !DILocation(line: 310, column: 36, scope: !862)
!1038 = !DILocation(line: 310, column: 33, scope: !862)
!1039 = !DILocation(line: 311, column: 13, scope: !862)
!1040 = !DILocation(line: 311, column: 23, scope: !862)
!1041 = !DILocation(line: 311, column: 50, scope: !862)
!1042 = !DILocation(line: 311, column: 36, scope: !862)
!1043 = !DILocation(line: 311, column: 56, scope: !862)
!1044 = !DILocation(line: 312, column: 17, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !862, file: !1, line: 312, column: 17)
!1046 = !DILocation(line: 312, column: 26, scope: !1045)
!1047 = !DILocation(line: 312, column: 23, scope: !1045)
!1048 = !DILocation(line: 312, column: 17, scope: !862)
!1049 = !DILocation(line: 312, column: 32, scope: !1045)
!1050 = !DILocation(line: 313, column: 39, scope: !862)
!1051 = !DILocation(line: 313, column: 33, scope: !862)
!1052 = !DILocation(line: 313, column: 13, scope: !862)
!1053 = !DILocation(line: 313, column: 24, scope: !862)
!1054 = !DILocation(line: 313, column: 31, scope: !862)
!1055 = !DILocation(line: 314, column: 13, scope: !862)
!1056 = !DILocation(line: 314, column: 23, scope: !862)
!1057 = !DILocation(line: 314, column: 34, scope: !862)
!1058 = !DILocation(line: 315, column: 5, scope: !859)
!1059 = !DILocation(line: 315, column: 9, scope: !836)
!1060 = !DILocation(line: 318, column: 10, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !836, file: !1, line: 318, column: 9)
!1062 = !DILocation(line: 318, column: 23, scope: !1061)
!1063 = !DILocation(line: 318, column: 28, scope: !1061)
!1064 = !DILocation(line: 318, column: 32, scope: !1061)
!1065 = !DILocation(line: 318, column: 45, scope: !1061)
!1066 = !DILocation(line: 318, column: 9, scope: !836)
!1067 = !DILocation(line: 318, column: 51, scope: !1061)
!1068 = !DILocation(line: 321, column: 27, scope: !836)
!1069 = !DILocation(line: 321, column: 32, scope: !836)
!1070 = !DILocation(line: 321, column: 21, scope: !836)
!1071 = !DILocation(line: 321, column: 6, scope: !836)
!1072 = !DILocation(line: 321, column: 19, scope: !836)
!1073 = !DILocation(line: 322, column: 12, scope: !836)
!1074 = !DILocation(line: 322, column: 17, scope: !836)
!1075 = !DILocation(line: 322, column: 5, scope: !836)
!1076 = !DILocation(line: 323, column: 1, scope: !836)
!1077 = !DISubprogram(name: "FSE_decompress_wksp_bmi2", scope: !1078, file: !1078, line: 358, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DIFile(filename: "lib/zstd/common/fse.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7594268659e4334b0d9568eded0c0606")
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!36, !278, !36, !70, !36, !5, !278, !36, !55}
