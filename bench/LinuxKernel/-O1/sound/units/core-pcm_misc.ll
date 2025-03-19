; ModuleID = 'sound/core/pcm_misc.c'
source_filename = "sound/core/pcm_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_signed: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_signed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_unsigned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_unsigned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_linear: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_linear ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_little_endian: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_little_endian ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_big_endian: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_big_endian ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_width: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_width ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_physical_width: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_physical_width ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_size: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_silence_64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_silence_64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_format_set_silence: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_format_set_silence ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_hw_limit_rates: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_hw_limit_rates ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_rate_to_rate_bit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_rate_to_rate_bit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_rate_bit_to_rate: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_rate_bit_to_rate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_rate_mask_intersect: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_rate_mask_intersect ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_pcm_rate_range_to_bits: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_pcm_rate_range_to_bits ; .previous"

%struct.pcm_format_data = type { i8, i8, i8, i8, [8 x i8] }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64 }

@pcm_formats = internal constant [53 x %struct.pcm_format_data] [%struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 0, [8 x i8] c"\00\80\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\80\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 32, i8 0, i8 0, [8 x i8] c"\00\80\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\00\80\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 64, i8 64, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 64, i8 64, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 -1, [8 x i8] c"\7F\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 8, i8 8, i8 -1, i8 -1, [8 x i8] c"U\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 4, i8 4, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 32, i8 1, i8 0, [8 x i8] c"\00\00\08\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 32, i8 0, i8 0, [8 x i8] c"\00\08\00\00\00\00\00\00" }, %struct.pcm_format_data zeroinitializer, %struct.pcm_format_data zeroinitializer, %struct.pcm_format_data { i8 0, i8 0, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 24, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\80\00\00\00\00\00" }, %struct.pcm_format_data { i8 24, i8 24, i8 0, i8 0, [8 x i8] c"\80\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 20, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\08\00\00\00\00\00" }, %struct.pcm_format_data { i8 20, i8 24, i8 0, i8 0, [8 x i8] c"\08\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 18, i8 24, i8 1, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 18, i8 24, i8 0, i8 1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 18, i8 24, i8 1, i8 0, [8 x i8] c"\00\00\02\00\00\00\00\00" }, %struct.pcm_format_data { i8 18, i8 24, i8 0, i8 0, [8 x i8] c"\02\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 3, i8 3, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 3, i8 8, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 5, i8 5, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 5, i8 8, i8 -1, i8 -1, [8 x i8] zeroinitializer }, %struct.pcm_format_data { i8 8, i8 8, i8 1, i8 0, [8 x i8] c"i\00\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 1, i8 0, [8 x i8] c"ii\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 1, i8 0, [8 x i8] c"iiii\00\00\00\00" }, %struct.pcm_format_data { i8 16, i8 16, i8 0, i8 0, [8 x i8] c"ii\00\00\00\00\00\00" }, %struct.pcm_format_data { i8 32, i8 32, i8 0, i8 0, [8 x i8] c"iiii\00\00\00\00" }], align 16, !dbg !0
@__UNIQUE_ID___addressable_snd_pcm_format_signed289 = internal global ptr @snd_pcm_format_signed, section ".discard.addressable", align 8, !dbg !10
@__UNIQUE_ID___addressable_snd_pcm_format_unsigned290 = internal global ptr @snd_pcm_format_unsigned, section ".discard.addressable", align 8, !dbg !12
@__UNIQUE_ID___addressable_snd_pcm_format_linear291 = internal global ptr @snd_pcm_format_linear, section ".discard.addressable", align 8, !dbg !14
@__UNIQUE_ID___addressable_snd_pcm_format_little_endian292 = internal global ptr @snd_pcm_format_little_endian, section ".discard.addressable", align 8, !dbg !16
@__UNIQUE_ID___addressable_snd_pcm_format_big_endian293 = internal global ptr @snd_pcm_format_big_endian, section ".discard.addressable", align 8, !dbg !18
@__UNIQUE_ID___addressable_snd_pcm_format_width294 = internal global ptr @snd_pcm_format_width, section ".discard.addressable", align 8, !dbg !20
@__UNIQUE_ID___addressable_snd_pcm_format_physical_width295 = internal global ptr @snd_pcm_format_physical_width, section ".discard.addressable", align 8, !dbg !22
@__UNIQUE_ID___addressable_snd_pcm_format_size296 = internal global ptr @snd_pcm_format_size, section ".discard.addressable", align 8, !dbg !24
@__UNIQUE_ID___addressable_snd_pcm_format_silence_64297 = internal global ptr @snd_pcm_format_silence_64, section ".discard.addressable", align 8, !dbg !26
@__UNIQUE_ID___addressable_snd_pcm_format_set_silence298 = internal global ptr @snd_pcm_format_set_silence, section ".discard.addressable", align 8, !dbg !28
@snd_pcm_known_rates = external dso_local constant %struct.snd_pcm_hw_constraint_list, align 8
@__UNIQUE_ID___addressable_snd_pcm_hw_limit_rates299 = internal global ptr @snd_pcm_hw_limit_rates, section ".discard.addressable", align 8, !dbg !30
@__UNIQUE_ID___addressable_snd_pcm_rate_to_rate_bit300 = internal global ptr @snd_pcm_rate_to_rate_bit, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID___addressable_snd_pcm_rate_bit_to_rate301 = internal global ptr @snd_pcm_rate_bit_to_rate, section ".discard.addressable", align 8, !dbg !34
@__UNIQUE_ID___addressable_snd_pcm_rate_mask_intersect302 = internal global ptr @snd_pcm_rate_mask_intersect, section ".discard.addressable", align 8, !dbg !36
@__UNIQUE_ID___addressable_snd_pcm_rate_range_to_bits303 = internal global ptr @snd_pcm_rate_range_to_bits, section ".discard.addressable", align 8, !dbg !38
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID___addressable_snd_pcm_format_signed289, ptr @__UNIQUE_ID___addressable_snd_pcm_format_unsigned290, ptr @__UNIQUE_ID___addressable_snd_pcm_format_linear291, ptr @__UNIQUE_ID___addressable_snd_pcm_format_little_endian292, ptr @__UNIQUE_ID___addressable_snd_pcm_format_big_endian293, ptr @__UNIQUE_ID___addressable_snd_pcm_format_width294, ptr @__UNIQUE_ID___addressable_snd_pcm_format_physical_width295, ptr @__UNIQUE_ID___addressable_snd_pcm_format_size296, ptr @__UNIQUE_ID___addressable_snd_pcm_format_silence_64297, ptr @__UNIQUE_ID___addressable_snd_pcm_format_set_silence298, ptr @__UNIQUE_ID___addressable_snd_pcm_hw_limit_rates299, ptr @__UNIQUE_ID___addressable_snd_pcm_rate_to_rate_bit300, ptr @__UNIQUE_ID___addressable_snd_pcm_rate_bit_to_rate301, ptr @__UNIQUE_ID___addressable_snd_pcm_rate_mask_intersect302, ptr @__UNIQUE_ID___addressable_snd_pcm_rate_range_to_bits303], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_signed(i32 noundef %format) #0 align 16 !dbg !65 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !69, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #5, !dbg !72
  call void @llvm.dbg.declare(metadata ptr %val, metadata !70, metadata !DIExpression()), !dbg !73
  %0 = load i32, ptr %format.addr, align 4, !dbg !74
  %call = call zeroext i1 @valid_format(i32 noundef %0) #6, !dbg !76
  br i1 %call, label %if.end, label %if.then, !dbg !77

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !78
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !78

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %format.addr, align 4, !dbg !79
  %idxprom = sext i32 %1 to i64, !dbg !80
  %arrayidx = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom, !dbg !80
  %signd = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx, i32 0, i32 3, !dbg !81
  %2 = load i8, ptr %signd, align 1, !dbg !81
  %conv = sext i8 %2 to i32, !dbg !80
  store i32 %conv, ptr %val, align 4, !dbg !82
  %3 = load i32, ptr %val, align 4, !dbg !83
  %cmp = icmp slt i32 %3, 0, !dbg !85
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !86

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !87
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !87

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %val, align 4, !dbg !88
  store i32 %4, ptr %retval, align 4, !dbg !89
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !89

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #5, !dbg !90
  %5 = load i32, ptr %retval, align 4, !dbg !90
  ret i32 %5, !dbg !90
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @valid_format(i32 noundef %format) #0 align 16 !dbg !91 {
entry:
  %format.addr = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = load i32, ptr %format.addr, align 4, !dbg !100
  %cmp = icmp sge i32 %0, 0, !dbg !101
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !102

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %format.addr, align 4, !dbg !103
  %cmp1 = icmp sle i32 %1, 52, !dbg !104
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !105
  ret i1 %2, !dbg !106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_unsigned(i32 noundef %format) #0 align 16 !dbg !107 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #5, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %val, metadata !110, metadata !DIExpression()), !dbg !113
  %0 = load i32, ptr %format.addr, align 4, !dbg !114
  %call = call i32 @snd_pcm_format_signed(i32 noundef %0) #6, !dbg !115
  store i32 %call, ptr %val, align 4, !dbg !116
  %1 = load i32, ptr %val, align 4, !dbg !117
  %cmp = icmp slt i32 %1, 0, !dbg !119
  br i1 %cmp, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %val, align 4, !dbg !121
  store i32 %2, ptr %retval, align 4, !dbg !122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !122

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %val, align 4, !dbg !123
  %tobool = icmp ne i32 %3, 0, !dbg !124
  %lnot = xor i1 %tobool, true, !dbg !124
  %lnot.ext = zext i1 %lnot to i32, !dbg !124
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !125

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #5, !dbg !126
  %4 = load i32, ptr %retval, align 4, !dbg !126
  ret i32 %4, !dbg !126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_linear(i32 noundef %format) #0 align 16 !dbg !127 {
entry:
  %format.addr = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load i32, ptr %format.addr, align 4, !dbg !131
  %call = call i32 @snd_pcm_format_signed(i32 noundef %0) #6, !dbg !132
  %cmp = icmp sge i32 %call, 0, !dbg !133
  %conv = zext i1 %cmp to i32, !dbg !133
  ret i32 %conv, !dbg !134
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_little_endian(i32 noundef %format) #0 align 16 !dbg !135 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !137, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #5, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %val, metadata !138, metadata !DIExpression()), !dbg !141
  %0 = load i32, ptr %format.addr, align 4, !dbg !142
  %call = call zeroext i1 @valid_format(i32 noundef %0) #6, !dbg !144
  br i1 %call, label %if.end, label %if.then, !dbg !145

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !146
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !146

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %format.addr, align 4, !dbg !147
  %idxprom = sext i32 %1 to i64, !dbg !148
  %arrayidx = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom, !dbg !148
  %le = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx, i32 0, i32 2, !dbg !149
  %2 = load i8, ptr %le, align 2, !dbg !149
  %conv = sext i8 %2 to i32, !dbg !148
  store i32 %conv, ptr %val, align 4, !dbg !150
  %3 = load i32, ptr %val, align 4, !dbg !151
  %cmp = icmp slt i32 %3, 0, !dbg !153
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !154

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %val, align 4, !dbg !156
  store i32 %4, ptr %retval, align 4, !dbg !157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !157

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #5, !dbg !158
  %5 = load i32, ptr %retval, align 4, !dbg !158
  ret i32 %5, !dbg !158
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_big_endian(i32 noundef %format) #0 align 16 !dbg !159 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !161, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #5, !dbg !164
  call void @llvm.dbg.declare(metadata ptr %val, metadata !162, metadata !DIExpression()), !dbg !165
  %0 = load i32, ptr %format.addr, align 4, !dbg !166
  %call = call i32 @snd_pcm_format_little_endian(i32 noundef %0) #6, !dbg !167
  store i32 %call, ptr %val, align 4, !dbg !168
  %1 = load i32, ptr %val, align 4, !dbg !169
  %cmp = icmp slt i32 %1, 0, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !172

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %val, align 4, !dbg !173
  store i32 %2, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %val, align 4, !dbg !175
  %tobool = icmp ne i32 %3, 0, !dbg !176
  %lnot = xor i1 %tobool, true, !dbg !176
  %lnot.ext = zext i1 %lnot to i32, !dbg !176
  store i32 %lnot.ext, ptr %retval, align 4, !dbg !177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !177

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #5, !dbg !178
  %4 = load i32, ptr %retval, align 4, !dbg !178
  ret i32 %4, !dbg !178
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_width(i32 noundef %format) #0 align 16 !dbg !179 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !181, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #5, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %val, metadata !182, metadata !DIExpression()), !dbg !185
  %0 = load i32, ptr %format.addr, align 4, !dbg !186
  %call = call zeroext i1 @valid_format(i32 noundef %0) #6, !dbg !188
  br i1 %call, label %if.end, label %if.then, !dbg !189

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !190

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %format.addr, align 4, !dbg !191
  %idxprom = sext i32 %1 to i64, !dbg !192
  %arrayidx = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom, !dbg !192
  %width = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx, i32 0, i32 0, !dbg !193
  %2 = load i8, ptr %width, align 4, !dbg !193
  %conv = zext i8 %2 to i32, !dbg !192
  store i32 %conv, ptr %val, align 4, !dbg !194
  %3 = load i32, ptr %val, align 4, !dbg !195
  %tobool = icmp ne i32 %3, 0, !dbg !195
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !197

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !198

if.end2:                                          ; preds = %if.end
  %4 = load i32, ptr %val, align 4, !dbg !199
  store i32 %4, ptr %retval, align 4, !dbg !200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !200

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #5, !dbg !201
  %5 = load i32, ptr %retval, align 4, !dbg !201
  ret i32 %5, !dbg !201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_physical_width(i32 noundef %format) #0 align 16 !dbg !202 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !204, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #5, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %val, metadata !205, metadata !DIExpression()), !dbg !208
  %0 = load i32, ptr %format.addr, align 4, !dbg !209
  %call = call zeroext i1 @valid_format(i32 noundef %0) #6, !dbg !211
  br i1 %call, label %if.end, label %if.then, !dbg !212

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !213

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %format.addr, align 4, !dbg !214
  %idxprom = sext i32 %1 to i64, !dbg !215
  %arrayidx = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom, !dbg !215
  %phys = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx, i32 0, i32 1, !dbg !216
  %2 = load i8, ptr %phys, align 1, !dbg !216
  %conv = zext i8 %2 to i32, !dbg !215
  store i32 %conv, ptr %val, align 4, !dbg !217
  %3 = load i32, ptr %val, align 4, !dbg !218
  %tobool = icmp ne i32 %3, 0, !dbg !218
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !220

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !221

if.end2:                                          ; preds = %if.end
  %4 = load i32, ptr %val, align 4, !dbg !222
  store i32 %4, ptr %retval, align 4, !dbg !223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !223

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #5, !dbg !224
  %5 = load i32, ptr %retval, align 4, !dbg !224
  ret i32 %5, !dbg !224
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @snd_pcm_format_size(i32 noundef %format, i64 noundef %samples) #0 align 16 !dbg !225 {
entry:
  %retval = alloca i64, align 8
  %format.addr = alloca i32, align 4
  %samples.addr = alloca i64, align 8
  %phys_width = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !238, metadata !DIExpression()), !dbg !241
  store i64 %samples, ptr %samples.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %samples.addr, metadata !239, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 4, ptr %phys_width) #5, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %phys_width, metadata !240, metadata !DIExpression()), !dbg !244
  %0 = load i32, ptr %format.addr, align 4, !dbg !245
  %call = call i32 @snd_pcm_format_physical_width(i32 noundef %0) #6, !dbg !246
  store i32 %call, ptr %phys_width, align 4, !dbg !244
  %1 = load i32, ptr %phys_width, align 4, !dbg !247
  %cmp = icmp slt i32 %1, 0, !dbg !249
  br i1 %cmp, label %if.then, label %if.end, !dbg !250

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !251

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %samples.addr, align 8, !dbg !252
  %3 = load i32, ptr %phys_width, align 4, !dbg !253
  %conv = sext i32 %3 to i64, !dbg !253
  %mul = mul i64 %2, %conv, !dbg !254
  %div = udiv i64 %mul, 8, !dbg !255
  store i64 %div, ptr %retval, align 8, !dbg !256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !256

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %phys_width) #5, !dbg !257
  %4 = load i64, ptr %retval, align 8, !dbg !257
  ret i64 %4, !dbg !257
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_pcm_format_silence_64(i32 noundef %format) #0 align 16 !dbg !258 {
entry:
  %retval = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load i32, ptr %format.addr, align 4, !dbg !266
  %call = call zeroext i1 @valid_format(i32 noundef %0) #6, !dbg !268
  br i1 %call, label %if.end, label %if.then, !dbg !269

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !270
  br label %return, !dbg !270

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %format.addr, align 4, !dbg !271
  %idxprom = sext i32 %1 to i64, !dbg !273
  %arrayidx = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom, !dbg !273
  %phys = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx, i32 0, i32 1, !dbg !274
  %2 = load i8, ptr %phys, align 1, !dbg !274
  %tobool = icmp ne i8 %2, 0, !dbg !273
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !275

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !276
  br label %return, !dbg !276

if.end2:                                          ; preds = %if.end
  %3 = load i32, ptr %format.addr, align 4, !dbg !277
  %idxprom3 = sext i32 %3 to i64, !dbg !278
  %arrayidx4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom3, !dbg !278
  %silence = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx4, i32 0, i32 4, !dbg !279
  %arraydecay = getelementptr inbounds [8 x i8], ptr %silence, i64 0, i64 0, !dbg !278
  store ptr %arraydecay, ptr %retval, align 8, !dbg !280
  br label %return, !dbg !280

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %4 = load ptr, ptr %retval, align 8, !dbg !281
  ret ptr %4, !dbg !281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_format_set_silence(i32 noundef %format, ptr noundef %data, i32 noundef %samples) #0 align 16 !dbg !282 {
entry:
  %retval = alloca i32, align 4
  %format.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %samples.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %dst = alloca ptr, align 8
  %pat = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %bytes = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !287, metadata !DIExpression()), !dbg !297
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !288, metadata !DIExpression()), !dbg !298
  store i32 %samples, ptr %samples.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %samples.addr, metadata !289, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 4, ptr %width) #5, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %width, metadata !290, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #5, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !291, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %pat) #5, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %pat, metadata !293, metadata !DIExpression()), !dbg !305
  %0 = load i32, ptr %format.addr, align 4, !dbg !306
  %call = call zeroext i1 @valid_format(i32 noundef %0) #6, !dbg !308
  br i1 %call, label %if.end, label %if.then, !dbg !309

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !310

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %samples.addr, align 4, !dbg !311
  %cmp = icmp eq i32 %1, 0, !dbg !313
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !314

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !315

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %format.addr, align 4, !dbg !316
  %idxprom = sext i32 %2 to i64, !dbg !317
  %arrayidx = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom, !dbg !317
  %phys = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx, i32 0, i32 1, !dbg !318
  %3 = load i8, ptr %phys, align 1, !dbg !318
  %conv = zext i8 %3 to i32, !dbg !317
  store i32 %conv, ptr %width, align 4, !dbg !319
  %4 = load i32, ptr %format.addr, align 4, !dbg !320
  %idxprom3 = sext i32 %4 to i64, !dbg !321
  %arrayidx4 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom3, !dbg !321
  %silence = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx4, i32 0, i32 4, !dbg !322
  %arraydecay = getelementptr inbounds [8 x i8], ptr %silence, i64 0, i64 0, !dbg !321
  store ptr %arraydecay, ptr %pat, align 8, !dbg !323
  %5 = load i32, ptr %width, align 4, !dbg !324
  %tobool = icmp ne i32 %5, 0, !dbg !324
  br i1 %tobool, label %lor.lhs.false, label %if.then6, !dbg !326

lor.lhs.false:                                    ; preds = %if.end2
  %6 = load ptr, ptr %pat, align 8, !dbg !327
  %tobool5 = icmp ne ptr %6, null, !dbg !327
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !328

if.then6:                                         ; preds = %lor.lhs.false, %if.end2
  store i32 -22, ptr %retval, align 4, !dbg !329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !329

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load i32, ptr %format.addr, align 4, !dbg !330
  %idxprom8 = sext i32 %7 to i64, !dbg !331
  %arrayidx9 = getelementptr [53 x %struct.pcm_format_data], ptr @pcm_formats, i64 0, i64 %idxprom8, !dbg !331
  %signd = getelementptr inbounds %struct.pcm_format_data, ptr %arrayidx9, i32 0, i32 3, !dbg !332
  %8 = load i8, ptr %signd, align 1, !dbg !332
  %conv10 = sext i8 %8 to i32, !dbg !331
  %cmp11 = icmp eq i32 %conv10, 1, !dbg !333
  br i1 %cmp11, label %if.then16, label %lor.lhs.false13, !dbg !334

lor.lhs.false13:                                  ; preds = %if.end7
  %9 = load i32, ptr %width, align 4, !dbg !335
  %cmp14 = icmp sle i32 %9, 8, !dbg !336
  br i1 %cmp14, label %if.then16, label %if.end19, !dbg !337

if.then16:                                        ; preds = %lor.lhs.false13, %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr %bytes) #5, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !294, metadata !DIExpression()), !dbg !339
  %10 = load i32, ptr %samples.addr, align 4, !dbg !340
  %11 = load i32, ptr %width, align 4, !dbg !341
  %mul = mul i32 %10, %11, !dbg !342
  %div = udiv i32 %mul, 8, !dbg !343
  store i32 %div, ptr %bytes, align 4, !dbg !339
  %12 = load ptr, ptr %data.addr, align 8, !dbg !344
  %13 = load ptr, ptr %pat, align 8, !dbg !345
  %14 = load i8, ptr %13, align 1, !dbg !346
  %conv17 = zext i8 %14 to i32, !dbg !346
  %15 = trunc i32 %conv17 to i8, !dbg !347
  %16 = load i32, ptr %bytes, align 4, !dbg !348
  %conv18 = zext i32 %16 to i64, !dbg !348
  call void @llvm.memset.p0.i64(ptr align 1 %12, i8 %15, i64 %conv18, i1 false), !dbg !347
  store i32 0, ptr %retval, align 4, !dbg !349
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bytes) #5, !dbg !350
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false13
  %17 = load i32, ptr %width, align 4, !dbg !351
  %div20 = sdiv i32 %17, 8, !dbg !351
  store i32 %div20, ptr %width, align 4, !dbg !351
  %18 = load ptr, ptr %data.addr, align 8, !dbg !352
  store ptr %18, ptr %dst, align 8, !dbg !353
  %19 = load i32, ptr %width, align 4, !dbg !354
  switch i32 %19, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb22
    i32 4, label %sw.bb29
    i32 8, label %sw.bb36
  ], !dbg !355

sw.bb:                                            ; preds = %if.end19
  br label %while.cond, !dbg !356

while.cond:                                       ; preds = %while.body, %sw.bb
  %20 = load i32, ptr %samples.addr, align 4, !dbg !358
  %dec = add i32 %20, -1, !dbg !358
  store i32 %dec, ptr %samples.addr, align 4, !dbg !358
  %tobool21 = icmp ne i32 %20, 0, !dbg !356
  br i1 %tobool21, label %while.body, label %while.end, !dbg !356

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %dst, align 8, !dbg !359
  %22 = load ptr, ptr %pat, align 8, !dbg !361
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 2, i1 false), !dbg !362
  %23 = load ptr, ptr %dst, align 8, !dbg !363
  %add.ptr = getelementptr i8, ptr %23, i64 2, !dbg !363
  store ptr %add.ptr, ptr %dst, align 8, !dbg !363
  br label %while.cond, !dbg !356, !llvm.loop !364

while.end:                                        ; preds = %while.cond
  br label %sw.epilog, !dbg !368

sw.bb22:                                          ; preds = %if.end19
  br label %while.cond23, !dbg !369

while.cond23:                                     ; preds = %while.body26, %sw.bb22
  %24 = load i32, ptr %samples.addr, align 4, !dbg !370
  %dec24 = add i32 %24, -1, !dbg !370
  store i32 %dec24, ptr %samples.addr, align 4, !dbg !370
  %tobool25 = icmp ne i32 %24, 0, !dbg !369
  br i1 %tobool25, label %while.body26, label %while.end28, !dbg !369

while.body26:                                     ; preds = %while.cond23
  %25 = load ptr, ptr %dst, align 8, !dbg !371
  %26 = load ptr, ptr %pat, align 8, !dbg !373
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 3, i1 false), !dbg !374
  %27 = load ptr, ptr %dst, align 8, !dbg !375
  %add.ptr27 = getelementptr i8, ptr %27, i64 3, !dbg !375
  store ptr %add.ptr27, ptr %dst, align 8, !dbg !375
  br label %while.cond23, !dbg !369, !llvm.loop !376

while.end28:                                      ; preds = %while.cond23
  br label %sw.epilog, !dbg !378

sw.bb29:                                          ; preds = %if.end19
  br label %while.cond30, !dbg !379

while.cond30:                                     ; preds = %while.body33, %sw.bb29
  %28 = load i32, ptr %samples.addr, align 4, !dbg !380
  %dec31 = add i32 %28, -1, !dbg !380
  store i32 %dec31, ptr %samples.addr, align 4, !dbg !380
  %tobool32 = icmp ne i32 %28, 0, !dbg !379
  br i1 %tobool32, label %while.body33, label %while.end35, !dbg !379

while.body33:                                     ; preds = %while.cond30
  %29 = load ptr, ptr %dst, align 8, !dbg !381
  %30 = load ptr, ptr %pat, align 8, !dbg !383
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %30, i64 4, i1 false), !dbg !384
  %31 = load ptr, ptr %dst, align 8, !dbg !385
  %add.ptr34 = getelementptr i8, ptr %31, i64 4, !dbg !385
  store ptr %add.ptr34, ptr %dst, align 8, !dbg !385
  br label %while.cond30, !dbg !379, !llvm.loop !386

while.end35:                                      ; preds = %while.cond30
  br label %sw.epilog, !dbg !388

sw.bb36:                                          ; preds = %if.end19
  br label %while.cond37, !dbg !389

while.cond37:                                     ; preds = %while.body40, %sw.bb36
  %32 = load i32, ptr %samples.addr, align 4, !dbg !390
  %dec38 = add i32 %32, -1, !dbg !390
  store i32 %dec38, ptr %samples.addr, align 4, !dbg !390
  %tobool39 = icmp ne i32 %32, 0, !dbg !389
  br i1 %tobool39, label %while.body40, label %while.end42, !dbg !389

while.body40:                                     ; preds = %while.cond37
  %33 = load ptr, ptr %dst, align 8, !dbg !391
  %34 = load ptr, ptr %pat, align 8, !dbg !393
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr align 1 %34, i64 8, i1 false), !dbg !394
  %35 = load ptr, ptr %dst, align 8, !dbg !395
  %add.ptr41 = getelementptr i8, ptr %35, i64 8, !dbg !395
  store ptr %add.ptr41, ptr %dst, align 8, !dbg !395
  br label %while.cond37, !dbg !389, !llvm.loop !396

while.end42:                                      ; preds = %while.cond37
  br label %sw.epilog, !dbg !398

sw.epilog:                                        ; preds = %if.end19, %while.end42, %while.end35, %while.end28, %while.end
  store i32 0, ptr %retval, align 4, !dbg !399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

cleanup:                                          ; preds = %sw.epilog, %if.then16, %if.then6, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pat) #5, !dbg !400
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #5, !dbg !400
  call void @llvm.lifetime.end.p0(i64 4, ptr %width) #5, !dbg !400
  %36 = load i32, ptr %retval, align 4, !dbg !400
  ret i32 %36, !dbg !400
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #0 align 16 !dbg !401 {
entry:
  %hw.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %hw, ptr %hw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hw.addr, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %i, metadata !428, metadata !DIExpression()), !dbg !431
  store i32 0, ptr %i, align 4, !dbg !432
  br label %for.cond, !dbg !434

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !435
  %1 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 8, !dbg !437
  %cmp = icmp slt i32 %0, %1, !dbg !438
  br i1 %cmp, label %for.body, label %for.end, !dbg !439

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %hw.addr, align 8, !dbg !440
  %rates = getelementptr inbounds %struct.snd_pcm_hardware, ptr %2, i32 0, i32 2, !dbg !443
  %3 = load i32, ptr %rates, align 8, !dbg !443
  %4 = load i32, ptr %i, align 4, !dbg !444
  %shl = shl i32 1, %4, !dbg !445
  %and = and i32 %3, %shl, !dbg !446
  %tobool = icmp ne i32 %and, 0, !dbg !446
  br i1 %tobool, label %if.then, label %if.end, !dbg !447

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr @snd_pcm_known_rates, align 8, !dbg !448
  %6 = load i32, ptr %i, align 4, !dbg !450
  %idxprom = sext i32 %6 to i64, !dbg !451
  %arrayidx = getelementptr i32, ptr %5, i64 %idxprom, !dbg !451
  %7 = load i32, ptr %arrayidx, align 4, !dbg !451
  %8 = load ptr, ptr %hw.addr, align 8, !dbg !452
  %rate_min = getelementptr inbounds %struct.snd_pcm_hardware, ptr %8, i32 0, i32 3, !dbg !453
  store i32 %7, ptr %rate_min, align 4, !dbg !454
  br label %for.end, !dbg !455

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !456

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !457
  %inc = add i32 %9, 1, !dbg !457
  store i32 %inc, ptr %i, align 4, !dbg !457
  br label %for.cond, !dbg !458, !llvm.loop !459

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 8, !dbg !461
  %sub = sub i32 %10, 1, !dbg !463
  store i32 %sub, ptr %i, align 4, !dbg !464
  br label %for.cond1, !dbg !465

for.cond1:                                        ; preds = %for.inc12, %for.end
  %11 = load i32, ptr %i, align 4, !dbg !466
  %cmp2 = icmp sge i32 %11, 0, !dbg !468
  br i1 %cmp2, label %for.body3, label %for.end13, !dbg !469

for.body3:                                        ; preds = %for.cond1
  %12 = load ptr, ptr %hw.addr, align 8, !dbg !470
  %rates4 = getelementptr inbounds %struct.snd_pcm_hardware, ptr %12, i32 0, i32 2, !dbg !473
  %13 = load i32, ptr %rates4, align 8, !dbg !473
  %14 = load i32, ptr %i, align 4, !dbg !474
  %shl5 = shl i32 1, %14, !dbg !475
  %and6 = and i32 %13, %shl5, !dbg !476
  %tobool7 = icmp ne i32 %and6, 0, !dbg !476
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !477

if.then8:                                         ; preds = %for.body3
  %15 = load ptr, ptr @snd_pcm_known_rates, align 8, !dbg !478
  %16 = load i32, ptr %i, align 4, !dbg !480
  %idxprom9 = sext i32 %16 to i64, !dbg !481
  %arrayidx10 = getelementptr i32, ptr %15, i64 %idxprom9, !dbg !481
  %17 = load i32, ptr %arrayidx10, align 4, !dbg !481
  %18 = load ptr, ptr %hw.addr, align 8, !dbg !482
  %rate_max = getelementptr inbounds %struct.snd_pcm_hardware, ptr %18, i32 0, i32 4, !dbg !483
  store i32 %17, ptr %rate_max, align 8, !dbg !484
  br label %for.end13, !dbg !485

if.end11:                                         ; preds = %for.body3
  br label %for.inc12, !dbg !486

for.inc12:                                        ; preds = %if.end11
  %19 = load i32, ptr %i, align 4, !dbg !487
  %dec = add i32 %19, -1, !dbg !487
  store i32 %dec, ptr %i, align 4, !dbg !487
  br label %for.cond1, !dbg !488, !llvm.loop !489

for.end13:                                        ; preds = %if.then8, %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !491
  ret i32 0, !dbg !492
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_rate_to_rate_bit(i32 noundef %rate) #0 align 16 !dbg !493 {
entry:
  %retval = alloca i32, align 4
  %rate.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %rate, ptr %rate.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate.addr, metadata !497, metadata !DIExpression()), !dbg !499
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !500
  call void @llvm.dbg.declare(metadata ptr %i, metadata !498, metadata !DIExpression()), !dbg !501
  store i32 0, ptr %i, align 4, !dbg !502
  br label %for.cond, !dbg !504

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !505
  %1 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 8, !dbg !507
  %cmp = icmp ult i32 %0, %1, !dbg !508
  br i1 %cmp, label %for.body, label %for.end, !dbg !509

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @snd_pcm_known_rates, align 8, !dbg !510
  %3 = load i32, ptr %i, align 4, !dbg !512
  %idxprom = zext i32 %3 to i64, !dbg !513
  %arrayidx = getelementptr i32, ptr %2, i64 %idxprom, !dbg !513
  %4 = load i32, ptr %arrayidx, align 4, !dbg !513
  %5 = load i32, ptr %rate.addr, align 4, !dbg !514
  %cmp1 = icmp eq i32 %4, %5, !dbg !515
  br i1 %cmp1, label %if.then, label %if.end, !dbg !516

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !517
  %shl = shl i32 1, %6, !dbg !518
  store i32 %shl, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !514

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !520
  %inc = add i32 %7, 1, !dbg !520
  store i32 %inc, ptr %i, align 4, !dbg !520
  br label %for.cond, !dbg !521, !llvm.loop !522

for.end:                                          ; preds = %for.cond
  store i32 -2147483648, ptr %retval, align 4, !dbg !524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !524

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !525
  %8 = load i32, ptr %retval, align 4, !dbg !525
  ret i32 %8, !dbg !525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_rate_bit_to_rate(i32 noundef %rate_bit) #0 align 16 !dbg !526 {
entry:
  %retval = alloca i32, align 4
  %rate_bit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %rate_bit, ptr %rate_bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate_bit.addr, metadata !528, metadata !DIExpression()), !dbg !530
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !531
  call void @llvm.dbg.declare(metadata ptr %i, metadata !529, metadata !DIExpression()), !dbg !532
  store i32 0, ptr %i, align 4, !dbg !533
  br label %for.cond, !dbg !535

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !536
  %1 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 8, !dbg !538
  %cmp = icmp ult i32 %0, %1, !dbg !539
  br i1 %cmp, label %for.body, label %for.end, !dbg !540

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !541
  %shl = shl i32 1, %2, !dbg !543
  %3 = load i32, ptr %rate_bit.addr, align 4, !dbg !544
  %cmp1 = icmp eq i32 %shl, %3, !dbg !545
  br i1 %cmp1, label %if.then, label %if.end, !dbg !546

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr @snd_pcm_known_rates, align 8, !dbg !547
  %5 = load i32, ptr %i, align 4, !dbg !548
  %idxprom = zext i32 %5 to i64, !dbg !549
  %arrayidx = getelementptr i32, ptr %4, i64 %idxprom, !dbg !549
  %6 = load i32, ptr %arrayidx, align 4, !dbg !549
  store i32 %6, ptr %retval, align 4, !dbg !550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !550

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !544

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !551
  %inc = add i32 %7, 1, !dbg !551
  store i32 %inc, ptr %i, align 4, !dbg !551
  br label %for.cond, !dbg !552, !llvm.loop !553

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !555

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !556
  %8 = load i32, ptr %retval, align 4, !dbg !556
  ret i32 %8, !dbg !556
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_rate_mask_intersect(i32 noundef %rates_a, i32 noundef %rates_b) #0 align 16 !dbg !557 {
entry:
  %retval = alloca i32, align 4
  %rates_a.addr = alloca i32, align 4
  %rates_b.addr = alloca i32, align 4
  store i32 %rates_a, ptr %rates_a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rates_a.addr, metadata !561, metadata !DIExpression()), !dbg !563
  store i32 %rates_b, ptr %rates_b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rates_b.addr, metadata !562, metadata !DIExpression()), !dbg !564
  %0 = load i32, ptr %rates_a.addr, align 4, !dbg !565
  %call = call i32 @snd_pcm_rate_mask_sanitize(i32 noundef %0) #6, !dbg !566
  store i32 %call, ptr %rates_a.addr, align 4, !dbg !567
  %1 = load i32, ptr %rates_b.addr, align 4, !dbg !568
  %call1 = call i32 @snd_pcm_rate_mask_sanitize(i32 noundef %1) #6, !dbg !569
  store i32 %call1, ptr %rates_b.addr, align 4, !dbg !570
  %2 = load i32, ptr %rates_a.addr, align 4, !dbg !571
  %and = and i32 %2, 1073741824, !dbg !573
  %tobool = icmp ne i32 %and, 0, !dbg !573
  br i1 %tobool, label %if.then, label %if.else, !dbg !574

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rates_b.addr, align 4, !dbg !575
  store i32 %3, ptr %retval, align 4, !dbg !576
  br label %return, !dbg !576

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %rates_b.addr, align 4, !dbg !577
  %and2 = and i32 %4, 1073741824, !dbg !579
  %tobool3 = icmp ne i32 %and2, 0, !dbg !579
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !580

if.then4:                                         ; preds = %if.else
  %5 = load i32, ptr %rates_a.addr, align 4, !dbg !581
  store i32 %5, ptr %retval, align 4, !dbg !582
  br label %return, !dbg !582

if.else5:                                         ; preds = %if.else
  %6 = load i32, ptr %rates_a.addr, align 4, !dbg !583
  %and6 = and i32 %6, -2147483648, !dbg !585
  %tobool7 = icmp ne i32 %and6, 0, !dbg !585
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !586

if.then8:                                         ; preds = %if.else5
  %7 = load i32, ptr %rates_b.addr, align 4, !dbg !587
  store i32 %7, ptr %retval, align 4, !dbg !588
  br label %return, !dbg !588

if.else9:                                         ; preds = %if.else5
  %8 = load i32, ptr %rates_b.addr, align 4, !dbg !589
  %and10 = and i32 %8, -2147483648, !dbg !591
  %tobool11 = icmp ne i32 %and10, 0, !dbg !591
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !592

if.then12:                                        ; preds = %if.else9
  %9 = load i32, ptr %rates_a.addr, align 4, !dbg !593
  store i32 %9, ptr %retval, align 4, !dbg !594
  br label %return, !dbg !594

if.end:                                           ; preds = %if.else9
  br label %if.end13

if.end13:                                         ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  %10 = load i32, ptr %rates_a.addr, align 4, !dbg !595
  %11 = load i32, ptr %rates_b.addr, align 4, !dbg !596
  %and16 = and i32 %10, %11, !dbg !597
  store i32 %and16, ptr %retval, align 4, !dbg !598
  br label %return, !dbg !598

return:                                           ; preds = %if.end15, %if.then12, %if.then8, %if.then4, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !599
  ret i32 %12, !dbg !599
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_pcm_rate_mask_sanitize(i32 noundef %rates) #0 align 16 !dbg !600 {
entry:
  %retval = alloca i32, align 4
  %rates.addr = alloca i32, align 4
  store i32 %rates, ptr %rates.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rates.addr, metadata !602, metadata !DIExpression()), !dbg !603
  %0 = load i32, ptr %rates.addr, align 4, !dbg !604
  %and = and i32 %0, 1073741824, !dbg !606
  %tobool = icmp ne i32 %and, 0, !dbg !606
  br i1 %tobool, label %if.then, label %if.else, !dbg !607

if.then:                                          ; preds = %entry
  store i32 1073741824, ptr %retval, align 4, !dbg !608
  br label %return, !dbg !608

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %rates.addr, align 4, !dbg !609
  %and1 = and i32 %1, -2147483648, !dbg !611
  %tobool2 = icmp ne i32 %and1, 0, !dbg !611
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !612

if.then3:                                         ; preds = %if.else
  store i32 -2147483648, ptr %retval, align 4, !dbg !613
  br label %return, !dbg !613

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %2 = load i32, ptr %rates.addr, align 4, !dbg !614
  store i32 %2, ptr %retval, align 4, !dbg !615
  br label %return, !dbg !615

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !616
  ret i32 %3, !dbg !616
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_pcm_rate_range_to_bits(i32 noundef %rate_min, i32 noundef %rate_max) #0 align 16 !dbg !617 {
entry:
  %rate_min.addr = alloca i32, align 4
  %rate_max.addr = alloca i32, align 4
  %rates = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %rate_min, ptr %rate_min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate_min.addr, metadata !619, metadata !DIExpression()), !dbg !623
  store i32 %rate_max, ptr %rate_max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rate_max.addr, metadata !620, metadata !DIExpression()), !dbg !624
  call void @llvm.lifetime.start.p0(i64 4, ptr %rates) #5, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %rates, metadata !621, metadata !DIExpression()), !dbg !626
  store i32 0, ptr %rates, align 4, !dbg !626
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !627
  call void @llvm.dbg.declare(metadata ptr %i, metadata !622, metadata !DIExpression()), !dbg !628
  store i32 0, ptr %i, align 4, !dbg !629
  br label %for.cond, !dbg !631

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !632
  %1 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @snd_pcm_known_rates, i32 0, i32 1), align 8, !dbg !634
  %cmp = icmp ult i32 %0, %1, !dbg !635
  br i1 %cmp, label %for.body, label %for.end, !dbg !636

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @snd_pcm_known_rates, align 8, !dbg !637
  %3 = load i32, ptr %i, align 4, !dbg !640
  %idxprom = sext i32 %3 to i64, !dbg !641
  %arrayidx = getelementptr i32, ptr %2, i64 %idxprom, !dbg !641
  %4 = load i32, ptr %arrayidx, align 4, !dbg !641
  %5 = load i32, ptr %rate_min.addr, align 4, !dbg !642
  %cmp1 = icmp uge i32 %4, %5, !dbg !643
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !644

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr @snd_pcm_known_rates, align 8, !dbg !645
  %7 = load i32, ptr %i, align 4, !dbg !646
  %idxprom2 = sext i32 %7 to i64, !dbg !647
  %arrayidx3 = getelementptr i32, ptr %6, i64 %idxprom2, !dbg !647
  %8 = load i32, ptr %arrayidx3, align 4, !dbg !647
  %9 = load i32, ptr %rate_max.addr, align 4, !dbg !648
  %cmp4 = icmp ule i32 %8, %9, !dbg !649
  br i1 %cmp4, label %if.then, label %if.end, !dbg !650

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, ptr %i, align 4, !dbg !651
  %shl = shl i32 1, %10, !dbg !652
  %11 = load i32, ptr %rates, align 4, !dbg !653
  %or = or i32 %11, %shl, !dbg !653
  store i32 %or, ptr %rates, align 4, !dbg !653
  br label %if.end, !dbg !654

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !655

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !dbg !656
  %inc = add i32 %12, 1, !dbg !656
  store i32 %inc, ptr %i, align 4, !dbg !656
  br label %for.cond, !dbg !657, !llvm.loop !658

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %rates, align 4, !dbg !660
  %tobool = icmp ne i32 %13, 0, !dbg !660
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !662

if.then5:                                         ; preds = %for.end
  store i32 -2147483648, ptr %rates, align 4, !dbg !663
  br label %if.end6, !dbg !664

if.end6:                                          ; preds = %if.then5, %for.end
  %14 = load i32, ptr %rates, align 4, !dbg !665
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !666
  call void @llvm.lifetime.end.p0(i64 4, ptr %rates) #5, !dbg !666
  ret i32 %14, !dbg !667
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pcm_formats", scope: !2, file: !3, line: 50, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.pcm_misc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd-pcm\22 -D KBUILD_BASENAME=\22pcm_misc\22 -D KBUILD_MODNAME=\22snd_pcm\22 -D __KBUILD_MODNAME=kmod_snd_pcm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/pcm_misc.ll sound/core/pcm_misc.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/pcm_misc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf7acbf049934c8e6deba0ab672b76cf")
!4 = !{!5, !6, !7}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_pcm_format_t", file: !8, line: 180, baseType: !5)
!8 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!9 = !{!10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !0}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_signed289", scope: !2, file: !3, line: 274, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_unsigned290", scope: !2, file: !3, line: 292, type: !6, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_linear291", scope: !2, file: !3, line: 304, type: !6, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_little_endian292", scope: !2, file: !3, line: 323, type: !6, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_big_endian293", scope: !2, file: !3, line: 341, type: !6, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_width294", scope: !2, file: !3, line: 360, type: !6, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_physical_width295", scope: !2, file: !3, line: 379, type: !6, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_size296", scope: !2, file: !3, line: 396, type: !6, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_silence_64297", scope: !2, file: !3, line: 412, type: !6, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_format_set_silence298", scope: !2, file: !3, line: 483, type: !6, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_hw_limit_rates299", scope: !2, file: !3, line: 511, type: !6, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_rate_to_rate_bit300", scope: !2, file: !3, line: 529, type: !6, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_rate_bit_to_rate301", scope: !2, file: !3, line: 547, type: !6, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_rate_mask_intersect302", scope: !2, file: !3, line: 586, type: !6, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_pcm_rate_range_to_bits303", scope: !2, file: !3, line: 616, type: !6, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 5088, elements: !54)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcm_format_data", file: !3, line: 34, size: 96, elements: !43)
!43 = !{!44, !46, !47, !49, !50}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !42, file: !3, line: 35, baseType: !45, size: 8)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !42, file: !3, line: 36, baseType: !45, size: 8, offset: 8)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "le", scope: !42, file: !3, line: 37, baseType: !48, size: 8, offset: 16)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "signd", scope: !42, file: !3, line: 38, baseType: !48, size: 8, offset: 24)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "silence", scope: !42, file: !3, line: 39, baseType: !51, size: 64, offset: 32)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !{!55}
!55 = !DISubrange(count: 53)
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 8, !"cf-protection-branch", i32 1}
!60 = !{i32 4, !"function_return_thunk_extern", i32 1}
!61 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!62 = !{i32 1, !"Code Model", i32 2}
!63 = !{i32 1, !"override-stack-alignment", i32 8}
!64 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!65 = distinct !DISubprogram(name: "snd_pcm_format_signed", scope: !3, file: !3, line: 264, type: !66, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{!5, !7}
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "format", arg: 1, scope: !65, file: !3, line: 264, type: !7)
!70 = !DILocalVariable(name: "val", scope: !65, file: !3, line: 266, type: !5)
!71 = !DILocation(line: 264, column: 44, scope: !65)
!72 = !DILocation(line: 266, column: 2, scope: !65)
!73 = !DILocation(line: 266, column: 6, scope: !65)
!74 = !DILocation(line: 267, column: 20, scope: !75)
!75 = distinct !DILexicalBlock(scope: !65, file: !3, line: 267, column: 6)
!76 = !DILocation(line: 267, column: 7, scope: !75)
!77 = !DILocation(line: 267, column: 6, scope: !65)
!78 = !DILocation(line: 268, column: 3, scope: !75)
!79 = !DILocation(line: 269, column: 25, scope: !65)
!80 = !DILocation(line: 269, column: 8, scope: !65)
!81 = !DILocation(line: 269, column: 33, scope: !65)
!82 = !DILocation(line: 269, column: 6, scope: !65)
!83 = !DILocation(line: 270, column: 6, scope: !84)
!84 = distinct !DILexicalBlock(scope: !65, file: !3, line: 270, column: 6)
!85 = !DILocation(line: 270, column: 10, scope: !84)
!86 = !DILocation(line: 270, column: 6, scope: !65)
!87 = !DILocation(line: 271, column: 3, scope: !84)
!88 = !DILocation(line: 272, column: 9, scope: !65)
!89 = !DILocation(line: 272, column: 2, scope: !65)
!90 = !DILocation(line: 273, column: 1, scope: !65)
!91 = distinct !DISubprogram(name: "valid_format", scope: !3, file: !3, line: 45, type: !92, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !7}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !95, line: 35, baseType: !96)
!95 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!96 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!97 = !{!98}
!98 = !DILocalVariable(name: "format", arg: 1, scope: !91, file: !3, line: 45, type: !7)
!99 = !DILocation(line: 45, column: 43, scope: !91)
!100 = !DILocation(line: 47, column: 14, scope: !91)
!101 = !DILocation(line: 47, column: 21, scope: !91)
!102 = !DILocation(line: 47, column: 26, scope: !91)
!103 = !DILocation(line: 47, column: 34, scope: !91)
!104 = !DILocation(line: 47, column: 41, scope: !91)
!105 = !DILocation(line: 0, scope: !91)
!106 = !DILocation(line: 47, column: 2, scope: !91)
!107 = distinct !DISubprogram(name: "snd_pcm_format_unsigned", scope: !3, file: !3, line: 283, type: !66, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!108 = !{!109, !110}
!109 = !DILocalVariable(name: "format", arg: 1, scope: !107, file: !3, line: 283, type: !7)
!110 = !DILocalVariable(name: "val", scope: !107, file: !3, line: 285, type: !5)
!111 = !DILocation(line: 283, column: 46, scope: !107)
!112 = !DILocation(line: 285, column: 2, scope: !107)
!113 = !DILocation(line: 285, column: 6, scope: !107)
!114 = !DILocation(line: 287, column: 30, scope: !107)
!115 = !DILocation(line: 287, column: 8, scope: !107)
!116 = !DILocation(line: 287, column: 6, scope: !107)
!117 = !DILocation(line: 288, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !107, file: !3, line: 288, column: 6)
!119 = !DILocation(line: 288, column: 10, scope: !118)
!120 = !DILocation(line: 288, column: 6, scope: !107)
!121 = !DILocation(line: 289, column: 10, scope: !118)
!122 = !DILocation(line: 289, column: 3, scope: !118)
!123 = !DILocation(line: 290, column: 10, scope: !107)
!124 = !DILocation(line: 290, column: 9, scope: !107)
!125 = !DILocation(line: 290, column: 2, scope: !107)
!126 = !DILocation(line: 291, column: 1, scope: !107)
!127 = distinct !DISubprogram(name: "snd_pcm_format_linear", scope: !3, file: !3, line: 300, type: !66, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!128 = !{!129}
!129 = !DILocalVariable(name: "format", arg: 1, scope: !127, file: !3, line: 300, type: !7)
!130 = !DILocation(line: 300, column: 44, scope: !127)
!131 = !DILocation(line: 302, column: 31, scope: !127)
!132 = !DILocation(line: 302, column: 9, scope: !127)
!133 = !DILocation(line: 302, column: 39, scope: !127)
!134 = !DILocation(line: 302, column: 2, scope: !127)
!135 = distinct !DISubprogram(name: "snd_pcm_format_little_endian", scope: !3, file: !3, line: 313, type: !66, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !136)
!136 = !{!137, !138}
!137 = !DILocalVariable(name: "format", arg: 1, scope: !135, file: !3, line: 313, type: !7)
!138 = !DILocalVariable(name: "val", scope: !135, file: !3, line: 315, type: !5)
!139 = !DILocation(line: 313, column: 51, scope: !135)
!140 = !DILocation(line: 315, column: 2, scope: !135)
!141 = !DILocation(line: 315, column: 6, scope: !135)
!142 = !DILocation(line: 316, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !3, line: 316, column: 6)
!144 = !DILocation(line: 316, column: 7, scope: !143)
!145 = !DILocation(line: 316, column: 6, scope: !135)
!146 = !DILocation(line: 317, column: 3, scope: !143)
!147 = !DILocation(line: 318, column: 25, scope: !135)
!148 = !DILocation(line: 318, column: 8, scope: !135)
!149 = !DILocation(line: 318, column: 33, scope: !135)
!150 = !DILocation(line: 318, column: 6, scope: !135)
!151 = !DILocation(line: 319, column: 6, scope: !152)
!152 = distinct !DILexicalBlock(scope: !135, file: !3, line: 319, column: 6)
!153 = !DILocation(line: 319, column: 10, scope: !152)
!154 = !DILocation(line: 319, column: 6, scope: !135)
!155 = !DILocation(line: 320, column: 3, scope: !152)
!156 = !DILocation(line: 321, column: 9, scope: !135)
!157 = !DILocation(line: 321, column: 2, scope: !135)
!158 = !DILocation(line: 322, column: 1, scope: !135)
!159 = distinct !DISubprogram(name: "snd_pcm_format_big_endian", scope: !3, file: !3, line: 332, type: !66, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "format", arg: 1, scope: !159, file: !3, line: 332, type: !7)
!162 = !DILocalVariable(name: "val", scope: !159, file: !3, line: 334, type: !5)
!163 = !DILocation(line: 332, column: 48, scope: !159)
!164 = !DILocation(line: 334, column: 2, scope: !159)
!165 = !DILocation(line: 334, column: 6, scope: !159)
!166 = !DILocation(line: 336, column: 37, scope: !159)
!167 = !DILocation(line: 336, column: 8, scope: !159)
!168 = !DILocation(line: 336, column: 6, scope: !159)
!169 = !DILocation(line: 337, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !159, file: !3, line: 337, column: 6)
!171 = !DILocation(line: 337, column: 10, scope: !170)
!172 = !DILocation(line: 337, column: 6, scope: !159)
!173 = !DILocation(line: 338, column: 10, scope: !170)
!174 = !DILocation(line: 338, column: 3, scope: !170)
!175 = !DILocation(line: 339, column: 10, scope: !159)
!176 = !DILocation(line: 339, column: 9, scope: !159)
!177 = !DILocation(line: 339, column: 2, scope: !159)
!178 = !DILocation(line: 340, column: 1, scope: !159)
!179 = distinct !DISubprogram(name: "snd_pcm_format_width", scope: !3, file: !3, line: 350, type: !66, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "format", arg: 1, scope: !179, file: !3, line: 350, type: !7)
!182 = !DILocalVariable(name: "val", scope: !179, file: !3, line: 352, type: !5)
!183 = !DILocation(line: 350, column: 43, scope: !179)
!184 = !DILocation(line: 352, column: 2, scope: !179)
!185 = !DILocation(line: 352, column: 6, scope: !179)
!186 = !DILocation(line: 353, column: 20, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !3, line: 353, column: 6)
!188 = !DILocation(line: 353, column: 7, scope: !187)
!189 = !DILocation(line: 353, column: 6, scope: !179)
!190 = !DILocation(line: 354, column: 3, scope: !187)
!191 = !DILocation(line: 355, column: 25, scope: !179)
!192 = !DILocation(line: 355, column: 8, scope: !179)
!193 = !DILocation(line: 355, column: 33, scope: !179)
!194 = !DILocation(line: 355, column: 6, scope: !179)
!195 = !DILocation(line: 356, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !179, file: !3, line: 356, column: 6)
!197 = !DILocation(line: 356, column: 6, scope: !179)
!198 = !DILocation(line: 357, column: 3, scope: !196)
!199 = !DILocation(line: 358, column: 9, scope: !179)
!200 = !DILocation(line: 358, column: 2, scope: !179)
!201 = !DILocation(line: 359, column: 1, scope: !179)
!202 = distinct !DISubprogram(name: "snd_pcm_format_physical_width", scope: !3, file: !3, line: 369, type: !66, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "format", arg: 1, scope: !202, file: !3, line: 369, type: !7)
!205 = !DILocalVariable(name: "val", scope: !202, file: !3, line: 371, type: !5)
!206 = !DILocation(line: 369, column: 52, scope: !202)
!207 = !DILocation(line: 371, column: 2, scope: !202)
!208 = !DILocation(line: 371, column: 6, scope: !202)
!209 = !DILocation(line: 372, column: 20, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !3, line: 372, column: 6)
!211 = !DILocation(line: 372, column: 7, scope: !210)
!212 = !DILocation(line: 372, column: 6, scope: !202)
!213 = !DILocation(line: 373, column: 3, scope: !210)
!214 = !DILocation(line: 374, column: 25, scope: !202)
!215 = !DILocation(line: 374, column: 8, scope: !202)
!216 = !DILocation(line: 374, column: 33, scope: !202)
!217 = !DILocation(line: 374, column: 6, scope: !202)
!218 = !DILocation(line: 375, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !202, file: !3, line: 375, column: 6)
!220 = !DILocation(line: 375, column: 6, scope: !202)
!221 = !DILocation(line: 376, column: 3, scope: !219)
!222 = !DILocation(line: 377, column: 9, scope: !202)
!223 = !DILocation(line: 377, column: 2, scope: !202)
!224 = !DILocation(line: 378, column: 1, scope: !202)
!225 = distinct !DISubprogram(name: "snd_pcm_format_size", scope: !3, file: !3, line: 389, type: !226, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !7, !233}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !95, line: 66, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !230, line: 73, baseType: !231)
!230 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !230, line: 15, baseType: !232)
!232 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 61, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !230, line: 72, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !230, line: 16, baseType: !236)
!236 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!237 = !{!238, !239, !240}
!238 = !DILocalVariable(name: "format", arg: 1, scope: !225, file: !3, line: 389, type: !7)
!239 = !DILocalVariable(name: "samples", arg: 2, scope: !225, file: !3, line: 389, type: !233)
!240 = !DILocalVariable(name: "phys_width", scope: !225, file: !3, line: 391, type: !5)
!241 = !DILocation(line: 389, column: 46, scope: !225)
!242 = !DILocation(line: 389, column: 61, scope: !225)
!243 = !DILocation(line: 391, column: 2, scope: !225)
!244 = !DILocation(line: 391, column: 6, scope: !225)
!245 = !DILocation(line: 391, column: 49, scope: !225)
!246 = !DILocation(line: 391, column: 19, scope: !225)
!247 = !DILocation(line: 392, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !225, file: !3, line: 392, column: 6)
!249 = !DILocation(line: 392, column: 17, scope: !248)
!250 = !DILocation(line: 392, column: 6, scope: !225)
!251 = !DILocation(line: 393, column: 3, scope: !248)
!252 = !DILocation(line: 394, column: 9, scope: !225)
!253 = !DILocation(line: 394, column: 19, scope: !225)
!254 = !DILocation(line: 394, column: 17, scope: !225)
!255 = !DILocation(line: 394, column: 30, scope: !225)
!256 = !DILocation(line: 394, column: 2, scope: !225)
!257 = !DILocation(line: 395, column: 1, scope: !225)
!258 = distinct !DISubprogram(name: "snd_pcm_format_silence_64", scope: !3, file: !3, line: 404, type: !259, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !7}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!263 = !{!264}
!264 = !DILocalVariable(name: "format", arg: 1, scope: !258, file: !3, line: 404, type: !7)
!265 = !DILocation(line: 404, column: 65, scope: !258)
!266 = !DILocation(line: 406, column: 20, scope: !267)
!267 = distinct !DILexicalBlock(scope: !258, file: !3, line: 406, column: 6)
!268 = !DILocation(line: 406, column: 7, scope: !267)
!269 = !DILocation(line: 406, column: 6, scope: !258)
!270 = !DILocation(line: 407, column: 3, scope: !267)
!271 = !DILocation(line: 408, column: 25, scope: !272)
!272 = distinct !DILexicalBlock(scope: !258, file: !3, line: 408, column: 6)
!273 = !DILocation(line: 408, column: 8, scope: !272)
!274 = !DILocation(line: 408, column: 33, scope: !272)
!275 = !DILocation(line: 408, column: 6, scope: !258)
!276 = !DILocation(line: 409, column: 3, scope: !272)
!277 = !DILocation(line: 410, column: 26, scope: !258)
!278 = !DILocation(line: 410, column: 9, scope: !258)
!279 = !DILocation(line: 410, column: 34, scope: !258)
!280 = !DILocation(line: 410, column: 2, scope: !258)
!281 = !DILocation(line: 411, column: 1, scope: !258)
!282 = distinct !DISubprogram(name: "snd_pcm_format_set_silence", scope: !3, file: !3, line: 424, type: !283, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!283 = !DISubroutineType(types: !284)
!284 = !{!5, !7, !6, !285}
!285 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!286 = !{!287, !288, !289, !290, !291, !293, !294}
!287 = !DILocalVariable(name: "format", arg: 1, scope: !282, file: !3, line: 424, type: !7)
!288 = !DILocalVariable(name: "data", arg: 2, scope: !282, file: !3, line: 424, type: !6)
!289 = !DILocalVariable(name: "samples", arg: 3, scope: !282, file: !3, line: 424, type: !285)
!290 = !DILocalVariable(name: "width", scope: !282, file: !3, line: 426, type: !5)
!291 = !DILocalVariable(name: "dst", scope: !282, file: !3, line: 427, type: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!293 = !DILocalVariable(name: "pat", scope: !282, file: !3, line: 428, type: !261)
!294 = !DILocalVariable(name: "bytes", scope: !295, file: !3, line: 440, type: !285)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 439, column: 57)
!296 = distinct !DILexicalBlock(scope: !282, file: !3, line: 439, column: 6)
!297 = !DILocation(line: 424, column: 49, scope: !282)
!298 = !DILocation(line: 424, column: 63, scope: !282)
!299 = !DILocation(line: 424, column: 82, scope: !282)
!300 = !DILocation(line: 426, column: 2, scope: !282)
!301 = !DILocation(line: 426, column: 6, scope: !282)
!302 = !DILocation(line: 427, column: 2, scope: !282)
!303 = !DILocation(line: 427, column: 17, scope: !282)
!304 = !DILocation(line: 428, column: 2, scope: !282)
!305 = !DILocation(line: 428, column: 23, scope: !282)
!306 = !DILocation(line: 430, column: 20, scope: !307)
!307 = distinct !DILexicalBlock(scope: !282, file: !3, line: 430, column: 6)
!308 = !DILocation(line: 430, column: 7, scope: !307)
!309 = !DILocation(line: 430, column: 6, scope: !282)
!310 = !DILocation(line: 431, column: 3, scope: !307)
!311 = !DILocation(line: 432, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !282, file: !3, line: 432, column: 6)
!313 = !DILocation(line: 432, column: 14, scope: !312)
!314 = !DILocation(line: 432, column: 6, scope: !282)
!315 = !DILocation(line: 433, column: 3, scope: !312)
!316 = !DILocation(line: 434, column: 27, scope: !282)
!317 = !DILocation(line: 434, column: 10, scope: !282)
!318 = !DILocation(line: 434, column: 35, scope: !282)
!319 = !DILocation(line: 434, column: 8, scope: !282)
!320 = !DILocation(line: 435, column: 25, scope: !282)
!321 = !DILocation(line: 435, column: 8, scope: !282)
!322 = !DILocation(line: 435, column: 33, scope: !282)
!323 = !DILocation(line: 435, column: 6, scope: !282)
!324 = !DILocation(line: 436, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !282, file: !3, line: 436, column: 6)
!326 = !DILocation(line: 436, column: 13, scope: !325)
!327 = !DILocation(line: 436, column: 17, scope: !325)
!328 = !DILocation(line: 436, column: 6, scope: !282)
!329 = !DILocation(line: 437, column: 3, scope: !325)
!330 = !DILocation(line: 439, column: 23, scope: !296)
!331 = !DILocation(line: 439, column: 6, scope: !296)
!332 = !DILocation(line: 439, column: 31, scope: !296)
!333 = !DILocation(line: 439, column: 37, scope: !296)
!334 = !DILocation(line: 439, column: 42, scope: !296)
!335 = !DILocation(line: 439, column: 45, scope: !296)
!336 = !DILocation(line: 439, column: 51, scope: !296)
!337 = !DILocation(line: 439, column: 6, scope: !282)
!338 = !DILocation(line: 440, column: 3, scope: !295)
!339 = !DILocation(line: 440, column: 16, scope: !295)
!340 = !DILocation(line: 440, column: 24, scope: !295)
!341 = !DILocation(line: 440, column: 34, scope: !295)
!342 = !DILocation(line: 440, column: 32, scope: !295)
!343 = !DILocation(line: 440, column: 40, scope: !295)
!344 = !DILocation(line: 441, column: 10, scope: !295)
!345 = !DILocation(line: 441, column: 17, scope: !295)
!346 = !DILocation(line: 441, column: 16, scope: !295)
!347 = !DILocation(line: 441, column: 3, scope: !295)
!348 = !DILocation(line: 441, column: 22, scope: !295)
!349 = !DILocation(line: 442, column: 3, scope: !295)
!350 = !DILocation(line: 443, column: 2, scope: !296)
!351 = !DILocation(line: 445, column: 8, scope: !282)
!352 = !DILocation(line: 446, column: 8, scope: !282)
!353 = !DILocation(line: 446, column: 6, scope: !282)
!354 = !DILocation(line: 454, column: 10, scope: !282)
!355 = !DILocation(line: 454, column: 2, scope: !282)
!356 = !DILocation(line: 456, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !282, file: !3, line: 454, column: 17)
!358 = !DILocation(line: 456, column: 17, scope: !357)
!359 = !DILocation(line: 457, column: 11, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !3, line: 456, column: 21)
!361 = !DILocation(line: 457, column: 16, scope: !360)
!362 = !DILocation(line: 457, column: 4, scope: !360)
!363 = !DILocation(line: 458, column: 8, scope: !360)
!364 = distinct !{!364, !356, !365, !366, !367}
!365 = !DILocation(line: 459, column: 3, scope: !357)
!366 = !{!"llvm.loop.mustprogress"}
!367 = !{!"llvm.loop.unroll.disable"}
!368 = !DILocation(line: 460, column: 3, scope: !357)
!369 = !DILocation(line: 462, column: 3, scope: !357)
!370 = !DILocation(line: 462, column: 17, scope: !357)
!371 = !DILocation(line: 463, column: 11, scope: !372)
!372 = distinct !DILexicalBlock(scope: !357, file: !3, line: 462, column: 21)
!373 = !DILocation(line: 463, column: 16, scope: !372)
!374 = !DILocation(line: 463, column: 4, scope: !372)
!375 = !DILocation(line: 464, column: 8, scope: !372)
!376 = distinct !{!376, !369, !377, !366, !367}
!377 = !DILocation(line: 465, column: 3, scope: !357)
!378 = !DILocation(line: 466, column: 3, scope: !357)
!379 = !DILocation(line: 468, column: 3, scope: !357)
!380 = !DILocation(line: 468, column: 17, scope: !357)
!381 = !DILocation(line: 469, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !357, file: !3, line: 468, column: 21)
!383 = !DILocation(line: 469, column: 16, scope: !382)
!384 = !DILocation(line: 469, column: 4, scope: !382)
!385 = !DILocation(line: 470, column: 8, scope: !382)
!386 = distinct !{!386, !379, !387, !366, !367}
!387 = !DILocation(line: 471, column: 3, scope: !357)
!388 = !DILocation(line: 472, column: 3, scope: !357)
!389 = !DILocation(line: 474, column: 3, scope: !357)
!390 = !DILocation(line: 474, column: 17, scope: !357)
!391 = !DILocation(line: 475, column: 11, scope: !392)
!392 = distinct !DILexicalBlock(scope: !357, file: !3, line: 474, column: 21)
!393 = !DILocation(line: 475, column: 16, scope: !392)
!394 = !DILocation(line: 475, column: 4, scope: !392)
!395 = !DILocation(line: 476, column: 8, scope: !392)
!396 = distinct !{!396, !389, !397, !366, !367}
!397 = !DILocation(line: 477, column: 3, scope: !357)
!398 = !DILocation(line: 478, column: 3, scope: !357)
!399 = !DILocation(line: 481, column: 2, scope: !282)
!400 = !DILocation(line: 482, column: 1, scope: !282)
!401 = distinct !DISubprogram(name: "snd_pcm_hw_limit_rates", scope: !3, file: !3, line: 494, type: !402, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!402 = !DISubroutineType(types: !403)
!403 = !{!5, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_pcm_hardware", file: !406, line: 32, size: 640, elements: !407)
!406 = !DIFile(filename: "./include/sound/pcm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02d4b94f1676d26c9d7732dfeb7c2922")
!407 = !{!408, !409, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !405, file: !406, line: 33, baseType: !285, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "formats", scope: !405, file: !406, line: 34, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !411, line: 23, baseType: !412)
!411 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !413, line: 31, baseType: !414)
!413 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!414 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rates", scope: !405, file: !406, line: 35, baseType: !285, size: 32, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "rate_min", scope: !405, file: !406, line: 36, baseType: !285, size: 32, offset: 160)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rate_max", scope: !405, file: !406, line: 37, baseType: !285, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "channels_min", scope: !405, file: !406, line: 38, baseType: !285, size: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "channels_max", scope: !405, file: !406, line: 39, baseType: !285, size: 32, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_bytes_max", scope: !405, file: !406, line: 40, baseType: !233, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "period_bytes_min", scope: !405, file: !406, line: 41, baseType: !233, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "period_bytes_max", scope: !405, file: !406, line: 42, baseType: !233, size: 64, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "periods_min", scope: !405, file: !406, line: 43, baseType: !285, size: 32, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "periods_max", scope: !405, file: !406, line: 44, baseType: !285, size: 32, offset: 544)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_size", scope: !405, file: !406, line: 45, baseType: !233, size: 64, offset: 576)
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "hw", arg: 1, scope: !401, file: !3, line: 494, type: !404)
!428 = !DILocalVariable(name: "i", scope: !401, file: !3, line: 496, type: !5)
!429 = !DILocation(line: 494, column: 53, scope: !401)
!430 = !DILocation(line: 496, column: 2, scope: !401)
!431 = !DILocation(line: 496, column: 6, scope: !401)
!432 = !DILocation(line: 497, column: 9, scope: !433)
!433 = distinct !DILexicalBlock(scope: !401, file: !3, line: 497, column: 2)
!434 = !DILocation(line: 497, column: 7, scope: !433)
!435 = !DILocation(line: 497, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !3, line: 497, column: 2)
!437 = !DILocation(line: 497, column: 43, scope: !436)
!438 = !DILocation(line: 497, column: 16, scope: !436)
!439 = !DILocation(line: 497, column: 2, scope: !433)
!440 = !DILocation(line: 498, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 498, column: 7)
!442 = distinct !DILexicalBlock(scope: !436, file: !3, line: 497, column: 55)
!443 = !DILocation(line: 498, column: 11, scope: !441)
!444 = !DILocation(line: 498, column: 25, scope: !441)
!445 = !DILocation(line: 498, column: 22, scope: !441)
!446 = !DILocation(line: 498, column: 17, scope: !441)
!447 = !DILocation(line: 498, column: 7, scope: !442)
!448 = !DILocation(line: 499, column: 39, scope: !449)
!449 = distinct !DILexicalBlock(scope: !441, file: !3, line: 498, column: 29)
!450 = !DILocation(line: 499, column: 44, scope: !449)
!451 = !DILocation(line: 499, column: 19, scope: !449)
!452 = !DILocation(line: 499, column: 4, scope: !449)
!453 = !DILocation(line: 499, column: 8, scope: !449)
!454 = !DILocation(line: 499, column: 17, scope: !449)
!455 = !DILocation(line: 500, column: 4, scope: !449)
!456 = !DILocation(line: 502, column: 2, scope: !442)
!457 = !DILocation(line: 497, column: 51, scope: !436)
!458 = !DILocation(line: 497, column: 2, scope: !436)
!459 = distinct !{!459, !439, !460, !366, !367}
!460 = !DILocation(line: 502, column: 2, scope: !433)
!461 = !DILocation(line: 503, column: 36, scope: !462)
!462 = distinct !DILexicalBlock(scope: !401, file: !3, line: 503, column: 2)
!463 = !DILocation(line: 503, column: 42, scope: !462)
!464 = !DILocation(line: 503, column: 9, scope: !462)
!465 = !DILocation(line: 503, column: 7, scope: !462)
!466 = !DILocation(line: 503, column: 47, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !3, line: 503, column: 2)
!468 = !DILocation(line: 503, column: 49, scope: !467)
!469 = !DILocation(line: 503, column: 2, scope: !462)
!470 = !DILocation(line: 504, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 504, column: 7)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 503, column: 60)
!473 = !DILocation(line: 504, column: 11, scope: !471)
!474 = !DILocation(line: 504, column: 25, scope: !471)
!475 = !DILocation(line: 504, column: 22, scope: !471)
!476 = !DILocation(line: 504, column: 17, scope: !471)
!477 = !DILocation(line: 504, column: 7, scope: !472)
!478 = !DILocation(line: 505, column: 39, scope: !479)
!479 = distinct !DILexicalBlock(scope: !471, file: !3, line: 504, column: 29)
!480 = !DILocation(line: 505, column: 44, scope: !479)
!481 = !DILocation(line: 505, column: 19, scope: !479)
!482 = !DILocation(line: 505, column: 4, scope: !479)
!483 = !DILocation(line: 505, column: 8, scope: !479)
!484 = !DILocation(line: 505, column: 17, scope: !479)
!485 = !DILocation(line: 506, column: 4, scope: !479)
!486 = !DILocation(line: 508, column: 2, scope: !472)
!487 = !DILocation(line: 503, column: 56, scope: !467)
!488 = !DILocation(line: 503, column: 2, scope: !467)
!489 = distinct !{!489, !469, !490, !366, !367}
!490 = !DILocation(line: 508, column: 2, scope: !462)
!491 = !DILocation(line: 510, column: 1, scope: !401)
!492 = !DILocation(line: 509, column: 2, scope: !401)
!493 = distinct !DISubprogram(name: "snd_pcm_rate_to_rate_bit", scope: !3, file: !3, line: 520, type: !494, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!285, !285}
!496 = !{!497, !498}
!497 = !DILocalVariable(name: "rate", arg: 1, scope: !493, file: !3, line: 520, type: !285)
!498 = !DILocalVariable(name: "i", scope: !493, file: !3, line: 522, type: !285)
!499 = !DILocation(line: 520, column: 52, scope: !493)
!500 = !DILocation(line: 522, column: 2, scope: !493)
!501 = !DILocation(line: 522, column: 15, scope: !493)
!502 = !DILocation(line: 524, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !3, line: 524, column: 2)
!504 = !DILocation(line: 524, column: 7, scope: !503)
!505 = !DILocation(line: 524, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 524, column: 2)
!507 = !DILocation(line: 524, column: 38, scope: !506)
!508 = !DILocation(line: 524, column: 16, scope: !506)
!509 = !DILocation(line: 524, column: 2, scope: !503)
!510 = !DILocation(line: 525, column: 27, scope: !511)
!511 = distinct !DILexicalBlock(scope: !506, file: !3, line: 525, column: 7)
!512 = !DILocation(line: 525, column: 32, scope: !511)
!513 = !DILocation(line: 525, column: 7, scope: !511)
!514 = !DILocation(line: 525, column: 38, scope: !511)
!515 = !DILocation(line: 525, column: 35, scope: !511)
!516 = !DILocation(line: 525, column: 7, scope: !506)
!517 = !DILocation(line: 526, column: 17, scope: !511)
!518 = !DILocation(line: 526, column: 14, scope: !511)
!519 = !DILocation(line: 526, column: 4, scope: !511)
!520 = !DILocation(line: 524, column: 46, scope: !506)
!521 = !DILocation(line: 524, column: 2, scope: !506)
!522 = distinct !{!522, !509, !523, !366, !367}
!523 = !DILocation(line: 526, column: 17, scope: !503)
!524 = !DILocation(line: 527, column: 2, scope: !493)
!525 = !DILocation(line: 528, column: 1, scope: !493)
!526 = distinct !DISubprogram(name: "snd_pcm_rate_bit_to_rate", scope: !3, file: !3, line: 538, type: !494, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!527 = !{!528, !529}
!528 = !DILocalVariable(name: "rate_bit", arg: 1, scope: !526, file: !3, line: 538, type: !285)
!529 = !DILocalVariable(name: "i", scope: !526, file: !3, line: 540, type: !285)
!530 = !DILocation(line: 538, column: 52, scope: !526)
!531 = !DILocation(line: 540, column: 2, scope: !526)
!532 = !DILocation(line: 540, column: 15, scope: !526)
!533 = !DILocation(line: 542, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !526, file: !3, line: 542, column: 2)
!535 = !DILocation(line: 542, column: 7, scope: !534)
!536 = !DILocation(line: 542, column: 14, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 542, column: 2)
!538 = !DILocation(line: 542, column: 38, scope: !537)
!539 = !DILocation(line: 542, column: 16, scope: !537)
!540 = !DILocation(line: 542, column: 2, scope: !534)
!541 = !DILocation(line: 543, column: 14, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !3, line: 543, column: 7)
!543 = !DILocation(line: 543, column: 11, scope: !542)
!544 = !DILocation(line: 543, column: 20, scope: !542)
!545 = !DILocation(line: 543, column: 17, scope: !542)
!546 = !DILocation(line: 543, column: 7, scope: !537)
!547 = !DILocation(line: 544, column: 31, scope: !542)
!548 = !DILocation(line: 544, column: 36, scope: !542)
!549 = !DILocation(line: 544, column: 11, scope: !542)
!550 = !DILocation(line: 544, column: 4, scope: !542)
!551 = !DILocation(line: 542, column: 46, scope: !537)
!552 = !DILocation(line: 542, column: 2, scope: !537)
!553 = distinct !{!553, !540, !554, !366, !367}
!554 = !DILocation(line: 544, column: 37, scope: !534)
!555 = !DILocation(line: 545, column: 2, scope: !526)
!556 = !DILocation(line: 546, column: 1, scope: !526)
!557 = distinct !DISubprogram(name: "snd_pcm_rate_mask_intersect", scope: !3, file: !3, line: 570, type: !558, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!285, !285, !285}
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "rates_a", arg: 1, scope: !557, file: !3, line: 570, type: !285)
!562 = !DILocalVariable(name: "rates_b", arg: 2, scope: !557, file: !3, line: 571, type: !285)
!563 = !DILocation(line: 570, column: 55, scope: !557)
!564 = !DILocation(line: 571, column: 15, scope: !557)
!565 = !DILocation(line: 573, column: 39, scope: !557)
!566 = !DILocation(line: 573, column: 12, scope: !557)
!567 = !DILocation(line: 573, column: 10, scope: !557)
!568 = !DILocation(line: 574, column: 39, scope: !557)
!569 = !DILocation(line: 574, column: 12, scope: !557)
!570 = !DILocation(line: 574, column: 10, scope: !557)
!571 = !DILocation(line: 576, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !557, file: !3, line: 576, column: 6)
!573 = !DILocation(line: 576, column: 14, scope: !572)
!574 = !DILocation(line: 576, column: 6, scope: !557)
!575 = !DILocation(line: 577, column: 10, scope: !572)
!576 = !DILocation(line: 577, column: 3, scope: !572)
!577 = !DILocation(line: 578, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !572, file: !3, line: 578, column: 11)
!579 = !DILocation(line: 578, column: 19, scope: !578)
!580 = !DILocation(line: 578, column: 11, scope: !572)
!581 = !DILocation(line: 579, column: 10, scope: !578)
!582 = !DILocation(line: 579, column: 3, scope: !578)
!583 = !DILocation(line: 580, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !578, file: !3, line: 580, column: 11)
!585 = !DILocation(line: 580, column: 19, scope: !584)
!586 = !DILocation(line: 580, column: 11, scope: !578)
!587 = !DILocation(line: 581, column: 10, scope: !584)
!588 = !DILocation(line: 581, column: 3, scope: !584)
!589 = !DILocation(line: 582, column: 11, scope: !590)
!590 = distinct !DILexicalBlock(scope: !584, file: !3, line: 582, column: 11)
!591 = !DILocation(line: 582, column: 19, scope: !590)
!592 = !DILocation(line: 582, column: 11, scope: !584)
!593 = !DILocation(line: 583, column: 10, scope: !590)
!594 = !DILocation(line: 583, column: 3, scope: !590)
!595 = !DILocation(line: 584, column: 9, scope: !557)
!596 = !DILocation(line: 584, column: 19, scope: !557)
!597 = !DILocation(line: 584, column: 17, scope: !557)
!598 = !DILocation(line: 584, column: 2, scope: !557)
!599 = !DILocation(line: 585, column: 1, scope: !557)
!600 = distinct !DISubprogram(name: "snd_pcm_rate_mask_sanitize", scope: !3, file: !3, line: 549, type: !494, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!601 = !{!602}
!602 = !DILocalVariable(name: "rates", arg: 1, scope: !600, file: !3, line: 549, type: !285)
!603 = !DILocation(line: 549, column: 61, scope: !600)
!604 = !DILocation(line: 551, column: 6, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !3, line: 551, column: 6)
!606 = !DILocation(line: 551, column: 12, scope: !605)
!607 = !DILocation(line: 551, column: 6, scope: !600)
!608 = !DILocation(line: 552, column: 3, scope: !605)
!609 = !DILocation(line: 553, column: 11, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !3, line: 553, column: 11)
!611 = !DILocation(line: 553, column: 17, scope: !610)
!612 = !DILocation(line: 553, column: 11, scope: !605)
!613 = !DILocation(line: 554, column: 3, scope: !610)
!614 = !DILocation(line: 555, column: 9, scope: !600)
!615 = !DILocation(line: 555, column: 2, scope: !600)
!616 = !DILocation(line: 556, column: 1, scope: !600)
!617 = distinct !DISubprogram(name: "snd_pcm_rate_range_to_bits", scope: !3, file: !3, line: 599, type: !558, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!618 = !{!619, !620, !621, !622}
!619 = !DILocalVariable(name: "rate_min", arg: 1, scope: !617, file: !3, line: 599, type: !285)
!620 = !DILocalVariable(name: "rate_max", arg: 2, scope: !617, file: !3, line: 600, type: !285)
!621 = !DILocalVariable(name: "rates", scope: !617, file: !3, line: 602, type: !285)
!622 = !DILocalVariable(name: "i", scope: !617, file: !3, line: 603, type: !5)
!623 = !DILocation(line: 599, column: 54, scope: !617)
!624 = !DILocation(line: 600, column: 15, scope: !617)
!625 = !DILocation(line: 602, column: 2, scope: !617)
!626 = !DILocation(line: 602, column: 15, scope: !617)
!627 = !DILocation(line: 603, column: 2, scope: !617)
!628 = !DILocation(line: 603, column: 6, scope: !617)
!629 = !DILocation(line: 605, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !617, file: !3, line: 605, column: 2)
!631 = !DILocation(line: 605, column: 7, scope: !630)
!632 = !DILocation(line: 605, column: 14, scope: !633)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 605, column: 2)
!634 = !DILocation(line: 605, column: 38, scope: !633)
!635 = !DILocation(line: 605, column: 16, scope: !633)
!636 = !DILocation(line: 605, column: 2, scope: !630)
!637 = !DILocation(line: 606, column: 27, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 606, column: 7)
!639 = distinct !DILexicalBlock(scope: !633, file: !3, line: 605, column: 50)
!640 = !DILocation(line: 606, column: 32, scope: !638)
!641 = !DILocation(line: 606, column: 7, scope: !638)
!642 = !DILocation(line: 606, column: 38, scope: !638)
!643 = !DILocation(line: 606, column: 35, scope: !638)
!644 = !DILocation(line: 607, column: 4, scope: !638)
!645 = !DILocation(line: 607, column: 27, scope: !638)
!646 = !DILocation(line: 607, column: 32, scope: !638)
!647 = !DILocation(line: 607, column: 7, scope: !638)
!648 = !DILocation(line: 607, column: 38, scope: !638)
!649 = !DILocation(line: 607, column: 35, scope: !638)
!650 = !DILocation(line: 606, column: 7, scope: !639)
!651 = !DILocation(line: 608, column: 18, scope: !638)
!652 = !DILocation(line: 608, column: 15, scope: !638)
!653 = !DILocation(line: 608, column: 10, scope: !638)
!654 = !DILocation(line: 608, column: 4, scope: !638)
!655 = !DILocation(line: 609, column: 2, scope: !639)
!656 = !DILocation(line: 605, column: 46, scope: !633)
!657 = !DILocation(line: 605, column: 2, scope: !633)
!658 = distinct !{!658, !636, !659, !366, !367}
!659 = !DILocation(line: 609, column: 2, scope: !630)
!660 = !DILocation(line: 611, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !617, file: !3, line: 611, column: 6)
!662 = !DILocation(line: 611, column: 6, scope: !617)
!663 = !DILocation(line: 612, column: 9, scope: !661)
!664 = !DILocation(line: 612, column: 3, scope: !661)
!665 = !DILocation(line: 614, column: 9, scope: !617)
!666 = !DILocation(line: 615, column: 1, scope: !617)
!667 = !DILocation(line: 614, column: 2, scope: !617)
