; ModuleID = 'arch/x86/kernel/cpu/perfctr-watchdog.c'
source_filename = "arch/x86/kernel/cpu/perfctr-watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_reserve_perfctr_nmi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad reserve_perfctr_nmi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_release_perfctr_nmi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad release_perfctr_nmi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_reserve_evntsel_nmi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad reserve_evntsel_nmi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_release_evntsel_nmi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad release_evntsel_nmi ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.anon = type { i8, i8, i8, i8 }

@perfctr_nmi_owner = internal global [2 x i64] zeroinitializer, align 16, !dbg !0
@__UNIQUE_ID___addressable_reserve_perfctr_nmi316 = internal global ptr @reserve_perfctr_nmi, section ".discard.addressable", align 8, !dbg !23
@__UNIQUE_ID___addressable_release_perfctr_nmi317 = internal global ptr @release_perfctr_nmi, section ".discard.addressable", align 8, !dbg !25
@evntsel_nmi_owner = internal global [2 x i64] zeroinitializer, align 16, !dbg !31
@__UNIQUE_ID___addressable_reserve_evntsel_nmi318 = internal global ptr @reserve_evntsel_nmi, section ".discard.addressable", align 8, !dbg !27
@__UNIQUE_ID___addressable_release_evntsel_nmi319 = internal global ptr @release_evntsel_nmi, section ".discard.addressable", align 8, !dbg !29
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_reserve_perfctr_nmi316, ptr @__UNIQUE_ID___addressable_release_perfctr_nmi317, ptr @__UNIQUE_ID___addressable_reserve_evntsel_nmi318, ptr @__UNIQUE_ID___addressable_release_evntsel_nmi319], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @reserve_perfctr_nmi(i32 noundef %msr) #0 align 16 !dbg !45 {
entry:
  %retval = alloca i32, align 4
  %msr.addr = alloca i32, align 4
  %counter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !49, metadata !DIExpression()), !dbg !51
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #7, !dbg !52
  call void @llvm.dbg.declare(metadata ptr %counter, metadata !50, metadata !DIExpression()), !dbg !53
  %0 = load i32, ptr %msr.addr, align 4, !dbg !54
  %call = call i32 @nmi_perfctr_msr_to_bit(i32 noundef %0) #8, !dbg !55
  store i32 %call, ptr %counter, align 4, !dbg !56
  %1 = load i32, ptr %counter, align 4, !dbg !57
  %cmp = icmp ugt i32 %1, 66, !dbg !59
  br i1 %cmp, label %if.then, label %if.end, !dbg !60

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !61
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !61

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %counter, align 4, !dbg !62
  %conv = zext i32 %2 to i64, !dbg !62
  %call1 = call zeroext i1 @test_and_set_bit(i64 noundef %conv, ptr noundef @perfctr_nmi_owner) #8, !dbg !64
  br i1 %call1, label %if.end3, label %if.then2, !dbg !65

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !66
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !66

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !67
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !67

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #7, !dbg !68
  %3 = load i32, ptr %retval, align 4, !dbg !68
  ret i32 %3, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nmi_perfctr_msr_to_bit(i32 noundef %msr) #3 align 16 !dbg !69 {
entry:
  %retval = alloca i32, align 4
  %msr.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !75
  %conv = zext i8 %0 to i32, !dbg !76
  switch i32 %conv, label %sw.epilog17 [
    i32 9, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb3
    i32 10, label %sw.bb15
    i32 5, label %sw.bb15
  ], !dbg !77

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !78
  %cmp = icmp uge i32 %1, -1073675775, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %sw.bb
  %2 = load i32, ptr %msr.addr, align 4, !dbg !83
  %sub = sub i32 %2, -1073675775, !dbg !84
  %shr = lshr i32 %sub, 1, !dbg !85
  store i32 %shr, ptr %retval, align 4, !dbg !86
  br label %return, !dbg !86

if.end:                                           ; preds = %sw.bb
  %3 = load i32, ptr %msr.addr, align 4, !dbg !87
  %sub2 = sub i32 %3, -1073676284, !dbg !88
  store i32 %sub2, ptr %retval, align 4, !dbg !89
  br label %return, !dbg !89

sw.bb3:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !90

cond.true:                                        ; preds = %sw.bb3
  br i1 true, label %if.then5, label %if.end7, !dbg !91

cond.false:                                       ; preds = %sw.bb3
  %call = call zeroext i1 @arch_test_bit(i64 noundef 107, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #8, !dbg !91
  br i1 %call, label %if.then5, label %if.end7, !dbg !90

if.then5:                                         ; preds = %cond.false, %cond.true
  %4 = load i32, ptr %msr.addr, align 4, !dbg !93
  %sub6 = sub i32 %4, 193, !dbg !94
  store i32 %sub6, ptr %retval, align 4, !dbg !95
  br label %return, !dbg !95

if.end7:                                          ; preds = %cond.false, %cond.true
  %5 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !96
  %conv8 = zext i8 %5 to i32, !dbg !97
  switch i32 %conv8, label %sw.epilog [
    i32 6, label %sw.bb9
    i32 11, label %sw.bb11
    i32 15, label %sw.bb13
  ], !dbg !98

sw.bb9:                                           ; preds = %if.end7
  %6 = load i32, ptr %msr.addr, align 4, !dbg !99
  %sub10 = sub i32 %6, 193, !dbg !101
  store i32 %sub10, ptr %retval, align 4, !dbg !102
  br label %return, !dbg !102

sw.bb11:                                          ; preds = %if.end7
  %7 = load i32, ptr %msr.addr, align 4, !dbg !103
  %sub12 = sub i32 %7, 32, !dbg !104
  store i32 %sub12, ptr %retval, align 4, !dbg !105
  br label %return, !dbg !105

sw.bb13:                                          ; preds = %if.end7
  %8 = load i32, ptr %msr.addr, align 4, !dbg !106
  %sub14 = sub i32 %8, 768, !dbg !107
  store i32 %sub14, ptr %retval, align 4, !dbg !108
  br label %return, !dbg !108

sw.epilog:                                        ; preds = %if.end7
  br label %sw.epilog17, !dbg !109

sw.bb15:                                          ; preds = %entry, %entry
  %9 = load i32, ptr %msr.addr, align 4, !dbg !110
  %sub16 = sub i32 %9, 193, !dbg !111
  store i32 %sub16, ptr %retval, align 4, !dbg !112
  br label %return, !dbg !112

sw.epilog17:                                      ; preds = %entry, %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !113
  br label %return, !dbg !113

return:                                           ; preds = %sw.epilog17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %if.then5, %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !114
  ret i32 %10, !dbg !114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !115 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !125, metadata !DIExpression()), !dbg !127
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !126, metadata !DIExpression()), !dbg !128
  br label %do.body, !dbg !129

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !130

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !132
  %1 = load i64, ptr %nr.addr, align 8, !dbg !133
  %div = sdiv i64 %1, 64, !dbg !133
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !134
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !135
  %2 = load i64, ptr %nr.addr, align 8, !dbg !136
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !137
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !138
  ret i1 %call, !dbg !139
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @release_perfctr_nmi(i32 noundef %msr) #0 align 16 !dbg !140 {
entry:
  %msr.addr = alloca i32, align 4
  %counter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !144, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #7, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %counter, metadata !145, metadata !DIExpression()), !dbg !148
  %0 = load i32, ptr %msr.addr, align 4, !dbg !149
  %call = call i32 @nmi_perfctr_msr_to_bit(i32 noundef %0) #8, !dbg !150
  store i32 %call, ptr %counter, align 4, !dbg !151
  %1 = load i32, ptr %counter, align 4, !dbg !152
  %cmp = icmp ugt i32 %1, 66, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %counter, align 4, !dbg !157
  %conv = zext i32 %2 to i64, !dbg !157
  call void @clear_bit(i64 noundef %conv, ptr noundef @perfctr_nmi_owner) #8, !dbg !158
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !159
  br label %cleanup, !dbg !159

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #7, !dbg !159
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !159

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !160 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !164, metadata !DIExpression()), !dbg !166
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !165, metadata !DIExpression()), !dbg !167
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !168
  %1 = load i64, ptr %nr.addr, align 8, !dbg !169
  %div = sdiv i64 %1, 64, !dbg !169
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !170
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !171
  %2 = load i64, ptr %nr.addr, align 8, !dbg !172
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !173
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !174
  ret void, !dbg !175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @reserve_evntsel_nmi(i32 noundef %msr) #0 align 16 !dbg !176 {
entry:
  %retval = alloca i32, align 4
  %msr.addr = alloca i32, align 4
  %counter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !178, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #7, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %counter, metadata !179, metadata !DIExpression()), !dbg !182
  %0 = load i32, ptr %msr.addr, align 4, !dbg !183
  %call = call i32 @nmi_evntsel_msr_to_bit(i32 noundef %0) #8, !dbg !184
  store i32 %call, ptr %counter, align 4, !dbg !185
  %1 = load i32, ptr %counter, align 4, !dbg !186
  %cmp = icmp ugt i32 %1, 66, !dbg !188
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !190

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %counter, align 4, !dbg !191
  %conv = zext i32 %2 to i64, !dbg !191
  %call1 = call zeroext i1 @test_and_set_bit(i64 noundef %conv, ptr noundef @evntsel_nmi_owner) #8, !dbg !193
  br i1 %call1, label %if.end3, label %if.then2, !dbg !194

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !195

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !196

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #7, !dbg !197
  %3 = load i32, ptr %retval, align 4, !dbg !197
  ret i32 %3, !dbg !197
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nmi_evntsel_msr_to_bit(i32 noundef %msr) #3 align 16 !dbg !198 {
entry:
  %retval = alloca i32, align 4
  %msr.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !202
  %conv = zext i8 %0 to i32, !dbg !203
  switch i32 %conv, label %sw.epilog17 [
    i32 9, label %sw.bb
    i32 2, label %sw.bb
    i32 0, label %sw.bb3
    i32 10, label %sw.bb15
    i32 5, label %sw.bb15
  ], !dbg !204

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !205
  %cmp = icmp uge i32 %1, -1073675776, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %sw.bb
  %2 = load i32, ptr %msr.addr, align 4, !dbg !210
  %sub = sub i32 %2, -1073675776, !dbg !211
  %shr = lshr i32 %sub, 1, !dbg !212
  store i32 %shr, ptr %retval, align 4, !dbg !213
  br label %return, !dbg !213

if.end:                                           ; preds = %sw.bb
  %3 = load i32, ptr %msr.addr, align 4, !dbg !214
  %sub2 = sub i32 %3, -1073676288, !dbg !215
  store i32 %sub2, ptr %retval, align 4, !dbg !216
  br label %return, !dbg !216

sw.bb3:                                           ; preds = %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !217

cond.true:                                        ; preds = %sw.bb3
  br i1 true, label %if.then5, label %if.end7, !dbg !218

cond.false:                                       ; preds = %sw.bb3
  %call = call zeroext i1 @arch_test_bit(i64 noundef 107, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #8, !dbg !218
  br i1 %call, label %if.then5, label %if.end7, !dbg !217

if.then5:                                         ; preds = %cond.false, %cond.true
  %4 = load i32, ptr %msr.addr, align 4, !dbg !220
  %sub6 = sub i32 %4, 390, !dbg !221
  store i32 %sub6, ptr %retval, align 4, !dbg !222
  br label %return, !dbg !222

if.end7:                                          ; preds = %cond.false, %cond.true
  %5 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !223
  %conv8 = zext i8 %5 to i32, !dbg !224
  switch i32 %conv8, label %sw.epilog [
    i32 6, label %sw.bb9
    i32 11, label %sw.bb11
    i32 15, label %sw.bb13
  ], !dbg !225

sw.bb9:                                           ; preds = %if.end7
  %6 = load i32, ptr %msr.addr, align 4, !dbg !226
  %sub10 = sub i32 %6, 390, !dbg !228
  store i32 %sub10, ptr %retval, align 4, !dbg !229
  br label %return, !dbg !229

sw.bb11:                                          ; preds = %if.end7
  %7 = load i32, ptr %msr.addr, align 4, !dbg !230
  %sub12 = sub i32 %7, 40, !dbg !231
  store i32 %sub12, ptr %retval, align 4, !dbg !232
  br label %return, !dbg !232

sw.bb13:                                          ; preds = %if.end7
  %8 = load i32, ptr %msr.addr, align 4, !dbg !233
  %sub14 = sub i32 %8, 928, !dbg !234
  store i32 %sub14, ptr %retval, align 4, !dbg !235
  br label %return, !dbg !235

sw.epilog:                                        ; preds = %if.end7
  br label %sw.epilog17, !dbg !236

sw.bb15:                                          ; preds = %entry, %entry
  %9 = load i32, ptr %msr.addr, align 4, !dbg !237
  %sub16 = sub i32 %9, 390, !dbg !238
  store i32 %sub16, ptr %retval, align 4, !dbg !239
  br label %return, !dbg !239

sw.epilog17:                                      ; preds = %entry, %sw.epilog
  store i32 0, ptr %retval, align 4, !dbg !240
  br label %return, !dbg !240

return:                                           ; preds = %sw.epilog17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %if.then5, %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !241
  ret i32 %10, !dbg !241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @release_evntsel_nmi(i32 noundef %msr) #0 align 16 !dbg !242 {
entry:
  %msr.addr = alloca i32, align 4
  %counter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 4, ptr %counter) #7, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %counter, metadata !245, metadata !DIExpression()), !dbg !248
  %0 = load i32, ptr %msr.addr, align 4, !dbg !249
  %call = call i32 @nmi_evntsel_msr_to_bit(i32 noundef %0) #8, !dbg !250
  store i32 %call, ptr %counter, align 4, !dbg !251
  %1 = load i32, ptr %counter, align 4, !dbg !252
  %cmp = icmp ugt i32 %1, 66, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !256

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %counter, align 4, !dbg !257
  %conv = zext i32 %2 to i64, !dbg !257
  call void @clear_bit(i64 noundef %conv, ptr noundef @evntsel_nmi_owner) #8, !dbg !258
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !259
  br label %cleanup, !dbg !259

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %counter) #7, !dbg !259
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !259

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !260 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !267, metadata !DIExpression()), !dbg !269
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !268, metadata !DIExpression()), !dbg !270
  %0 = load i64, ptr %nr.addr, align 8, !dbg !271
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !272
  br i1 %1, label %cond.true, label %cond.false, !dbg !272

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !273
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !274
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !275
  %conv = zext i1 %call to i32, !dbg !275
  br label %cond.end, !dbg !272

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !276
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !277
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #8, !dbg !278
  %conv2 = zext i1 %call1 to i32, !dbg !278
  br label %cond.end, !dbg !272

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !272
  %tobool = icmp ne i32 %cond, 0, !dbg !272
  ret i1 %tobool, !dbg !279
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !280 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !284, metadata !DIExpression()), !dbg !286
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !285, metadata !DIExpression()), !dbg !287
  %0 = load i64, ptr %nr.addr, align 8, !dbg !288
  %and = and i64 %0, 63, !dbg !289
  %shl = shl i64 1, %and, !dbg !290
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !291
  %2 = load i64, ptr %nr.addr, align 8, !dbg !292
  %shr = ashr i64 %2, 6, !dbg !293
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !291
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !291
  %and1 = and i64 %shl, %3, !dbg !294
  %cmp = icmp ne i64 %and1, 0, !dbg !295
  ret i1 %cmp, !dbg !296
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !297 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !299, metadata !DIExpression()), !dbg !302
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !300, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #7, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !301, metadata !DIExpression()), !dbg !305
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !306
  %1 = load i64, ptr %nr.addr, align 8, !dbg !307
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #7, !dbg !308, !srcloc !309
  %3 = icmp ult i8 %2, 2, !dbg !308
  call void @llvm.assume(i1 %3), !dbg !308
  store i8 %2, ptr %oldbit, align 1, !dbg !308
  %4 = load i8, ptr %oldbit, align 1, !dbg !310, !range !311, !noundef !312
  %tobool = trunc i8 %4 to i1, !dbg !310
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #7, !dbg !313
  ret i1 %tobool, !dbg !314
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !315 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !327, metadata !DIExpression()), !dbg !329
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !328, metadata !DIExpression()), !dbg !330
  %0 = load ptr, ptr %v.addr, align 8, !dbg !331
  %1 = load i64, ptr %size.addr, align 8, !dbg !332
  %conv = trunc i64 %1 to i32, !dbg !332
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !333
  %2 = load ptr, ptr %v.addr, align 8, !dbg !334
  %3 = load i64, ptr %size.addr, align 8, !dbg !334
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !334
  ret void, !dbg !335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !336 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !338, metadata !DIExpression()), !dbg !342
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !339, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #7, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %c, metadata !340, metadata !DIExpression()), !dbg !344
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !344
  %1 = load i64, ptr %nr.addr, align 8, !dbg !344
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #7, !dbg !344, !srcloc !345
  %3 = icmp ult i8 %2, 2, !dbg !344
  call void @llvm.assume(i1 %3), !dbg !344
  store i8 %2, ptr %c, align 1, !dbg !344
  %4 = load i8, ptr %c, align 1, !dbg !344, !range !311, !noundef !312
  %tobool = trunc i8 %4 to i1, !dbg !344
  %frombool = zext i1 %tobool to i8, !dbg !344
  store i8 %frombool, ptr %tmp, align 1, !dbg !344
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #7, !dbg !346
  %5 = load i8, ptr %tmp, align 1, !dbg !344, !range !311, !noundef !312
  %tobool1 = trunc i8 %5 to i1, !dbg !344
  ret i1 %tobool1, !dbg !347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !348 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !353, metadata !DIExpression()), !dbg !355
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !354, metadata !DIExpression()), !dbg !356
  ret i1 true, !dbg !357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !358 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !363, metadata !DIExpression()), !dbg !366
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !364, metadata !DIExpression()), !dbg !367
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !365, metadata !DIExpression()), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !370 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !372, metadata !DIExpression()), !dbg !374
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !373, metadata !DIExpression()), !dbg !375
  %0 = load ptr, ptr %v.addr, align 8, !dbg !376
  %1 = load i64, ptr %size.addr, align 8, !dbg !377
  %conv = trunc i64 %1 to i32, !dbg !377
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !378
  %2 = load ptr, ptr %v.addr, align 8, !dbg !379
  %3 = load i64, ptr %size.addr, align 8, !dbg !379
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #8, !dbg !379
  ret void, !dbg !380
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !381 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !383, metadata !DIExpression()), !dbg !385
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !384, metadata !DIExpression()), !dbg !386
  %0 = load i64, ptr %nr.addr, align 8, !dbg !387
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !389
  br i1 %1, label %if.then, label %if.else, !dbg !390

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !391
  %3 = load i64, ptr %nr.addr, align 8, !dbg !391
  %shr = ashr i64 %3, 3, !dbg !391
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !391
  %4 = load i64, ptr %nr.addr, align 8, !dbg !393
  %and = and i64 %4, 7, !dbg !393
  %sh_prom = trunc i64 %and to i32, !dbg !393
  %shl = shl i32 1, %sh_prom, !dbg !393
  %not = xor i32 %shl, -1, !dbg !394
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #7, !dbg !395, !srcloc !396
  br label %if.end, !dbg !397

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !398
  %6 = load i64, ptr %nr.addr, align 8, !dbg !400
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #7, !dbg !401, !srcloc !402
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !403
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "perfctr_nmi_owner", scope: !2, file: !3, line: 41, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.perfctr-watchdog.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/perfctr-watchdog\22 -D KBUILD_BASENAME=\22perfctr_watchdog\22 -D KBUILD_MODNAME=\22perfctr_watchdog\22 -D __KBUILD_MODNAME=kmod_perfctr_watchdog -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/perfctr-watchdog.ll arch/x86/kernel/cpu/perfctr-watchdog.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/perfctr-watchdog.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09fadcd78b25517129da93908f727a38")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !16, !19}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!22 = !{!23, !25, !27, !29, !0, !31}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_reserve_perfctr_nmi316", scope: !2, file: !3, line: 121, type: !12, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_release_perfctr_nmi317", scope: !2, file: !3, line: 134, type: !12, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_reserve_evntsel_nmi318", scope: !2, file: !3, line: 149, type: !12, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_release_evntsel_nmi319", scope: !2, file: !3, line: 162, type: !12, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "evntsel_nmi_owner", scope: !2, file: !3, line: 42, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 128, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 2)
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "reserve_perfctr_nmi", scope: !3, file: !3, line: 108, type: !46, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!13, !7}
!48 = !{!49, !50}
!49 = !DILocalVariable(name: "msr", arg: 1, scope: !45, file: !3, line: 108, type: !7)
!50 = !DILocalVariable(name: "counter", scope: !45, file: !3, line: 110, type: !7)
!51 = !DILocation(line: 108, column: 38, scope: !45)
!52 = !DILocation(line: 110, column: 2, scope: !45)
!53 = !DILocation(line: 110, column: 15, scope: !45)
!54 = !DILocation(line: 112, column: 35, scope: !45)
!55 = !DILocation(line: 112, column: 12, scope: !45)
!56 = !DILocation(line: 112, column: 10, scope: !45)
!57 = !DILocation(line: 114, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !45, file: !3, line: 114, column: 6)
!59 = !DILocation(line: 114, column: 14, scope: !58)
!60 = !DILocation(line: 114, column: 6, scope: !45)
!61 = !DILocation(line: 115, column: 3, scope: !58)
!62 = !DILocation(line: 117, column: 24, scope: !63)
!63 = distinct !DILexicalBlock(scope: !45, file: !3, line: 117, column: 6)
!64 = !DILocation(line: 117, column: 7, scope: !63)
!65 = !DILocation(line: 117, column: 6, scope: !45)
!66 = !DILocation(line: 118, column: 3, scope: !63)
!67 = !DILocation(line: 119, column: 2, scope: !45)
!68 = !DILocation(line: 120, column: 1, scope: !45)
!69 = distinct !DISubprogram(name: "nmi_perfctr_msr_to_bit", scope: !3, file: !3, line: 45, type: !70, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!7, !7}
!72 = !{!73}
!73 = !DILocalVariable(name: "msr", arg: 1, scope: !69, file: !3, line: 45, type: !7)
!74 = !DILocation(line: 45, column: 64, scope: !69)
!75 = !DILocation(line: 48, column: 24, scope: !69)
!76 = !DILocation(line: 48, column: 10, scope: !69)
!77 = !DILocation(line: 48, column: 2, scope: !69)
!78 = !DILocation(line: 51, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 51, column: 7)
!80 = distinct !DILexicalBlock(scope: !69, file: !3, line: 48, column: 36)
!81 = !DILocation(line: 51, column: 11, scope: !79)
!82 = !DILocation(line: 51, column: 7, scope: !80)
!83 = !DILocation(line: 52, column: 12, scope: !79)
!84 = !DILocation(line: 52, column: 16, scope: !79)
!85 = !DILocation(line: 52, column: 37, scope: !79)
!86 = !DILocation(line: 52, column: 4, scope: !79)
!87 = !DILocation(line: 53, column: 10, scope: !80)
!88 = !DILocation(line: 53, column: 14, scope: !80)
!89 = !DILocation(line: 53, column: 3, scope: !80)
!90 = !DILocation(line: 55, column: 7, scope: !80)
!91 = !DILocation(line: 55, column: 7, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !3, line: 55, column: 7)
!93 = !DILocation(line: 56, column: 11, scope: !92)
!94 = !DILocation(line: 56, column: 15, scope: !92)
!95 = !DILocation(line: 56, column: 4, scope: !92)
!96 = !DILocation(line: 58, column: 25, scope: !80)
!97 = !DILocation(line: 58, column: 11, scope: !80)
!98 = !DILocation(line: 58, column: 3, scope: !80)
!99 = !DILocation(line: 60, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !80, file: !3, line: 58, column: 30)
!101 = !DILocation(line: 60, column: 15, scope: !100)
!102 = !DILocation(line: 60, column: 4, scope: !100)
!103 = !DILocation(line: 62, column: 11, scope: !100)
!104 = !DILocation(line: 62, column: 15, scope: !100)
!105 = !DILocation(line: 62, column: 4, scope: !100)
!106 = !DILocation(line: 64, column: 11, scope: !100)
!107 = !DILocation(line: 64, column: 15, scope: !100)
!108 = !DILocation(line: 64, column: 4, scope: !100)
!109 = !DILocation(line: 66, column: 3, scope: !80)
!110 = !DILocation(line: 69, column: 10, scope: !80)
!111 = !DILocation(line: 69, column: 14, scope: !80)
!112 = !DILocation(line: 69, column: 3, scope: !80)
!113 = !DILocation(line: 71, column: 2, scope: !69)
!114 = !DILocation(line: 72, column: 1, scope: !69)
!115 = distinct !DISubprogram(name: "test_and_set_bit", scope: !116, file: !116, line: 68, type: !117, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !124)
!116 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !21, !122}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 35, baseType: !121)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!124 = !{!125, !126}
!125 = !DILocalVariable(name: "nr", arg: 1, scope: !115, file: !116, line: 68, type: !21)
!126 = !DILocalVariable(name: "addr", arg: 2, scope: !115, file: !116, line: 68, type: !122)
!127 = !DILocation(line: 68, column: 51, scope: !115)
!128 = !DILocation(line: 68, column: 79, scope: !115)
!129 = !DILocation(line: 70, column: 2, scope: !115)
!130 = !DILocation(line: 70, column: 2, scope: !131)
!131 = distinct !DILexicalBlock(scope: !115, file: !116, line: 70, column: 2)
!132 = !DILocation(line: 71, column: 31, scope: !115)
!133 = !DILocation(line: 71, column: 38, scope: !115)
!134 = !DILocation(line: 71, column: 36, scope: !115)
!135 = !DILocation(line: 71, column: 2, scope: !115)
!136 = !DILocation(line: 72, column: 31, scope: !115)
!137 = !DILocation(line: 72, column: 35, scope: !115)
!138 = !DILocation(line: 72, column: 9, scope: !115)
!139 = !DILocation(line: 72, column: 2, scope: !115)
!140 = distinct !DISubprogram(name: "release_perfctr_nmi", scope: !3, file: !3, line: 123, type: !141, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !7}
!143 = !{!144, !145}
!144 = !DILocalVariable(name: "msr", arg: 1, scope: !140, file: !3, line: 123, type: !7)
!145 = !DILocalVariable(name: "counter", scope: !140, file: !3, line: 125, type: !7)
!146 = !DILocation(line: 123, column: 39, scope: !140)
!147 = !DILocation(line: 125, column: 2, scope: !140)
!148 = !DILocation(line: 125, column: 15, scope: !140)
!149 = !DILocation(line: 127, column: 35, scope: !140)
!150 = !DILocation(line: 127, column: 12, scope: !140)
!151 = !DILocation(line: 127, column: 10, scope: !140)
!152 = !DILocation(line: 129, column: 6, scope: !153)
!153 = distinct !DILexicalBlock(scope: !140, file: !3, line: 129, column: 6)
!154 = !DILocation(line: 129, column: 14, scope: !153)
!155 = !DILocation(line: 129, column: 6, scope: !140)
!156 = !DILocation(line: 130, column: 3, scope: !153)
!157 = !DILocation(line: 132, column: 12, scope: !140)
!158 = !DILocation(line: 132, column: 2, scope: !140)
!159 = !DILocation(line: 133, column: 1, scope: !140)
!160 = distinct !DISubprogram(name: "clear_bit", scope: !116, file: !116, line: 39, type: !161, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !21, !122}
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "nr", arg: 1, scope: !160, file: !116, line: 39, type: !21)
!165 = !DILocalVariable(name: "addr", arg: 2, scope: !160, file: !116, line: 39, type: !122)
!166 = !DILocation(line: 39, column: 44, scope: !160)
!167 = !DILocation(line: 39, column: 72, scope: !160)
!168 = !DILocation(line: 41, column: 26, scope: !160)
!169 = !DILocation(line: 41, column: 33, scope: !160)
!170 = !DILocation(line: 41, column: 31, scope: !160)
!171 = !DILocation(line: 41, column: 2, scope: !160)
!172 = !DILocation(line: 42, column: 17, scope: !160)
!173 = !DILocation(line: 42, column: 21, scope: !160)
!174 = !DILocation(line: 42, column: 2, scope: !160)
!175 = !DILocation(line: 43, column: 1, scope: !160)
!176 = distinct !DISubprogram(name: "reserve_evntsel_nmi", scope: !3, file: !3, line: 136, type: !46, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "msr", arg: 1, scope: !176, file: !3, line: 136, type: !7)
!179 = !DILocalVariable(name: "counter", scope: !176, file: !3, line: 138, type: !7)
!180 = !DILocation(line: 136, column: 38, scope: !176)
!181 = !DILocation(line: 138, column: 2, scope: !176)
!182 = !DILocation(line: 138, column: 15, scope: !176)
!183 = !DILocation(line: 140, column: 35, scope: !176)
!184 = !DILocation(line: 140, column: 12, scope: !176)
!185 = !DILocation(line: 140, column: 10, scope: !176)
!186 = !DILocation(line: 142, column: 6, scope: !187)
!187 = distinct !DILexicalBlock(scope: !176, file: !3, line: 142, column: 6)
!188 = !DILocation(line: 142, column: 14, scope: !187)
!189 = !DILocation(line: 142, column: 6, scope: !176)
!190 = !DILocation(line: 143, column: 3, scope: !187)
!191 = !DILocation(line: 145, column: 24, scope: !192)
!192 = distinct !DILexicalBlock(scope: !176, file: !3, line: 145, column: 6)
!193 = !DILocation(line: 145, column: 7, scope: !192)
!194 = !DILocation(line: 145, column: 6, scope: !176)
!195 = !DILocation(line: 146, column: 3, scope: !192)
!196 = !DILocation(line: 147, column: 2, scope: !176)
!197 = !DILocation(line: 148, column: 1, scope: !176)
!198 = distinct !DISubprogram(name: "nmi_evntsel_msr_to_bit", scope: !3, file: !3, line: 78, type: !70, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!199 = !{!200}
!200 = !DILocalVariable(name: "msr", arg: 1, scope: !198, file: !3, line: 78, type: !7)
!201 = !DILocation(line: 78, column: 64, scope: !198)
!202 = !DILocation(line: 81, column: 24, scope: !198)
!203 = !DILocation(line: 81, column: 10, scope: !198)
!204 = !DILocation(line: 81, column: 2, scope: !198)
!205 = !DILocation(line: 84, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 84, column: 7)
!207 = distinct !DILexicalBlock(scope: !198, file: !3, line: 81, column: 36)
!208 = !DILocation(line: 84, column: 11, scope: !206)
!209 = !DILocation(line: 84, column: 7, scope: !207)
!210 = !DILocation(line: 85, column: 12, scope: !206)
!211 = !DILocation(line: 85, column: 16, scope: !206)
!212 = !DILocation(line: 85, column: 37, scope: !206)
!213 = !DILocation(line: 85, column: 4, scope: !206)
!214 = !DILocation(line: 86, column: 10, scope: !207)
!215 = !DILocation(line: 86, column: 14, scope: !207)
!216 = !DILocation(line: 86, column: 3, scope: !207)
!217 = !DILocation(line: 88, column: 7, scope: !207)
!218 = !DILocation(line: 88, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !3, line: 88, column: 7)
!220 = !DILocation(line: 89, column: 11, scope: !219)
!221 = !DILocation(line: 89, column: 15, scope: !219)
!222 = !DILocation(line: 89, column: 4, scope: !219)
!223 = !DILocation(line: 91, column: 25, scope: !207)
!224 = !DILocation(line: 91, column: 11, scope: !207)
!225 = !DILocation(line: 91, column: 3, scope: !207)
!226 = !DILocation(line: 93, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !207, file: !3, line: 91, column: 30)
!228 = !DILocation(line: 93, column: 15, scope: !227)
!229 = !DILocation(line: 93, column: 4, scope: !227)
!230 = !DILocation(line: 95, column: 11, scope: !227)
!231 = !DILocation(line: 95, column: 15, scope: !227)
!232 = !DILocation(line: 95, column: 4, scope: !227)
!233 = !DILocation(line: 97, column: 11, scope: !227)
!234 = !DILocation(line: 97, column: 15, scope: !227)
!235 = !DILocation(line: 97, column: 4, scope: !227)
!236 = !DILocation(line: 99, column: 3, scope: !207)
!237 = !DILocation(line: 102, column: 10, scope: !207)
!238 = !DILocation(line: 102, column: 14, scope: !207)
!239 = !DILocation(line: 102, column: 3, scope: !207)
!240 = !DILocation(line: 104, column: 2, scope: !198)
!241 = !DILocation(line: 106, column: 1, scope: !198)
!242 = distinct !DISubprogram(name: "release_evntsel_nmi", scope: !3, file: !3, line: 151, type: !141, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !243)
!243 = !{!244, !245}
!244 = !DILocalVariable(name: "msr", arg: 1, scope: !242, file: !3, line: 151, type: !7)
!245 = !DILocalVariable(name: "counter", scope: !242, file: !3, line: 153, type: !7)
!246 = !DILocation(line: 151, column: 39, scope: !242)
!247 = !DILocation(line: 153, column: 2, scope: !242)
!248 = !DILocation(line: 153, column: 15, scope: !242)
!249 = !DILocation(line: 155, column: 35, scope: !242)
!250 = !DILocation(line: 155, column: 12, scope: !242)
!251 = !DILocation(line: 155, column: 10, scope: !242)
!252 = !DILocation(line: 157, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !242, file: !3, line: 157, column: 6)
!254 = !DILocation(line: 157, column: 14, scope: !253)
!255 = !DILocation(line: 157, column: 6, scope: !242)
!256 = !DILocation(line: 158, column: 3, scope: !253)
!257 = !DILocation(line: 160, column: 12, scope: !242)
!258 = !DILocation(line: 160, column: 2, scope: !242)
!259 = !DILocation(line: 161, column: 1, scope: !242)
!260 = distinct !DISubprogram(name: "arch_test_bit", scope: !261, file: !261, line: 237, type: !262, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!261 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!262 = !DISubroutineType(types: !263)
!263 = !{!119, !15, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!266 = !{!267, !268}
!267 = !DILocalVariable(name: "nr", arg: 1, scope: !260, file: !261, line: 237, type: !15)
!268 = !DILocalVariable(name: "addr", arg: 2, scope: !260, file: !261, line: 237, type: !264)
!269 = !DILocation(line: 237, column: 29, scope: !260)
!270 = !DILocation(line: 237, column: 63, scope: !260)
!271 = !DILocation(line: 239, column: 30, scope: !260)
!272 = !DILocation(line: 239, column: 9, scope: !260)
!273 = !DILocation(line: 239, column: 54, scope: !260)
!274 = !DILocation(line: 239, column: 58, scope: !260)
!275 = !DILocation(line: 239, column: 36, scope: !260)
!276 = !DILocation(line: 240, column: 26, scope: !260)
!277 = !DILocation(line: 240, column: 30, scope: !260)
!278 = !DILocation(line: 240, column: 8, scope: !260)
!279 = !DILocation(line: 239, column: 2, scope: !260)
!280 = distinct !DISubprogram(name: "constant_test_bit", scope: !261, file: !261, line: 204, type: !281, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!119, !21, !264}
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "nr", arg: 1, scope: !280, file: !261, line: 204, type: !21)
!285 = !DILocalVariable(name: "addr", arg: 2, scope: !280, file: !261, line: 204, type: !264)
!286 = !DILocation(line: 204, column: 52, scope: !280)
!287 = !DILocation(line: 204, column: 86, scope: !280)
!288 = !DILocation(line: 206, column: 19, scope: !280)
!289 = !DILocation(line: 206, column: 22, scope: !280)
!290 = !DILocation(line: 206, column: 15, scope: !280)
!291 = !DILocation(line: 207, column: 4, scope: !280)
!292 = !DILocation(line: 207, column: 9, scope: !280)
!293 = !DILocation(line: 207, column: 12, scope: !280)
!294 = !DILocation(line: 206, column: 44, scope: !280)
!295 = !DILocation(line: 207, column: 37, scope: !280)
!296 = !DILocation(line: 206, column: 2, scope: !280)
!297 = distinct !DISubprogram(name: "variable_test_bit", scope: !261, file: !261, line: 224, type: !281, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "nr", arg: 1, scope: !297, file: !261, line: 224, type: !21)
!300 = !DILocalVariable(name: "addr", arg: 2, scope: !297, file: !261, line: 224, type: !264)
!301 = !DILocalVariable(name: "oldbit", scope: !297, file: !261, line: 226, type: !119)
!302 = !DILocation(line: 224, column: 52, scope: !297)
!303 = !DILocation(line: 224, column: 86, scope: !297)
!304 = !DILocation(line: 226, column: 2, scope: !297)
!305 = !DILocation(line: 226, column: 7, scope: !297)
!306 = !DILocation(line: 231, column: 33, scope: !297)
!307 = !DILocation(line: 231, column: 46, scope: !297)
!308 = !DILocation(line: 228, column: 2, scope: !297)
!309 = !{i64 2148067815, i64 2148067889}
!310 = !DILocation(line: 233, column: 9, scope: !297)
!311 = !{i8 0, i8 2}
!312 = !{}
!313 = !DILocation(line: 234, column: 1, scope: !297)
!314 = !DILocation(line: 233, column: 2, scope: !297)
!315 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !316, file: !316, line: 94, type: !317, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!316 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319, !322}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 61, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !15)
!326 = !{!327, !328}
!327 = !DILocalVariable(name: "v", arg: 1, scope: !315, file: !316, line: 94, type: !319)
!328 = !DILocalVariable(name: "size", arg: 2, scope: !315, file: !316, line: 94, type: !322)
!329 = !DILocation(line: 94, column: 79, scope: !315)
!330 = !DILocation(line: 94, column: 89, scope: !315)
!331 = !DILocation(line: 96, column: 20, scope: !315)
!332 = !DILocation(line: 96, column: 23, scope: !315)
!333 = !DILocation(line: 96, column: 2, scope: !315)
!334 = !DILocation(line: 97, column: 2, scope: !315)
!335 = !DILocation(line: 98, column: 1, scope: !315)
!336 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !261, file: !261, line: 136, type: !117, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "nr", arg: 1, scope: !336, file: !261, line: 136, type: !21)
!339 = !DILocalVariable(name: "addr", arg: 2, scope: !336, file: !261, line: 136, type: !122)
!340 = !DILocalVariable(name: "c", scope: !341, file: !261, line: 138, type: !119)
!341 = distinct !DILexicalBlock(scope: !336, file: !261, line: 138, column: 9)
!342 = !DILocation(line: 136, column: 28, scope: !336)
!343 = !DILocation(line: 136, column: 56, scope: !336)
!344 = !DILocation(line: 138, column: 9, scope: !341)
!345 = !{i64 2148060654, i64 2148060693, i64 2148060714, i64 2148060751, i64 2148060774, i64 2148060783, i64 2148060886}
!346 = !DILocation(line: 138, column: 9, scope: !336)
!347 = !DILocation(line: 138, column: 2, scope: !336)
!348 = distinct !DISubprogram(name: "kasan_check_write", scope: !349, file: !349, line: 44, type: !350, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !352)
!349 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!350 = !DISubroutineType(types: !351)
!351 = !{!119, !319, !7}
!352 = !{!353, !354}
!353 = !DILocalVariable(name: "p", arg: 1, scope: !348, file: !349, line: 44, type: !319)
!354 = !DILocalVariable(name: "size", arg: 2, scope: !348, file: !349, line: 44, type: !7)
!355 = !DILocation(line: 44, column: 59, scope: !348)
!356 = !DILocation(line: 44, column: 75, scope: !348)
!357 = !DILocation(line: 46, column: 2, scope: !348)
!358 = distinct !DISubprogram(name: "kcsan_check_access", scope: !359, file: !359, line: 229, type: !360, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!359 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!360 = !DISubroutineType(types: !361)
!361 = !{null, !319, !322, !13}
!362 = !{!363, !364, !365}
!363 = !DILocalVariable(name: "ptr", arg: 1, scope: !358, file: !359, line: 229, type: !319)
!364 = !DILocalVariable(name: "size", arg: 2, scope: !358, file: !359, line: 229, type: !322)
!365 = !DILocalVariable(name: "type", arg: 3, scope: !358, file: !359, line: 230, type: !13)
!366 = !DILocation(line: 229, column: 60, scope: !358)
!367 = !DILocation(line: 229, column: 72, scope: !358)
!368 = !DILocation(line: 230, column: 15, scope: !358)
!369 = !DILocation(line: 230, column: 23, scope: !358)
!370 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !316, file: !316, line: 80, type: !317, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!371 = !{!372, !373}
!372 = !DILocalVariable(name: "v", arg: 1, scope: !370, file: !316, line: 80, type: !319)
!373 = !DILocalVariable(name: "size", arg: 2, scope: !370, file: !316, line: 80, type: !322)
!374 = !DILocation(line: 80, column: 74, scope: !370)
!375 = !DILocation(line: 80, column: 84, scope: !370)
!376 = !DILocation(line: 82, column: 20, scope: !370)
!377 = !DILocation(line: 82, column: 23, scope: !370)
!378 = !DILocation(line: 82, column: 2, scope: !370)
!379 = !DILocation(line: 83, column: 2, scope: !370)
!380 = !DILocation(line: 84, column: 1, scope: !370)
!381 = distinct !DISubprogram(name: "arch_clear_bit", scope: !261, file: !261, line: 72, type: !161, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!382 = !{!383, !384}
!383 = !DILocalVariable(name: "nr", arg: 1, scope: !381, file: !261, line: 72, type: !21)
!384 = !DILocalVariable(name: "addr", arg: 2, scope: !381, file: !261, line: 72, type: !122)
!385 = !DILocation(line: 72, column: 21, scope: !381)
!386 = !DILocation(line: 72, column: 49, scope: !381)
!387 = !DILocation(line: 74, column: 27, scope: !388)
!388 = distinct !DILexicalBlock(scope: !381, file: !261, line: 74, column: 6)
!389 = !DILocation(line: 74, column: 6, scope: !388)
!390 = !DILocation(line: 74, column: 6, scope: !381)
!391 = !DILocation(line: 76, column: 6, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !261, line: 74, column: 32)
!393 = !DILocation(line: 77, column: 13, scope: !392)
!394 = !DILocation(line: 77, column: 12, scope: !392)
!395 = !DILocation(line: 75, column: 3, scope: !392)
!396 = !{i64 2148055491, i64 2148055530, i64 2148055551, i64 2148055588, i64 2148055611, i64 2148055481}
!397 = !DILocation(line: 78, column: 2, scope: !392)
!398 = !DILocation(line: 80, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !388, file: !261, line: 78, column: 9)
!400 = !DILocation(line: 80, column: 32, scope: !399)
!401 = !DILocation(line: 79, column: 3, scope: !399)
!402 = !{i64 2148055776, i64 2148055815, i64 2148055836, i64 2148055873, i64 2148055896, i64 2148055766}
!403 = !DILocation(line: 82, column: 1, scope: !381)
