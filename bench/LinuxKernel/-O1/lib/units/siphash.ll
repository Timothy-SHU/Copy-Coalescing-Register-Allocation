; ModuleID = 'lib/siphash.c'
source_filename = "lib/siphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___siphash_unaligned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __siphash_unaligned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_siphash_1u64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad siphash_1u64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_siphash_2u64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad siphash_2u64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_siphash_3u64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad siphash_3u64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_siphash_4u64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad siphash_4u64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_siphash_1u32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad siphash_1u32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_siphash_3u32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad siphash_3u32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___hsiphash_unaligned: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __hsiphash_unaligned ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsiphash_1u32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hsiphash_1u32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsiphash_2u32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hsiphash_2u32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsiphash_3u32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hsiphash_3u32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hsiphash_4u32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad hsiphash_4u32 ; .previous"

%struct.siphash_key_t = type { [2 x i64] }
%struct.anon = type { i64 }
%struct.hsiphash_key_t = type { [2 x i64] }

@__UNIQUE_ID___addressable___siphash_unaligned135 = internal global ptr @__siphash_unaligned, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_siphash_1u64136 = internal global ptr @siphash_1u64, section ".discard.addressable", align 8, !dbg !31
@__UNIQUE_ID___addressable_siphash_2u64137 = internal global ptr @siphash_2u64, section ".discard.addressable", align 8, !dbg !33
@__UNIQUE_ID___addressable_siphash_3u64138 = internal global ptr @siphash_3u64, section ".discard.addressable", align 8, !dbg !35
@__UNIQUE_ID___addressable_siphash_4u64139 = internal global ptr @siphash_4u64, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID___addressable_siphash_1u32140 = internal global ptr @siphash_1u32, section ".discard.addressable", align 8, !dbg !39
@__UNIQUE_ID___addressable_siphash_3u32141 = internal global ptr @siphash_3u32, section ".discard.addressable", align 8, !dbg !41
@__UNIQUE_ID___addressable___hsiphash_unaligned142 = internal global ptr @__hsiphash_unaligned, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable_hsiphash_1u32143 = internal global ptr @hsiphash_1u32, section ".discard.addressable", align 8, !dbg !45
@__UNIQUE_ID___addressable_hsiphash_2u32144 = internal global ptr @hsiphash_2u32, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable_hsiphash_3u32145 = internal global ptr @hsiphash_3u32, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable_hsiphash_4u32146 = internal global ptr @hsiphash_4u32, section ".discard.addressable", align 8, !dbg !51
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable___siphash_unaligned135, ptr @__UNIQUE_ID___addressable_siphash_1u64136, ptr @__UNIQUE_ID___addressable_siphash_2u64137, ptr @__UNIQUE_ID___addressable_siphash_3u64138, ptr @__UNIQUE_ID___addressable_siphash_4u64139, ptr @__UNIQUE_ID___addressable_siphash_1u32140, ptr @__UNIQUE_ID___addressable_siphash_3u32141, ptr @__UNIQUE_ID___addressable___hsiphash_unaligned142, ptr @__UNIQUE_ID___addressable_hsiphash_1u32143, ptr @__UNIQUE_ID___addressable_hsiphash_2u32144, ptr @__UNIQUE_ID___addressable_hsiphash_3u32145, ptr @__UNIQUE_ID___addressable_hsiphash_4u32146], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__siphash_unaligned(ptr noundef %data, i64 noundef %len, ptr noundef %key) #0 align 16 !dbg !62 {
entry:
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %left = alloca i8, align 1
  %m = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !81, metadata !DIExpression()), !dbg !97
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !82, metadata !DIExpression()), !dbg !98
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !83, metadata !DIExpression()), !dbg !99
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !100
  call void @llvm.dbg.declare(metadata ptr %end, metadata !84, metadata !DIExpression()), !dbg !101
  %0 = load ptr, ptr %data.addr, align 8, !dbg !102
  %1 = load i64, ptr %len.addr, align 8, !dbg !103
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !104
  %2 = load i64, ptr %len.addr, align 8, !dbg !105
  %rem = urem i64 %2, 8, !dbg !106
  %idx.neg = sub i64 0, %rem, !dbg !107
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 %idx.neg, !dbg !107
  store ptr %add.ptr1, ptr %end, align 8, !dbg !101
  call void @llvm.lifetime.start.p0(i64 1, ptr %left) #4, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %left, metadata !90, metadata !DIExpression()), !dbg !109
  %3 = load i64, ptr %len.addr, align 8, !dbg !110
  %and = and i64 %3, 7, !dbg !111
  %conv = trunc i64 %and to i8, !dbg !110
  store i8 %conv, ptr %left, align 1, !dbg !109
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #4, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %m, metadata !91, metadata !DIExpression()), !dbg !113
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !92, metadata !DIExpression()), !dbg !114
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !93, metadata !DIExpression()), !dbg !114
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !94, metadata !DIExpression()), !dbg !114
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !95, metadata !DIExpression()), !dbg !114
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %b, metadata !96, metadata !DIExpression()), !dbg !114
  %4 = load i64, ptr %len.addr, align 8, !dbg !114
  %shl = shl i64 %4, 56, !dbg !114
  store i64 %shl, ptr %b, align 8, !dbg !114
  %5 = load ptr, ptr %key.addr, align 8, !dbg !114
  %key2 = getelementptr inbounds %struct.siphash_key_t, ptr %5, i32 0, i32 0, !dbg !114
  %arrayidx = getelementptr [2 x i64], ptr %key2, i64 0, i64 1, !dbg !114
  %6 = load i64, ptr %arrayidx, align 8, !dbg !114
  %7 = load i64, ptr %v3, align 8, !dbg !114
  %xor = xor i64 %7, %6, !dbg !114
  store i64 %xor, ptr %v3, align 8, !dbg !114
  %8 = load ptr, ptr %key.addr, align 8, !dbg !114
  %key3 = getelementptr inbounds %struct.siphash_key_t, ptr %8, i32 0, i32 0, !dbg !114
  %arrayidx4 = getelementptr [2 x i64], ptr %key3, i64 0, i64 0, !dbg !114
  %9 = load i64, ptr %arrayidx4, align 8, !dbg !114
  %10 = load i64, ptr %v2, align 8, !dbg !114
  %xor5 = xor i64 %10, %9, !dbg !114
  store i64 %xor5, ptr %v2, align 8, !dbg !114
  %11 = load ptr, ptr %key.addr, align 8, !dbg !114
  %key6 = getelementptr inbounds %struct.siphash_key_t, ptr %11, i32 0, i32 0, !dbg !114
  %arrayidx7 = getelementptr [2 x i64], ptr %key6, i64 0, i64 1, !dbg !114
  %12 = load i64, ptr %arrayidx7, align 8, !dbg !114
  %13 = load i64, ptr %v1, align 8, !dbg !114
  %xor8 = xor i64 %13, %12, !dbg !114
  store i64 %xor8, ptr %v1, align 8, !dbg !114
  %14 = load ptr, ptr %key.addr, align 8, !dbg !114
  %key9 = getelementptr inbounds %struct.siphash_key_t, ptr %14, i32 0, i32 0, !dbg !114
  %arrayidx10 = getelementptr [2 x i64], ptr %key9, i64 0, i64 0, !dbg !114
  %15 = load i64, ptr %arrayidx10, align 8, !dbg !114
  %16 = load i64, ptr %v0, align 8, !dbg !114
  %xor11 = xor i64 %16, %15, !dbg !114
  store i64 %xor11, ptr %v0, align 8, !dbg !114
  br label %for.cond, !dbg !115

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load ptr, ptr %data.addr, align 8, !dbg !116
  %18 = load ptr, ptr %end, align 8, !dbg !119
  %cmp = icmp ne ptr %17, %18, !dbg !120
  br i1 %cmp, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %data.addr, align 8, !dbg !122
  %call = call i64 @get_unaligned_le64(ptr noundef %19) #5, !dbg !124
  store i64 %call, ptr %m, align 8, !dbg !125
  %20 = load i64, ptr %m, align 8, !dbg !126
  %21 = load i64, ptr %v3, align 8, !dbg !127
  %xor13 = xor i64 %21, %20, !dbg !127
  store i64 %xor13, ptr %v3, align 8, !dbg !127
  %22 = load i64, ptr %v1, align 8, !dbg !128
  %23 = load i64, ptr %v0, align 8, !dbg !128
  %add = add i64 %23, %22, !dbg !128
  store i64 %add, ptr %v0, align 8, !dbg !128
  %24 = load i64, ptr %v1, align 8, !dbg !128
  %call14 = call i64 @rol64(i64 noundef %24, i32 noundef 13) #5, !dbg !128
  store i64 %call14, ptr %v1, align 8, !dbg !128
  %25 = load i64, ptr %v0, align 8, !dbg !128
  %26 = load i64, ptr %v1, align 8, !dbg !128
  %xor15 = xor i64 %26, %25, !dbg !128
  store i64 %xor15, ptr %v1, align 8, !dbg !128
  %27 = load i64, ptr %v0, align 8, !dbg !128
  %call16 = call i64 @rol64(i64 noundef %27, i32 noundef 32) #5, !dbg !128
  store i64 %call16, ptr %v0, align 8, !dbg !128
  %28 = load i64, ptr %v3, align 8, !dbg !128
  %29 = load i64, ptr %v2, align 8, !dbg !128
  %add17 = add i64 %29, %28, !dbg !128
  store i64 %add17, ptr %v2, align 8, !dbg !128
  %30 = load i64, ptr %v3, align 8, !dbg !128
  %call18 = call i64 @rol64(i64 noundef %30, i32 noundef 16) #5, !dbg !128
  store i64 %call18, ptr %v3, align 8, !dbg !128
  %31 = load i64, ptr %v2, align 8, !dbg !128
  %32 = load i64, ptr %v3, align 8, !dbg !128
  %xor19 = xor i64 %32, %31, !dbg !128
  store i64 %xor19, ptr %v3, align 8, !dbg !128
  %33 = load i64, ptr %v3, align 8, !dbg !128
  %34 = load i64, ptr %v0, align 8, !dbg !128
  %add20 = add i64 %34, %33, !dbg !128
  store i64 %add20, ptr %v0, align 8, !dbg !128
  %35 = load i64, ptr %v3, align 8, !dbg !128
  %call21 = call i64 @rol64(i64 noundef %35, i32 noundef 21) #5, !dbg !128
  store i64 %call21, ptr %v3, align 8, !dbg !128
  %36 = load i64, ptr %v0, align 8, !dbg !128
  %37 = load i64, ptr %v3, align 8, !dbg !128
  %xor22 = xor i64 %37, %36, !dbg !128
  store i64 %xor22, ptr %v3, align 8, !dbg !128
  %38 = load i64, ptr %v1, align 8, !dbg !128
  %39 = load i64, ptr %v2, align 8, !dbg !128
  %add23 = add i64 %39, %38, !dbg !128
  store i64 %add23, ptr %v2, align 8, !dbg !128
  %40 = load i64, ptr %v1, align 8, !dbg !128
  %call24 = call i64 @rol64(i64 noundef %40, i32 noundef 17) #5, !dbg !128
  store i64 %call24, ptr %v1, align 8, !dbg !128
  %41 = load i64, ptr %v2, align 8, !dbg !128
  %42 = load i64, ptr %v1, align 8, !dbg !128
  %xor25 = xor i64 %42, %41, !dbg !128
  store i64 %xor25, ptr %v1, align 8, !dbg !128
  %43 = load i64, ptr %v2, align 8, !dbg !128
  %call26 = call i64 @rol64(i64 noundef %43, i32 noundef 32) #5, !dbg !128
  store i64 %call26, ptr %v2, align 8, !dbg !128
  %44 = load i64, ptr %v1, align 8, !dbg !129
  %45 = load i64, ptr %v0, align 8, !dbg !129
  %add27 = add i64 %45, %44, !dbg !129
  store i64 %add27, ptr %v0, align 8, !dbg !129
  %46 = load i64, ptr %v1, align 8, !dbg !129
  %call28 = call i64 @rol64(i64 noundef %46, i32 noundef 13) #5, !dbg !129
  store i64 %call28, ptr %v1, align 8, !dbg !129
  %47 = load i64, ptr %v0, align 8, !dbg !129
  %48 = load i64, ptr %v1, align 8, !dbg !129
  %xor29 = xor i64 %48, %47, !dbg !129
  store i64 %xor29, ptr %v1, align 8, !dbg !129
  %49 = load i64, ptr %v0, align 8, !dbg !129
  %call30 = call i64 @rol64(i64 noundef %49, i32 noundef 32) #5, !dbg !129
  store i64 %call30, ptr %v0, align 8, !dbg !129
  %50 = load i64, ptr %v3, align 8, !dbg !129
  %51 = load i64, ptr %v2, align 8, !dbg !129
  %add31 = add i64 %51, %50, !dbg !129
  store i64 %add31, ptr %v2, align 8, !dbg !129
  %52 = load i64, ptr %v3, align 8, !dbg !129
  %call32 = call i64 @rol64(i64 noundef %52, i32 noundef 16) #5, !dbg !129
  store i64 %call32, ptr %v3, align 8, !dbg !129
  %53 = load i64, ptr %v2, align 8, !dbg !129
  %54 = load i64, ptr %v3, align 8, !dbg !129
  %xor33 = xor i64 %54, %53, !dbg !129
  store i64 %xor33, ptr %v3, align 8, !dbg !129
  %55 = load i64, ptr %v3, align 8, !dbg !129
  %56 = load i64, ptr %v0, align 8, !dbg !129
  %add34 = add i64 %56, %55, !dbg !129
  store i64 %add34, ptr %v0, align 8, !dbg !129
  %57 = load i64, ptr %v3, align 8, !dbg !129
  %call35 = call i64 @rol64(i64 noundef %57, i32 noundef 21) #5, !dbg !129
  store i64 %call35, ptr %v3, align 8, !dbg !129
  %58 = load i64, ptr %v0, align 8, !dbg !129
  %59 = load i64, ptr %v3, align 8, !dbg !129
  %xor36 = xor i64 %59, %58, !dbg !129
  store i64 %xor36, ptr %v3, align 8, !dbg !129
  %60 = load i64, ptr %v1, align 8, !dbg !129
  %61 = load i64, ptr %v2, align 8, !dbg !129
  %add37 = add i64 %61, %60, !dbg !129
  store i64 %add37, ptr %v2, align 8, !dbg !129
  %62 = load i64, ptr %v1, align 8, !dbg !129
  %call38 = call i64 @rol64(i64 noundef %62, i32 noundef 17) #5, !dbg !129
  store i64 %call38, ptr %v1, align 8, !dbg !129
  %63 = load i64, ptr %v2, align 8, !dbg !129
  %64 = load i64, ptr %v1, align 8, !dbg !129
  %xor39 = xor i64 %64, %63, !dbg !129
  store i64 %xor39, ptr %v1, align 8, !dbg !129
  %65 = load i64, ptr %v2, align 8, !dbg !129
  %call40 = call i64 @rol64(i64 noundef %65, i32 noundef 32) #5, !dbg !129
  store i64 %call40, ptr %v2, align 8, !dbg !129
  %66 = load i64, ptr %m, align 8, !dbg !130
  %67 = load i64, ptr %v0, align 8, !dbg !131
  %xor41 = xor i64 %67, %66, !dbg !131
  store i64 %xor41, ptr %v0, align 8, !dbg !131
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %for.body
  %68 = load ptr, ptr %data.addr, align 8, !dbg !133
  %add.ptr42 = getelementptr i8, ptr %68, i64 8, !dbg !133
  store ptr %add.ptr42, ptr %data.addr, align 8, !dbg !133
  br label %for.cond, !dbg !134, !llvm.loop !135

for.end:                                          ; preds = %for.cond
  %69 = load i8, ptr %left, align 1, !dbg !139
  %tobool = icmp ne i8 %69, 0, !dbg !139
  br i1 %tobool, label %if.then, label %if.end, !dbg !141

if.then:                                          ; preds = %for.end
  %70 = load ptr, ptr %data.addr, align 8, !dbg !142
  %call43 = call i64 @load_unaligned_zeropad(ptr noundef %70) #5, !dbg !142
  %71 = load i8, ptr %left, align 1, !dbg !142
  %conv44 = zext i8 %71 to i32, !dbg !142
  %mul = mul i32 %conv44, 8, !dbg !142
  %sh_prom = zext i32 %mul to i64, !dbg !142
  %shl45 = shl i64 -1, %sh_prom, !dbg !142
  %not = xor i64 %shl45, -1, !dbg !142
  %and46 = and i64 %call43, %not, !dbg !142
  %72 = load i64, ptr %b, align 8, !dbg !143
  %or = or i64 %72, %and46, !dbg !143
  store i64 %or, ptr %b, align 8, !dbg !143
  br label %if.end, !dbg !144

if.end:                                           ; preds = %if.then, %for.end
  %73 = load i64, ptr %b, align 8, !dbg !145
  %74 = load i64, ptr %v3, align 8, !dbg !145
  %xor47 = xor i64 %74, %73, !dbg !145
  store i64 %xor47, ptr %v3, align 8, !dbg !145
  %75 = load i64, ptr %v1, align 8, !dbg !145
  %76 = load i64, ptr %v0, align 8, !dbg !145
  %add48 = add i64 %76, %75, !dbg !145
  store i64 %add48, ptr %v0, align 8, !dbg !145
  %77 = load i64, ptr %v1, align 8, !dbg !145
  %call49 = call i64 @rol64(i64 noundef %77, i32 noundef 13) #5, !dbg !145
  store i64 %call49, ptr %v1, align 8, !dbg !145
  %78 = load i64, ptr %v0, align 8, !dbg !145
  %79 = load i64, ptr %v1, align 8, !dbg !145
  %xor50 = xor i64 %79, %78, !dbg !145
  store i64 %xor50, ptr %v1, align 8, !dbg !145
  %80 = load i64, ptr %v0, align 8, !dbg !145
  %call51 = call i64 @rol64(i64 noundef %80, i32 noundef 32) #5, !dbg !145
  store i64 %call51, ptr %v0, align 8, !dbg !145
  %81 = load i64, ptr %v3, align 8, !dbg !145
  %82 = load i64, ptr %v2, align 8, !dbg !145
  %add52 = add i64 %82, %81, !dbg !145
  store i64 %add52, ptr %v2, align 8, !dbg !145
  %83 = load i64, ptr %v3, align 8, !dbg !145
  %call53 = call i64 @rol64(i64 noundef %83, i32 noundef 16) #5, !dbg !145
  store i64 %call53, ptr %v3, align 8, !dbg !145
  %84 = load i64, ptr %v2, align 8, !dbg !145
  %85 = load i64, ptr %v3, align 8, !dbg !145
  %xor54 = xor i64 %85, %84, !dbg !145
  store i64 %xor54, ptr %v3, align 8, !dbg !145
  %86 = load i64, ptr %v3, align 8, !dbg !145
  %87 = load i64, ptr %v0, align 8, !dbg !145
  %add55 = add i64 %87, %86, !dbg !145
  store i64 %add55, ptr %v0, align 8, !dbg !145
  %88 = load i64, ptr %v3, align 8, !dbg !145
  %call56 = call i64 @rol64(i64 noundef %88, i32 noundef 21) #5, !dbg !145
  store i64 %call56, ptr %v3, align 8, !dbg !145
  %89 = load i64, ptr %v0, align 8, !dbg !145
  %90 = load i64, ptr %v3, align 8, !dbg !145
  %xor57 = xor i64 %90, %89, !dbg !145
  store i64 %xor57, ptr %v3, align 8, !dbg !145
  %91 = load i64, ptr %v1, align 8, !dbg !145
  %92 = load i64, ptr %v2, align 8, !dbg !145
  %add58 = add i64 %92, %91, !dbg !145
  store i64 %add58, ptr %v2, align 8, !dbg !145
  %93 = load i64, ptr %v1, align 8, !dbg !145
  %call59 = call i64 @rol64(i64 noundef %93, i32 noundef 17) #5, !dbg !145
  store i64 %call59, ptr %v1, align 8, !dbg !145
  %94 = load i64, ptr %v2, align 8, !dbg !145
  %95 = load i64, ptr %v1, align 8, !dbg !145
  %xor60 = xor i64 %95, %94, !dbg !145
  store i64 %xor60, ptr %v1, align 8, !dbg !145
  %96 = load i64, ptr %v2, align 8, !dbg !145
  %call61 = call i64 @rol64(i64 noundef %96, i32 noundef 32) #5, !dbg !145
  store i64 %call61, ptr %v2, align 8, !dbg !145
  %97 = load i64, ptr %v1, align 8, !dbg !145
  %98 = load i64, ptr %v0, align 8, !dbg !145
  %add62 = add i64 %98, %97, !dbg !145
  store i64 %add62, ptr %v0, align 8, !dbg !145
  %99 = load i64, ptr %v1, align 8, !dbg !145
  %call63 = call i64 @rol64(i64 noundef %99, i32 noundef 13) #5, !dbg !145
  store i64 %call63, ptr %v1, align 8, !dbg !145
  %100 = load i64, ptr %v0, align 8, !dbg !145
  %101 = load i64, ptr %v1, align 8, !dbg !145
  %xor64 = xor i64 %101, %100, !dbg !145
  store i64 %xor64, ptr %v1, align 8, !dbg !145
  %102 = load i64, ptr %v0, align 8, !dbg !145
  %call65 = call i64 @rol64(i64 noundef %102, i32 noundef 32) #5, !dbg !145
  store i64 %call65, ptr %v0, align 8, !dbg !145
  %103 = load i64, ptr %v3, align 8, !dbg !145
  %104 = load i64, ptr %v2, align 8, !dbg !145
  %add66 = add i64 %104, %103, !dbg !145
  store i64 %add66, ptr %v2, align 8, !dbg !145
  %105 = load i64, ptr %v3, align 8, !dbg !145
  %call67 = call i64 @rol64(i64 noundef %105, i32 noundef 16) #5, !dbg !145
  store i64 %call67, ptr %v3, align 8, !dbg !145
  %106 = load i64, ptr %v2, align 8, !dbg !145
  %107 = load i64, ptr %v3, align 8, !dbg !145
  %xor68 = xor i64 %107, %106, !dbg !145
  store i64 %xor68, ptr %v3, align 8, !dbg !145
  %108 = load i64, ptr %v3, align 8, !dbg !145
  %109 = load i64, ptr %v0, align 8, !dbg !145
  %add69 = add i64 %109, %108, !dbg !145
  store i64 %add69, ptr %v0, align 8, !dbg !145
  %110 = load i64, ptr %v3, align 8, !dbg !145
  %call70 = call i64 @rol64(i64 noundef %110, i32 noundef 21) #5, !dbg !145
  store i64 %call70, ptr %v3, align 8, !dbg !145
  %111 = load i64, ptr %v0, align 8, !dbg !145
  %112 = load i64, ptr %v3, align 8, !dbg !145
  %xor71 = xor i64 %112, %111, !dbg !145
  store i64 %xor71, ptr %v3, align 8, !dbg !145
  %113 = load i64, ptr %v1, align 8, !dbg !145
  %114 = load i64, ptr %v2, align 8, !dbg !145
  %add72 = add i64 %114, %113, !dbg !145
  store i64 %add72, ptr %v2, align 8, !dbg !145
  %115 = load i64, ptr %v1, align 8, !dbg !145
  %call73 = call i64 @rol64(i64 noundef %115, i32 noundef 17) #5, !dbg !145
  store i64 %call73, ptr %v1, align 8, !dbg !145
  %116 = load i64, ptr %v2, align 8, !dbg !145
  %117 = load i64, ptr %v1, align 8, !dbg !145
  %xor74 = xor i64 %117, %116, !dbg !145
  store i64 %xor74, ptr %v1, align 8, !dbg !145
  %118 = load i64, ptr %v2, align 8, !dbg !145
  %call75 = call i64 @rol64(i64 noundef %118, i32 noundef 32) #5, !dbg !145
  store i64 %call75, ptr %v2, align 8, !dbg !145
  %119 = load i64, ptr %b, align 8, !dbg !145
  %120 = load i64, ptr %v0, align 8, !dbg !145
  %xor76 = xor i64 %120, %119, !dbg !145
  store i64 %xor76, ptr %v0, align 8, !dbg !145
  %121 = load i64, ptr %v2, align 8, !dbg !145
  %xor77 = xor i64 %121, 255, !dbg !145
  store i64 %xor77, ptr %v2, align 8, !dbg !145
  %122 = load i64, ptr %v1, align 8, !dbg !145
  %123 = load i64, ptr %v0, align 8, !dbg !145
  %add78 = add i64 %123, %122, !dbg !145
  store i64 %add78, ptr %v0, align 8, !dbg !145
  %124 = load i64, ptr %v1, align 8, !dbg !145
  %call79 = call i64 @rol64(i64 noundef %124, i32 noundef 13) #5, !dbg !145
  store i64 %call79, ptr %v1, align 8, !dbg !145
  %125 = load i64, ptr %v0, align 8, !dbg !145
  %126 = load i64, ptr %v1, align 8, !dbg !145
  %xor80 = xor i64 %126, %125, !dbg !145
  store i64 %xor80, ptr %v1, align 8, !dbg !145
  %127 = load i64, ptr %v0, align 8, !dbg !145
  %call81 = call i64 @rol64(i64 noundef %127, i32 noundef 32) #5, !dbg !145
  store i64 %call81, ptr %v0, align 8, !dbg !145
  %128 = load i64, ptr %v3, align 8, !dbg !145
  %129 = load i64, ptr %v2, align 8, !dbg !145
  %add82 = add i64 %129, %128, !dbg !145
  store i64 %add82, ptr %v2, align 8, !dbg !145
  %130 = load i64, ptr %v3, align 8, !dbg !145
  %call83 = call i64 @rol64(i64 noundef %130, i32 noundef 16) #5, !dbg !145
  store i64 %call83, ptr %v3, align 8, !dbg !145
  %131 = load i64, ptr %v2, align 8, !dbg !145
  %132 = load i64, ptr %v3, align 8, !dbg !145
  %xor84 = xor i64 %132, %131, !dbg !145
  store i64 %xor84, ptr %v3, align 8, !dbg !145
  %133 = load i64, ptr %v3, align 8, !dbg !145
  %134 = load i64, ptr %v0, align 8, !dbg !145
  %add85 = add i64 %134, %133, !dbg !145
  store i64 %add85, ptr %v0, align 8, !dbg !145
  %135 = load i64, ptr %v3, align 8, !dbg !145
  %call86 = call i64 @rol64(i64 noundef %135, i32 noundef 21) #5, !dbg !145
  store i64 %call86, ptr %v3, align 8, !dbg !145
  %136 = load i64, ptr %v0, align 8, !dbg !145
  %137 = load i64, ptr %v3, align 8, !dbg !145
  %xor87 = xor i64 %137, %136, !dbg !145
  store i64 %xor87, ptr %v3, align 8, !dbg !145
  %138 = load i64, ptr %v1, align 8, !dbg !145
  %139 = load i64, ptr %v2, align 8, !dbg !145
  %add88 = add i64 %139, %138, !dbg !145
  store i64 %add88, ptr %v2, align 8, !dbg !145
  %140 = load i64, ptr %v1, align 8, !dbg !145
  %call89 = call i64 @rol64(i64 noundef %140, i32 noundef 17) #5, !dbg !145
  store i64 %call89, ptr %v1, align 8, !dbg !145
  %141 = load i64, ptr %v2, align 8, !dbg !145
  %142 = load i64, ptr %v1, align 8, !dbg !145
  %xor90 = xor i64 %142, %141, !dbg !145
  store i64 %xor90, ptr %v1, align 8, !dbg !145
  %143 = load i64, ptr %v2, align 8, !dbg !145
  %call91 = call i64 @rol64(i64 noundef %143, i32 noundef 32) #5, !dbg !145
  store i64 %call91, ptr %v2, align 8, !dbg !145
  %144 = load i64, ptr %v1, align 8, !dbg !145
  %145 = load i64, ptr %v0, align 8, !dbg !145
  %add92 = add i64 %145, %144, !dbg !145
  store i64 %add92, ptr %v0, align 8, !dbg !145
  %146 = load i64, ptr %v1, align 8, !dbg !145
  %call93 = call i64 @rol64(i64 noundef %146, i32 noundef 13) #5, !dbg !145
  store i64 %call93, ptr %v1, align 8, !dbg !145
  %147 = load i64, ptr %v0, align 8, !dbg !145
  %148 = load i64, ptr %v1, align 8, !dbg !145
  %xor94 = xor i64 %148, %147, !dbg !145
  store i64 %xor94, ptr %v1, align 8, !dbg !145
  %149 = load i64, ptr %v0, align 8, !dbg !145
  %call95 = call i64 @rol64(i64 noundef %149, i32 noundef 32) #5, !dbg !145
  store i64 %call95, ptr %v0, align 8, !dbg !145
  %150 = load i64, ptr %v3, align 8, !dbg !145
  %151 = load i64, ptr %v2, align 8, !dbg !145
  %add96 = add i64 %151, %150, !dbg !145
  store i64 %add96, ptr %v2, align 8, !dbg !145
  %152 = load i64, ptr %v3, align 8, !dbg !145
  %call97 = call i64 @rol64(i64 noundef %152, i32 noundef 16) #5, !dbg !145
  store i64 %call97, ptr %v3, align 8, !dbg !145
  %153 = load i64, ptr %v2, align 8, !dbg !145
  %154 = load i64, ptr %v3, align 8, !dbg !145
  %xor98 = xor i64 %154, %153, !dbg !145
  store i64 %xor98, ptr %v3, align 8, !dbg !145
  %155 = load i64, ptr %v3, align 8, !dbg !145
  %156 = load i64, ptr %v0, align 8, !dbg !145
  %add99 = add i64 %156, %155, !dbg !145
  store i64 %add99, ptr %v0, align 8, !dbg !145
  %157 = load i64, ptr %v3, align 8, !dbg !145
  %call100 = call i64 @rol64(i64 noundef %157, i32 noundef 21) #5, !dbg !145
  store i64 %call100, ptr %v3, align 8, !dbg !145
  %158 = load i64, ptr %v0, align 8, !dbg !145
  %159 = load i64, ptr %v3, align 8, !dbg !145
  %xor101 = xor i64 %159, %158, !dbg !145
  store i64 %xor101, ptr %v3, align 8, !dbg !145
  %160 = load i64, ptr %v1, align 8, !dbg !145
  %161 = load i64, ptr %v2, align 8, !dbg !145
  %add102 = add i64 %161, %160, !dbg !145
  store i64 %add102, ptr %v2, align 8, !dbg !145
  %162 = load i64, ptr %v1, align 8, !dbg !145
  %call103 = call i64 @rol64(i64 noundef %162, i32 noundef 17) #5, !dbg !145
  store i64 %call103, ptr %v1, align 8, !dbg !145
  %163 = load i64, ptr %v2, align 8, !dbg !145
  %164 = load i64, ptr %v1, align 8, !dbg !145
  %xor104 = xor i64 %164, %163, !dbg !145
  store i64 %xor104, ptr %v1, align 8, !dbg !145
  %165 = load i64, ptr %v2, align 8, !dbg !145
  %call105 = call i64 @rol64(i64 noundef %165, i32 noundef 32) #5, !dbg !145
  store i64 %call105, ptr %v2, align 8, !dbg !145
  %166 = load i64, ptr %v1, align 8, !dbg !145
  %167 = load i64, ptr %v0, align 8, !dbg !145
  %add106 = add i64 %167, %166, !dbg !145
  store i64 %add106, ptr %v0, align 8, !dbg !145
  %168 = load i64, ptr %v1, align 8, !dbg !145
  %call107 = call i64 @rol64(i64 noundef %168, i32 noundef 13) #5, !dbg !145
  store i64 %call107, ptr %v1, align 8, !dbg !145
  %169 = load i64, ptr %v0, align 8, !dbg !145
  %170 = load i64, ptr %v1, align 8, !dbg !145
  %xor108 = xor i64 %170, %169, !dbg !145
  store i64 %xor108, ptr %v1, align 8, !dbg !145
  %171 = load i64, ptr %v0, align 8, !dbg !145
  %call109 = call i64 @rol64(i64 noundef %171, i32 noundef 32) #5, !dbg !145
  store i64 %call109, ptr %v0, align 8, !dbg !145
  %172 = load i64, ptr %v3, align 8, !dbg !145
  %173 = load i64, ptr %v2, align 8, !dbg !145
  %add110 = add i64 %173, %172, !dbg !145
  store i64 %add110, ptr %v2, align 8, !dbg !145
  %174 = load i64, ptr %v3, align 8, !dbg !145
  %call111 = call i64 @rol64(i64 noundef %174, i32 noundef 16) #5, !dbg !145
  store i64 %call111, ptr %v3, align 8, !dbg !145
  %175 = load i64, ptr %v2, align 8, !dbg !145
  %176 = load i64, ptr %v3, align 8, !dbg !145
  %xor112 = xor i64 %176, %175, !dbg !145
  store i64 %xor112, ptr %v3, align 8, !dbg !145
  %177 = load i64, ptr %v3, align 8, !dbg !145
  %178 = load i64, ptr %v0, align 8, !dbg !145
  %add113 = add i64 %178, %177, !dbg !145
  store i64 %add113, ptr %v0, align 8, !dbg !145
  %179 = load i64, ptr %v3, align 8, !dbg !145
  %call114 = call i64 @rol64(i64 noundef %179, i32 noundef 21) #5, !dbg !145
  store i64 %call114, ptr %v3, align 8, !dbg !145
  %180 = load i64, ptr %v0, align 8, !dbg !145
  %181 = load i64, ptr %v3, align 8, !dbg !145
  %xor115 = xor i64 %181, %180, !dbg !145
  store i64 %xor115, ptr %v3, align 8, !dbg !145
  %182 = load i64, ptr %v1, align 8, !dbg !145
  %183 = load i64, ptr %v2, align 8, !dbg !145
  %add116 = add i64 %183, %182, !dbg !145
  store i64 %add116, ptr %v2, align 8, !dbg !145
  %184 = load i64, ptr %v1, align 8, !dbg !145
  %call117 = call i64 @rol64(i64 noundef %184, i32 noundef 17) #5, !dbg !145
  store i64 %call117, ptr %v1, align 8, !dbg !145
  %185 = load i64, ptr %v2, align 8, !dbg !145
  %186 = load i64, ptr %v1, align 8, !dbg !145
  %xor118 = xor i64 %186, %185, !dbg !145
  store i64 %xor118, ptr %v1, align 8, !dbg !145
  %187 = load i64, ptr %v2, align 8, !dbg !145
  %call119 = call i64 @rol64(i64 noundef %187, i32 noundef 32) #5, !dbg !145
  store i64 %call119, ptr %v2, align 8, !dbg !145
  %188 = load i64, ptr %v1, align 8, !dbg !145
  %189 = load i64, ptr %v0, align 8, !dbg !145
  %add120 = add i64 %189, %188, !dbg !145
  store i64 %add120, ptr %v0, align 8, !dbg !145
  %190 = load i64, ptr %v1, align 8, !dbg !145
  %call121 = call i64 @rol64(i64 noundef %190, i32 noundef 13) #5, !dbg !145
  store i64 %call121, ptr %v1, align 8, !dbg !145
  %191 = load i64, ptr %v0, align 8, !dbg !145
  %192 = load i64, ptr %v1, align 8, !dbg !145
  %xor122 = xor i64 %192, %191, !dbg !145
  store i64 %xor122, ptr %v1, align 8, !dbg !145
  %193 = load i64, ptr %v0, align 8, !dbg !145
  %call123 = call i64 @rol64(i64 noundef %193, i32 noundef 32) #5, !dbg !145
  store i64 %call123, ptr %v0, align 8, !dbg !145
  %194 = load i64, ptr %v3, align 8, !dbg !145
  %195 = load i64, ptr %v2, align 8, !dbg !145
  %add124 = add i64 %195, %194, !dbg !145
  store i64 %add124, ptr %v2, align 8, !dbg !145
  %196 = load i64, ptr %v3, align 8, !dbg !145
  %call125 = call i64 @rol64(i64 noundef %196, i32 noundef 16) #5, !dbg !145
  store i64 %call125, ptr %v3, align 8, !dbg !145
  %197 = load i64, ptr %v2, align 8, !dbg !145
  %198 = load i64, ptr %v3, align 8, !dbg !145
  %xor126 = xor i64 %198, %197, !dbg !145
  store i64 %xor126, ptr %v3, align 8, !dbg !145
  %199 = load i64, ptr %v3, align 8, !dbg !145
  %200 = load i64, ptr %v0, align 8, !dbg !145
  %add127 = add i64 %200, %199, !dbg !145
  store i64 %add127, ptr %v0, align 8, !dbg !145
  %201 = load i64, ptr %v3, align 8, !dbg !145
  %call128 = call i64 @rol64(i64 noundef %201, i32 noundef 21) #5, !dbg !145
  store i64 %call128, ptr %v3, align 8, !dbg !145
  %202 = load i64, ptr %v0, align 8, !dbg !145
  %203 = load i64, ptr %v3, align 8, !dbg !145
  %xor129 = xor i64 %203, %202, !dbg !145
  store i64 %xor129, ptr %v3, align 8, !dbg !145
  %204 = load i64, ptr %v1, align 8, !dbg !145
  %205 = load i64, ptr %v2, align 8, !dbg !145
  %add130 = add i64 %205, %204, !dbg !145
  store i64 %add130, ptr %v2, align 8, !dbg !145
  %206 = load i64, ptr %v1, align 8, !dbg !145
  %call131 = call i64 @rol64(i64 noundef %206, i32 noundef 17) #5, !dbg !145
  store i64 %call131, ptr %v1, align 8, !dbg !145
  %207 = load i64, ptr %v2, align 8, !dbg !145
  %208 = load i64, ptr %v1, align 8, !dbg !145
  %xor132 = xor i64 %208, %207, !dbg !145
  store i64 %xor132, ptr %v1, align 8, !dbg !145
  %209 = load i64, ptr %v2, align 8, !dbg !145
  %call133 = call i64 @rol64(i64 noundef %209, i32 noundef 32) #5, !dbg !145
  store i64 %call133, ptr %v2, align 8, !dbg !145
  %210 = load i64, ptr %v0, align 8, !dbg !145
  %211 = load i64, ptr %v1, align 8, !dbg !145
  %xor134 = xor i64 %210, %211, !dbg !145
  %212 = load i64, ptr %v2, align 8, !dbg !145
  %213 = load i64, ptr %v3, align 8, !dbg !145
  %xor135 = xor i64 %212, %213, !dbg !145
  %xor136 = xor i64 %xor134, %xor135, !dbg !145
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 1, ptr %left) #4, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !146
  ret i64 %xor136, !dbg !145
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_unaligned_le64(ptr noundef %p) #3 align 16 !dbg !17 {
entry:
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !23, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #4, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !24, metadata !DIExpression()), !dbg !148
  %0 = load ptr, ptr %p.addr, align 8, !dbg !148
  store ptr %0, ptr %__pptr, align 8, !dbg !148
  %1 = load ptr, ptr %__pptr, align 8, !dbg !148
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !148
  %2 = load i64, ptr %x, align 1, !dbg !148
  store i64 %2, ptr %tmp, align 8, !dbg !148
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #4, !dbg !149
  %3 = load i64, ptr %tmp, align 8, !dbg !148
  ret i64 %3, !dbg !150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @rol64(i64 noundef %word, i32 noundef %shift) #3 align 16 !dbg !151 {
entry:
  %word.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !157, metadata !DIExpression()), !dbg !159
  store i32 %shift, ptr %shift.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %shift.addr, metadata !158, metadata !DIExpression()), !dbg !160
  %0 = load i64, ptr %word.addr, align 8, !dbg !161
  %1 = load i32, ptr %shift.addr, align 4, !dbg !162
  %and = and i32 %1, 63, !dbg !163
  %sh_prom = zext i32 %and to i64, !dbg !164
  %shl = shl i64 %0, %sh_prom, !dbg !164
  %2 = load i64, ptr %word.addr, align 8, !dbg !165
  %3 = load i32, ptr %shift.addr, align 4, !dbg !166
  %sub = sub i32 0, %3, !dbg !167
  %and1 = and i32 %sub, 63, !dbg !168
  %sh_prom2 = zext i32 %and1 to i64, !dbg !169
  %shr = lshr i64 %2, %sh_prom2, !dbg !169
  %or = or i64 %shl, %shr, !dbg !170
  ret i64 %or, !dbg !171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @load_unaligned_zeropad(ptr noundef %addr) #3 align 16 !dbg !172 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !177, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !178, metadata !DIExpression()), !dbg !181
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !182
  %1 = call i64 asm sideeffect "1:\09mov $1, $0\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 20 \0A .popsection\0A", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0) #4, !dbg !183, !srcloc !184
  store i64 %1, ptr %ret, align 8, !dbg !183
  %2 = load i64, ptr %ret, align 8, !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4, !dbg !186
  ret i64 %2, !dbg !187
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @siphash_1u64(i64 noundef %first, ptr noundef %key) #0 align 16 !dbg !188 {
entry:
  %first.addr = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i64 %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !193, metadata !DIExpression()), !dbg !200
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !194, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !195, metadata !DIExpression()), !dbg !202
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !196, metadata !DIExpression()), !dbg !202
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !197, metadata !DIExpression()), !dbg !202
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !198, metadata !DIExpression()), !dbg !202
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %b, metadata !199, metadata !DIExpression()), !dbg !202
  store i64 576460752303423488, ptr %b, align 8, !dbg !202
  %0 = load ptr, ptr %key.addr, align 8, !dbg !202
  %key1 = getelementptr inbounds %struct.siphash_key_t, ptr %0, i32 0, i32 0, !dbg !202
  %arrayidx = getelementptr [2 x i64], ptr %key1, i64 0, i64 1, !dbg !202
  %1 = load i64, ptr %arrayidx, align 8, !dbg !202
  %2 = load i64, ptr %v3, align 8, !dbg !202
  %xor = xor i64 %2, %1, !dbg !202
  store i64 %xor, ptr %v3, align 8, !dbg !202
  %3 = load ptr, ptr %key.addr, align 8, !dbg !202
  %key2 = getelementptr inbounds %struct.siphash_key_t, ptr %3, i32 0, i32 0, !dbg !202
  %arrayidx3 = getelementptr [2 x i64], ptr %key2, i64 0, i64 0, !dbg !202
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !202
  %5 = load i64, ptr %v2, align 8, !dbg !202
  %xor4 = xor i64 %5, %4, !dbg !202
  store i64 %xor4, ptr %v2, align 8, !dbg !202
  %6 = load ptr, ptr %key.addr, align 8, !dbg !202
  %key5 = getelementptr inbounds %struct.siphash_key_t, ptr %6, i32 0, i32 0, !dbg !202
  %arrayidx6 = getelementptr [2 x i64], ptr %key5, i64 0, i64 1, !dbg !202
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !202
  %8 = load i64, ptr %v1, align 8, !dbg !202
  %xor7 = xor i64 %8, %7, !dbg !202
  store i64 %xor7, ptr %v1, align 8, !dbg !202
  %9 = load ptr, ptr %key.addr, align 8, !dbg !202
  %key8 = getelementptr inbounds %struct.siphash_key_t, ptr %9, i32 0, i32 0, !dbg !202
  %arrayidx9 = getelementptr [2 x i64], ptr %key8, i64 0, i64 0, !dbg !202
  %10 = load i64, ptr %arrayidx9, align 8, !dbg !202
  %11 = load i64, ptr %v0, align 8, !dbg !202
  %xor10 = xor i64 %11, %10, !dbg !202
  store i64 %xor10, ptr %v0, align 8, !dbg !202
  %12 = load i64, ptr %first.addr, align 8, !dbg !203
  %13 = load i64, ptr %v3, align 8, !dbg !204
  %xor11 = xor i64 %13, %12, !dbg !204
  store i64 %xor11, ptr %v3, align 8, !dbg !204
  %14 = load i64, ptr %v1, align 8, !dbg !205
  %15 = load i64, ptr %v0, align 8, !dbg !205
  %add = add i64 %15, %14, !dbg !205
  store i64 %add, ptr %v0, align 8, !dbg !205
  %16 = load i64, ptr %v1, align 8, !dbg !205
  %call = call i64 @rol64(i64 noundef %16, i32 noundef 13) #5, !dbg !205
  store i64 %call, ptr %v1, align 8, !dbg !205
  %17 = load i64, ptr %v0, align 8, !dbg !205
  %18 = load i64, ptr %v1, align 8, !dbg !205
  %xor12 = xor i64 %18, %17, !dbg !205
  store i64 %xor12, ptr %v1, align 8, !dbg !205
  %19 = load i64, ptr %v0, align 8, !dbg !205
  %call13 = call i64 @rol64(i64 noundef %19, i32 noundef 32) #5, !dbg !205
  store i64 %call13, ptr %v0, align 8, !dbg !205
  %20 = load i64, ptr %v3, align 8, !dbg !205
  %21 = load i64, ptr %v2, align 8, !dbg !205
  %add14 = add i64 %21, %20, !dbg !205
  store i64 %add14, ptr %v2, align 8, !dbg !205
  %22 = load i64, ptr %v3, align 8, !dbg !205
  %call15 = call i64 @rol64(i64 noundef %22, i32 noundef 16) #5, !dbg !205
  store i64 %call15, ptr %v3, align 8, !dbg !205
  %23 = load i64, ptr %v2, align 8, !dbg !205
  %24 = load i64, ptr %v3, align 8, !dbg !205
  %xor16 = xor i64 %24, %23, !dbg !205
  store i64 %xor16, ptr %v3, align 8, !dbg !205
  %25 = load i64, ptr %v3, align 8, !dbg !205
  %26 = load i64, ptr %v0, align 8, !dbg !205
  %add17 = add i64 %26, %25, !dbg !205
  store i64 %add17, ptr %v0, align 8, !dbg !205
  %27 = load i64, ptr %v3, align 8, !dbg !205
  %call18 = call i64 @rol64(i64 noundef %27, i32 noundef 21) #5, !dbg !205
  store i64 %call18, ptr %v3, align 8, !dbg !205
  %28 = load i64, ptr %v0, align 8, !dbg !205
  %29 = load i64, ptr %v3, align 8, !dbg !205
  %xor19 = xor i64 %29, %28, !dbg !205
  store i64 %xor19, ptr %v3, align 8, !dbg !205
  %30 = load i64, ptr %v1, align 8, !dbg !205
  %31 = load i64, ptr %v2, align 8, !dbg !205
  %add20 = add i64 %31, %30, !dbg !205
  store i64 %add20, ptr %v2, align 8, !dbg !205
  %32 = load i64, ptr %v1, align 8, !dbg !205
  %call21 = call i64 @rol64(i64 noundef %32, i32 noundef 17) #5, !dbg !205
  store i64 %call21, ptr %v1, align 8, !dbg !205
  %33 = load i64, ptr %v2, align 8, !dbg !205
  %34 = load i64, ptr %v1, align 8, !dbg !205
  %xor22 = xor i64 %34, %33, !dbg !205
  store i64 %xor22, ptr %v1, align 8, !dbg !205
  %35 = load i64, ptr %v2, align 8, !dbg !205
  %call23 = call i64 @rol64(i64 noundef %35, i32 noundef 32) #5, !dbg !205
  store i64 %call23, ptr %v2, align 8, !dbg !205
  %36 = load i64, ptr %v1, align 8, !dbg !206
  %37 = load i64, ptr %v0, align 8, !dbg !206
  %add24 = add i64 %37, %36, !dbg !206
  store i64 %add24, ptr %v0, align 8, !dbg !206
  %38 = load i64, ptr %v1, align 8, !dbg !206
  %call25 = call i64 @rol64(i64 noundef %38, i32 noundef 13) #5, !dbg !206
  store i64 %call25, ptr %v1, align 8, !dbg !206
  %39 = load i64, ptr %v0, align 8, !dbg !206
  %40 = load i64, ptr %v1, align 8, !dbg !206
  %xor26 = xor i64 %40, %39, !dbg !206
  store i64 %xor26, ptr %v1, align 8, !dbg !206
  %41 = load i64, ptr %v0, align 8, !dbg !206
  %call27 = call i64 @rol64(i64 noundef %41, i32 noundef 32) #5, !dbg !206
  store i64 %call27, ptr %v0, align 8, !dbg !206
  %42 = load i64, ptr %v3, align 8, !dbg !206
  %43 = load i64, ptr %v2, align 8, !dbg !206
  %add28 = add i64 %43, %42, !dbg !206
  store i64 %add28, ptr %v2, align 8, !dbg !206
  %44 = load i64, ptr %v3, align 8, !dbg !206
  %call29 = call i64 @rol64(i64 noundef %44, i32 noundef 16) #5, !dbg !206
  store i64 %call29, ptr %v3, align 8, !dbg !206
  %45 = load i64, ptr %v2, align 8, !dbg !206
  %46 = load i64, ptr %v3, align 8, !dbg !206
  %xor30 = xor i64 %46, %45, !dbg !206
  store i64 %xor30, ptr %v3, align 8, !dbg !206
  %47 = load i64, ptr %v3, align 8, !dbg !206
  %48 = load i64, ptr %v0, align 8, !dbg !206
  %add31 = add i64 %48, %47, !dbg !206
  store i64 %add31, ptr %v0, align 8, !dbg !206
  %49 = load i64, ptr %v3, align 8, !dbg !206
  %call32 = call i64 @rol64(i64 noundef %49, i32 noundef 21) #5, !dbg !206
  store i64 %call32, ptr %v3, align 8, !dbg !206
  %50 = load i64, ptr %v0, align 8, !dbg !206
  %51 = load i64, ptr %v3, align 8, !dbg !206
  %xor33 = xor i64 %51, %50, !dbg !206
  store i64 %xor33, ptr %v3, align 8, !dbg !206
  %52 = load i64, ptr %v1, align 8, !dbg !206
  %53 = load i64, ptr %v2, align 8, !dbg !206
  %add34 = add i64 %53, %52, !dbg !206
  store i64 %add34, ptr %v2, align 8, !dbg !206
  %54 = load i64, ptr %v1, align 8, !dbg !206
  %call35 = call i64 @rol64(i64 noundef %54, i32 noundef 17) #5, !dbg !206
  store i64 %call35, ptr %v1, align 8, !dbg !206
  %55 = load i64, ptr %v2, align 8, !dbg !206
  %56 = load i64, ptr %v1, align 8, !dbg !206
  %xor36 = xor i64 %56, %55, !dbg !206
  store i64 %xor36, ptr %v1, align 8, !dbg !206
  %57 = load i64, ptr %v2, align 8, !dbg !206
  %call37 = call i64 @rol64(i64 noundef %57, i32 noundef 32) #5, !dbg !206
  store i64 %call37, ptr %v2, align 8, !dbg !206
  %58 = load i64, ptr %first.addr, align 8, !dbg !207
  %59 = load i64, ptr %v0, align 8, !dbg !208
  %xor38 = xor i64 %59, %58, !dbg !208
  store i64 %xor38, ptr %v0, align 8, !dbg !208
  %60 = load i64, ptr %b, align 8, !dbg !209
  %61 = load i64, ptr %v3, align 8, !dbg !209
  %xor39 = xor i64 %61, %60, !dbg !209
  store i64 %xor39, ptr %v3, align 8, !dbg !209
  %62 = load i64, ptr %v1, align 8, !dbg !209
  %63 = load i64, ptr %v0, align 8, !dbg !209
  %add40 = add i64 %63, %62, !dbg !209
  store i64 %add40, ptr %v0, align 8, !dbg !209
  %64 = load i64, ptr %v1, align 8, !dbg !209
  %call41 = call i64 @rol64(i64 noundef %64, i32 noundef 13) #5, !dbg !209
  store i64 %call41, ptr %v1, align 8, !dbg !209
  %65 = load i64, ptr %v0, align 8, !dbg !209
  %66 = load i64, ptr %v1, align 8, !dbg !209
  %xor42 = xor i64 %66, %65, !dbg !209
  store i64 %xor42, ptr %v1, align 8, !dbg !209
  %67 = load i64, ptr %v0, align 8, !dbg !209
  %call43 = call i64 @rol64(i64 noundef %67, i32 noundef 32) #5, !dbg !209
  store i64 %call43, ptr %v0, align 8, !dbg !209
  %68 = load i64, ptr %v3, align 8, !dbg !209
  %69 = load i64, ptr %v2, align 8, !dbg !209
  %add44 = add i64 %69, %68, !dbg !209
  store i64 %add44, ptr %v2, align 8, !dbg !209
  %70 = load i64, ptr %v3, align 8, !dbg !209
  %call45 = call i64 @rol64(i64 noundef %70, i32 noundef 16) #5, !dbg !209
  store i64 %call45, ptr %v3, align 8, !dbg !209
  %71 = load i64, ptr %v2, align 8, !dbg !209
  %72 = load i64, ptr %v3, align 8, !dbg !209
  %xor46 = xor i64 %72, %71, !dbg !209
  store i64 %xor46, ptr %v3, align 8, !dbg !209
  %73 = load i64, ptr %v3, align 8, !dbg !209
  %74 = load i64, ptr %v0, align 8, !dbg !209
  %add47 = add i64 %74, %73, !dbg !209
  store i64 %add47, ptr %v0, align 8, !dbg !209
  %75 = load i64, ptr %v3, align 8, !dbg !209
  %call48 = call i64 @rol64(i64 noundef %75, i32 noundef 21) #5, !dbg !209
  store i64 %call48, ptr %v3, align 8, !dbg !209
  %76 = load i64, ptr %v0, align 8, !dbg !209
  %77 = load i64, ptr %v3, align 8, !dbg !209
  %xor49 = xor i64 %77, %76, !dbg !209
  store i64 %xor49, ptr %v3, align 8, !dbg !209
  %78 = load i64, ptr %v1, align 8, !dbg !209
  %79 = load i64, ptr %v2, align 8, !dbg !209
  %add50 = add i64 %79, %78, !dbg !209
  store i64 %add50, ptr %v2, align 8, !dbg !209
  %80 = load i64, ptr %v1, align 8, !dbg !209
  %call51 = call i64 @rol64(i64 noundef %80, i32 noundef 17) #5, !dbg !209
  store i64 %call51, ptr %v1, align 8, !dbg !209
  %81 = load i64, ptr %v2, align 8, !dbg !209
  %82 = load i64, ptr %v1, align 8, !dbg !209
  %xor52 = xor i64 %82, %81, !dbg !209
  store i64 %xor52, ptr %v1, align 8, !dbg !209
  %83 = load i64, ptr %v2, align 8, !dbg !209
  %call53 = call i64 @rol64(i64 noundef %83, i32 noundef 32) #5, !dbg !209
  store i64 %call53, ptr %v2, align 8, !dbg !209
  %84 = load i64, ptr %v1, align 8, !dbg !209
  %85 = load i64, ptr %v0, align 8, !dbg !209
  %add54 = add i64 %85, %84, !dbg !209
  store i64 %add54, ptr %v0, align 8, !dbg !209
  %86 = load i64, ptr %v1, align 8, !dbg !209
  %call55 = call i64 @rol64(i64 noundef %86, i32 noundef 13) #5, !dbg !209
  store i64 %call55, ptr %v1, align 8, !dbg !209
  %87 = load i64, ptr %v0, align 8, !dbg !209
  %88 = load i64, ptr %v1, align 8, !dbg !209
  %xor56 = xor i64 %88, %87, !dbg !209
  store i64 %xor56, ptr %v1, align 8, !dbg !209
  %89 = load i64, ptr %v0, align 8, !dbg !209
  %call57 = call i64 @rol64(i64 noundef %89, i32 noundef 32) #5, !dbg !209
  store i64 %call57, ptr %v0, align 8, !dbg !209
  %90 = load i64, ptr %v3, align 8, !dbg !209
  %91 = load i64, ptr %v2, align 8, !dbg !209
  %add58 = add i64 %91, %90, !dbg !209
  store i64 %add58, ptr %v2, align 8, !dbg !209
  %92 = load i64, ptr %v3, align 8, !dbg !209
  %call59 = call i64 @rol64(i64 noundef %92, i32 noundef 16) #5, !dbg !209
  store i64 %call59, ptr %v3, align 8, !dbg !209
  %93 = load i64, ptr %v2, align 8, !dbg !209
  %94 = load i64, ptr %v3, align 8, !dbg !209
  %xor60 = xor i64 %94, %93, !dbg !209
  store i64 %xor60, ptr %v3, align 8, !dbg !209
  %95 = load i64, ptr %v3, align 8, !dbg !209
  %96 = load i64, ptr %v0, align 8, !dbg !209
  %add61 = add i64 %96, %95, !dbg !209
  store i64 %add61, ptr %v0, align 8, !dbg !209
  %97 = load i64, ptr %v3, align 8, !dbg !209
  %call62 = call i64 @rol64(i64 noundef %97, i32 noundef 21) #5, !dbg !209
  store i64 %call62, ptr %v3, align 8, !dbg !209
  %98 = load i64, ptr %v0, align 8, !dbg !209
  %99 = load i64, ptr %v3, align 8, !dbg !209
  %xor63 = xor i64 %99, %98, !dbg !209
  store i64 %xor63, ptr %v3, align 8, !dbg !209
  %100 = load i64, ptr %v1, align 8, !dbg !209
  %101 = load i64, ptr %v2, align 8, !dbg !209
  %add64 = add i64 %101, %100, !dbg !209
  store i64 %add64, ptr %v2, align 8, !dbg !209
  %102 = load i64, ptr %v1, align 8, !dbg !209
  %call65 = call i64 @rol64(i64 noundef %102, i32 noundef 17) #5, !dbg !209
  store i64 %call65, ptr %v1, align 8, !dbg !209
  %103 = load i64, ptr %v2, align 8, !dbg !209
  %104 = load i64, ptr %v1, align 8, !dbg !209
  %xor66 = xor i64 %104, %103, !dbg !209
  store i64 %xor66, ptr %v1, align 8, !dbg !209
  %105 = load i64, ptr %v2, align 8, !dbg !209
  %call67 = call i64 @rol64(i64 noundef %105, i32 noundef 32) #5, !dbg !209
  store i64 %call67, ptr %v2, align 8, !dbg !209
  %106 = load i64, ptr %b, align 8, !dbg !209
  %107 = load i64, ptr %v0, align 8, !dbg !209
  %xor68 = xor i64 %107, %106, !dbg !209
  store i64 %xor68, ptr %v0, align 8, !dbg !209
  %108 = load i64, ptr %v2, align 8, !dbg !209
  %xor69 = xor i64 %108, 255, !dbg !209
  store i64 %xor69, ptr %v2, align 8, !dbg !209
  %109 = load i64, ptr %v1, align 8, !dbg !209
  %110 = load i64, ptr %v0, align 8, !dbg !209
  %add70 = add i64 %110, %109, !dbg !209
  store i64 %add70, ptr %v0, align 8, !dbg !209
  %111 = load i64, ptr %v1, align 8, !dbg !209
  %call71 = call i64 @rol64(i64 noundef %111, i32 noundef 13) #5, !dbg !209
  store i64 %call71, ptr %v1, align 8, !dbg !209
  %112 = load i64, ptr %v0, align 8, !dbg !209
  %113 = load i64, ptr %v1, align 8, !dbg !209
  %xor72 = xor i64 %113, %112, !dbg !209
  store i64 %xor72, ptr %v1, align 8, !dbg !209
  %114 = load i64, ptr %v0, align 8, !dbg !209
  %call73 = call i64 @rol64(i64 noundef %114, i32 noundef 32) #5, !dbg !209
  store i64 %call73, ptr %v0, align 8, !dbg !209
  %115 = load i64, ptr %v3, align 8, !dbg !209
  %116 = load i64, ptr %v2, align 8, !dbg !209
  %add74 = add i64 %116, %115, !dbg !209
  store i64 %add74, ptr %v2, align 8, !dbg !209
  %117 = load i64, ptr %v3, align 8, !dbg !209
  %call75 = call i64 @rol64(i64 noundef %117, i32 noundef 16) #5, !dbg !209
  store i64 %call75, ptr %v3, align 8, !dbg !209
  %118 = load i64, ptr %v2, align 8, !dbg !209
  %119 = load i64, ptr %v3, align 8, !dbg !209
  %xor76 = xor i64 %119, %118, !dbg !209
  store i64 %xor76, ptr %v3, align 8, !dbg !209
  %120 = load i64, ptr %v3, align 8, !dbg !209
  %121 = load i64, ptr %v0, align 8, !dbg !209
  %add77 = add i64 %121, %120, !dbg !209
  store i64 %add77, ptr %v0, align 8, !dbg !209
  %122 = load i64, ptr %v3, align 8, !dbg !209
  %call78 = call i64 @rol64(i64 noundef %122, i32 noundef 21) #5, !dbg !209
  store i64 %call78, ptr %v3, align 8, !dbg !209
  %123 = load i64, ptr %v0, align 8, !dbg !209
  %124 = load i64, ptr %v3, align 8, !dbg !209
  %xor79 = xor i64 %124, %123, !dbg !209
  store i64 %xor79, ptr %v3, align 8, !dbg !209
  %125 = load i64, ptr %v1, align 8, !dbg !209
  %126 = load i64, ptr %v2, align 8, !dbg !209
  %add80 = add i64 %126, %125, !dbg !209
  store i64 %add80, ptr %v2, align 8, !dbg !209
  %127 = load i64, ptr %v1, align 8, !dbg !209
  %call81 = call i64 @rol64(i64 noundef %127, i32 noundef 17) #5, !dbg !209
  store i64 %call81, ptr %v1, align 8, !dbg !209
  %128 = load i64, ptr %v2, align 8, !dbg !209
  %129 = load i64, ptr %v1, align 8, !dbg !209
  %xor82 = xor i64 %129, %128, !dbg !209
  store i64 %xor82, ptr %v1, align 8, !dbg !209
  %130 = load i64, ptr %v2, align 8, !dbg !209
  %call83 = call i64 @rol64(i64 noundef %130, i32 noundef 32) #5, !dbg !209
  store i64 %call83, ptr %v2, align 8, !dbg !209
  %131 = load i64, ptr %v1, align 8, !dbg !209
  %132 = load i64, ptr %v0, align 8, !dbg !209
  %add84 = add i64 %132, %131, !dbg !209
  store i64 %add84, ptr %v0, align 8, !dbg !209
  %133 = load i64, ptr %v1, align 8, !dbg !209
  %call85 = call i64 @rol64(i64 noundef %133, i32 noundef 13) #5, !dbg !209
  store i64 %call85, ptr %v1, align 8, !dbg !209
  %134 = load i64, ptr %v0, align 8, !dbg !209
  %135 = load i64, ptr %v1, align 8, !dbg !209
  %xor86 = xor i64 %135, %134, !dbg !209
  store i64 %xor86, ptr %v1, align 8, !dbg !209
  %136 = load i64, ptr %v0, align 8, !dbg !209
  %call87 = call i64 @rol64(i64 noundef %136, i32 noundef 32) #5, !dbg !209
  store i64 %call87, ptr %v0, align 8, !dbg !209
  %137 = load i64, ptr %v3, align 8, !dbg !209
  %138 = load i64, ptr %v2, align 8, !dbg !209
  %add88 = add i64 %138, %137, !dbg !209
  store i64 %add88, ptr %v2, align 8, !dbg !209
  %139 = load i64, ptr %v3, align 8, !dbg !209
  %call89 = call i64 @rol64(i64 noundef %139, i32 noundef 16) #5, !dbg !209
  store i64 %call89, ptr %v3, align 8, !dbg !209
  %140 = load i64, ptr %v2, align 8, !dbg !209
  %141 = load i64, ptr %v3, align 8, !dbg !209
  %xor90 = xor i64 %141, %140, !dbg !209
  store i64 %xor90, ptr %v3, align 8, !dbg !209
  %142 = load i64, ptr %v3, align 8, !dbg !209
  %143 = load i64, ptr %v0, align 8, !dbg !209
  %add91 = add i64 %143, %142, !dbg !209
  store i64 %add91, ptr %v0, align 8, !dbg !209
  %144 = load i64, ptr %v3, align 8, !dbg !209
  %call92 = call i64 @rol64(i64 noundef %144, i32 noundef 21) #5, !dbg !209
  store i64 %call92, ptr %v3, align 8, !dbg !209
  %145 = load i64, ptr %v0, align 8, !dbg !209
  %146 = load i64, ptr %v3, align 8, !dbg !209
  %xor93 = xor i64 %146, %145, !dbg !209
  store i64 %xor93, ptr %v3, align 8, !dbg !209
  %147 = load i64, ptr %v1, align 8, !dbg !209
  %148 = load i64, ptr %v2, align 8, !dbg !209
  %add94 = add i64 %148, %147, !dbg !209
  store i64 %add94, ptr %v2, align 8, !dbg !209
  %149 = load i64, ptr %v1, align 8, !dbg !209
  %call95 = call i64 @rol64(i64 noundef %149, i32 noundef 17) #5, !dbg !209
  store i64 %call95, ptr %v1, align 8, !dbg !209
  %150 = load i64, ptr %v2, align 8, !dbg !209
  %151 = load i64, ptr %v1, align 8, !dbg !209
  %xor96 = xor i64 %151, %150, !dbg !209
  store i64 %xor96, ptr %v1, align 8, !dbg !209
  %152 = load i64, ptr %v2, align 8, !dbg !209
  %call97 = call i64 @rol64(i64 noundef %152, i32 noundef 32) #5, !dbg !209
  store i64 %call97, ptr %v2, align 8, !dbg !209
  %153 = load i64, ptr %v1, align 8, !dbg !209
  %154 = load i64, ptr %v0, align 8, !dbg !209
  %add98 = add i64 %154, %153, !dbg !209
  store i64 %add98, ptr %v0, align 8, !dbg !209
  %155 = load i64, ptr %v1, align 8, !dbg !209
  %call99 = call i64 @rol64(i64 noundef %155, i32 noundef 13) #5, !dbg !209
  store i64 %call99, ptr %v1, align 8, !dbg !209
  %156 = load i64, ptr %v0, align 8, !dbg !209
  %157 = load i64, ptr %v1, align 8, !dbg !209
  %xor100 = xor i64 %157, %156, !dbg !209
  store i64 %xor100, ptr %v1, align 8, !dbg !209
  %158 = load i64, ptr %v0, align 8, !dbg !209
  %call101 = call i64 @rol64(i64 noundef %158, i32 noundef 32) #5, !dbg !209
  store i64 %call101, ptr %v0, align 8, !dbg !209
  %159 = load i64, ptr %v3, align 8, !dbg !209
  %160 = load i64, ptr %v2, align 8, !dbg !209
  %add102 = add i64 %160, %159, !dbg !209
  store i64 %add102, ptr %v2, align 8, !dbg !209
  %161 = load i64, ptr %v3, align 8, !dbg !209
  %call103 = call i64 @rol64(i64 noundef %161, i32 noundef 16) #5, !dbg !209
  store i64 %call103, ptr %v3, align 8, !dbg !209
  %162 = load i64, ptr %v2, align 8, !dbg !209
  %163 = load i64, ptr %v3, align 8, !dbg !209
  %xor104 = xor i64 %163, %162, !dbg !209
  store i64 %xor104, ptr %v3, align 8, !dbg !209
  %164 = load i64, ptr %v3, align 8, !dbg !209
  %165 = load i64, ptr %v0, align 8, !dbg !209
  %add105 = add i64 %165, %164, !dbg !209
  store i64 %add105, ptr %v0, align 8, !dbg !209
  %166 = load i64, ptr %v3, align 8, !dbg !209
  %call106 = call i64 @rol64(i64 noundef %166, i32 noundef 21) #5, !dbg !209
  store i64 %call106, ptr %v3, align 8, !dbg !209
  %167 = load i64, ptr %v0, align 8, !dbg !209
  %168 = load i64, ptr %v3, align 8, !dbg !209
  %xor107 = xor i64 %168, %167, !dbg !209
  store i64 %xor107, ptr %v3, align 8, !dbg !209
  %169 = load i64, ptr %v1, align 8, !dbg !209
  %170 = load i64, ptr %v2, align 8, !dbg !209
  %add108 = add i64 %170, %169, !dbg !209
  store i64 %add108, ptr %v2, align 8, !dbg !209
  %171 = load i64, ptr %v1, align 8, !dbg !209
  %call109 = call i64 @rol64(i64 noundef %171, i32 noundef 17) #5, !dbg !209
  store i64 %call109, ptr %v1, align 8, !dbg !209
  %172 = load i64, ptr %v2, align 8, !dbg !209
  %173 = load i64, ptr %v1, align 8, !dbg !209
  %xor110 = xor i64 %173, %172, !dbg !209
  store i64 %xor110, ptr %v1, align 8, !dbg !209
  %174 = load i64, ptr %v2, align 8, !dbg !209
  %call111 = call i64 @rol64(i64 noundef %174, i32 noundef 32) #5, !dbg !209
  store i64 %call111, ptr %v2, align 8, !dbg !209
  %175 = load i64, ptr %v1, align 8, !dbg !209
  %176 = load i64, ptr %v0, align 8, !dbg !209
  %add112 = add i64 %176, %175, !dbg !209
  store i64 %add112, ptr %v0, align 8, !dbg !209
  %177 = load i64, ptr %v1, align 8, !dbg !209
  %call113 = call i64 @rol64(i64 noundef %177, i32 noundef 13) #5, !dbg !209
  store i64 %call113, ptr %v1, align 8, !dbg !209
  %178 = load i64, ptr %v0, align 8, !dbg !209
  %179 = load i64, ptr %v1, align 8, !dbg !209
  %xor114 = xor i64 %179, %178, !dbg !209
  store i64 %xor114, ptr %v1, align 8, !dbg !209
  %180 = load i64, ptr %v0, align 8, !dbg !209
  %call115 = call i64 @rol64(i64 noundef %180, i32 noundef 32) #5, !dbg !209
  store i64 %call115, ptr %v0, align 8, !dbg !209
  %181 = load i64, ptr %v3, align 8, !dbg !209
  %182 = load i64, ptr %v2, align 8, !dbg !209
  %add116 = add i64 %182, %181, !dbg !209
  store i64 %add116, ptr %v2, align 8, !dbg !209
  %183 = load i64, ptr %v3, align 8, !dbg !209
  %call117 = call i64 @rol64(i64 noundef %183, i32 noundef 16) #5, !dbg !209
  store i64 %call117, ptr %v3, align 8, !dbg !209
  %184 = load i64, ptr %v2, align 8, !dbg !209
  %185 = load i64, ptr %v3, align 8, !dbg !209
  %xor118 = xor i64 %185, %184, !dbg !209
  store i64 %xor118, ptr %v3, align 8, !dbg !209
  %186 = load i64, ptr %v3, align 8, !dbg !209
  %187 = load i64, ptr %v0, align 8, !dbg !209
  %add119 = add i64 %187, %186, !dbg !209
  store i64 %add119, ptr %v0, align 8, !dbg !209
  %188 = load i64, ptr %v3, align 8, !dbg !209
  %call120 = call i64 @rol64(i64 noundef %188, i32 noundef 21) #5, !dbg !209
  store i64 %call120, ptr %v3, align 8, !dbg !209
  %189 = load i64, ptr %v0, align 8, !dbg !209
  %190 = load i64, ptr %v3, align 8, !dbg !209
  %xor121 = xor i64 %190, %189, !dbg !209
  store i64 %xor121, ptr %v3, align 8, !dbg !209
  %191 = load i64, ptr %v1, align 8, !dbg !209
  %192 = load i64, ptr %v2, align 8, !dbg !209
  %add122 = add i64 %192, %191, !dbg !209
  store i64 %add122, ptr %v2, align 8, !dbg !209
  %193 = load i64, ptr %v1, align 8, !dbg !209
  %call123 = call i64 @rol64(i64 noundef %193, i32 noundef 17) #5, !dbg !209
  store i64 %call123, ptr %v1, align 8, !dbg !209
  %194 = load i64, ptr %v2, align 8, !dbg !209
  %195 = load i64, ptr %v1, align 8, !dbg !209
  %xor124 = xor i64 %195, %194, !dbg !209
  store i64 %xor124, ptr %v1, align 8, !dbg !209
  %196 = load i64, ptr %v2, align 8, !dbg !209
  %call125 = call i64 @rol64(i64 noundef %196, i32 noundef 32) #5, !dbg !209
  store i64 %call125, ptr %v2, align 8, !dbg !209
  %197 = load i64, ptr %v0, align 8, !dbg !209
  %198 = load i64, ptr %v1, align 8, !dbg !209
  %xor126 = xor i64 %197, %198, !dbg !209
  %199 = load i64, ptr %v2, align 8, !dbg !209
  %200 = load i64, ptr %v3, align 8, !dbg !209
  %xor127 = xor i64 %199, %200, !dbg !209
  %xor128 = xor i64 %xor126, %xor127, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !210
  ret i64 %xor128, !dbg !209
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @siphash_2u64(i64 noundef %first, i64 noundef %second, ptr noundef %key) #0 align 16 !dbg !211 {
entry:
  %first.addr = alloca i64, align 8
  %second.addr = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i64 %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !215, metadata !DIExpression()), !dbg !223
  store i64 %second, ptr %second.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !216, metadata !DIExpression()), !dbg !224
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !217, metadata !DIExpression()), !dbg !225
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !218, metadata !DIExpression()), !dbg !226
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !226
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !219, metadata !DIExpression()), !dbg !226
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !226
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !220, metadata !DIExpression()), !dbg !226
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !226
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !221, metadata !DIExpression()), !dbg !226
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !226
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %b, metadata !222, metadata !DIExpression()), !dbg !226
  store i64 1152921504606846976, ptr %b, align 8, !dbg !226
  %0 = load ptr, ptr %key.addr, align 8, !dbg !226
  %key1 = getelementptr inbounds %struct.siphash_key_t, ptr %0, i32 0, i32 0, !dbg !226
  %arrayidx = getelementptr [2 x i64], ptr %key1, i64 0, i64 1, !dbg !226
  %1 = load i64, ptr %arrayidx, align 8, !dbg !226
  %2 = load i64, ptr %v3, align 8, !dbg !226
  %xor = xor i64 %2, %1, !dbg !226
  store i64 %xor, ptr %v3, align 8, !dbg !226
  %3 = load ptr, ptr %key.addr, align 8, !dbg !226
  %key2 = getelementptr inbounds %struct.siphash_key_t, ptr %3, i32 0, i32 0, !dbg !226
  %arrayidx3 = getelementptr [2 x i64], ptr %key2, i64 0, i64 0, !dbg !226
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !226
  %5 = load i64, ptr %v2, align 8, !dbg !226
  %xor4 = xor i64 %5, %4, !dbg !226
  store i64 %xor4, ptr %v2, align 8, !dbg !226
  %6 = load ptr, ptr %key.addr, align 8, !dbg !226
  %key5 = getelementptr inbounds %struct.siphash_key_t, ptr %6, i32 0, i32 0, !dbg !226
  %arrayidx6 = getelementptr [2 x i64], ptr %key5, i64 0, i64 1, !dbg !226
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !226
  %8 = load i64, ptr %v1, align 8, !dbg !226
  %xor7 = xor i64 %8, %7, !dbg !226
  store i64 %xor7, ptr %v1, align 8, !dbg !226
  %9 = load ptr, ptr %key.addr, align 8, !dbg !226
  %key8 = getelementptr inbounds %struct.siphash_key_t, ptr %9, i32 0, i32 0, !dbg !226
  %arrayidx9 = getelementptr [2 x i64], ptr %key8, i64 0, i64 0, !dbg !226
  %10 = load i64, ptr %arrayidx9, align 8, !dbg !226
  %11 = load i64, ptr %v0, align 8, !dbg !226
  %xor10 = xor i64 %11, %10, !dbg !226
  store i64 %xor10, ptr %v0, align 8, !dbg !226
  %12 = load i64, ptr %first.addr, align 8, !dbg !227
  %13 = load i64, ptr %v3, align 8, !dbg !228
  %xor11 = xor i64 %13, %12, !dbg !228
  store i64 %xor11, ptr %v3, align 8, !dbg !228
  %14 = load i64, ptr %v1, align 8, !dbg !229
  %15 = load i64, ptr %v0, align 8, !dbg !229
  %add = add i64 %15, %14, !dbg !229
  store i64 %add, ptr %v0, align 8, !dbg !229
  %16 = load i64, ptr %v1, align 8, !dbg !229
  %call = call i64 @rol64(i64 noundef %16, i32 noundef 13) #5, !dbg !229
  store i64 %call, ptr %v1, align 8, !dbg !229
  %17 = load i64, ptr %v0, align 8, !dbg !229
  %18 = load i64, ptr %v1, align 8, !dbg !229
  %xor12 = xor i64 %18, %17, !dbg !229
  store i64 %xor12, ptr %v1, align 8, !dbg !229
  %19 = load i64, ptr %v0, align 8, !dbg !229
  %call13 = call i64 @rol64(i64 noundef %19, i32 noundef 32) #5, !dbg !229
  store i64 %call13, ptr %v0, align 8, !dbg !229
  %20 = load i64, ptr %v3, align 8, !dbg !229
  %21 = load i64, ptr %v2, align 8, !dbg !229
  %add14 = add i64 %21, %20, !dbg !229
  store i64 %add14, ptr %v2, align 8, !dbg !229
  %22 = load i64, ptr %v3, align 8, !dbg !229
  %call15 = call i64 @rol64(i64 noundef %22, i32 noundef 16) #5, !dbg !229
  store i64 %call15, ptr %v3, align 8, !dbg !229
  %23 = load i64, ptr %v2, align 8, !dbg !229
  %24 = load i64, ptr %v3, align 8, !dbg !229
  %xor16 = xor i64 %24, %23, !dbg !229
  store i64 %xor16, ptr %v3, align 8, !dbg !229
  %25 = load i64, ptr %v3, align 8, !dbg !229
  %26 = load i64, ptr %v0, align 8, !dbg !229
  %add17 = add i64 %26, %25, !dbg !229
  store i64 %add17, ptr %v0, align 8, !dbg !229
  %27 = load i64, ptr %v3, align 8, !dbg !229
  %call18 = call i64 @rol64(i64 noundef %27, i32 noundef 21) #5, !dbg !229
  store i64 %call18, ptr %v3, align 8, !dbg !229
  %28 = load i64, ptr %v0, align 8, !dbg !229
  %29 = load i64, ptr %v3, align 8, !dbg !229
  %xor19 = xor i64 %29, %28, !dbg !229
  store i64 %xor19, ptr %v3, align 8, !dbg !229
  %30 = load i64, ptr %v1, align 8, !dbg !229
  %31 = load i64, ptr %v2, align 8, !dbg !229
  %add20 = add i64 %31, %30, !dbg !229
  store i64 %add20, ptr %v2, align 8, !dbg !229
  %32 = load i64, ptr %v1, align 8, !dbg !229
  %call21 = call i64 @rol64(i64 noundef %32, i32 noundef 17) #5, !dbg !229
  store i64 %call21, ptr %v1, align 8, !dbg !229
  %33 = load i64, ptr %v2, align 8, !dbg !229
  %34 = load i64, ptr %v1, align 8, !dbg !229
  %xor22 = xor i64 %34, %33, !dbg !229
  store i64 %xor22, ptr %v1, align 8, !dbg !229
  %35 = load i64, ptr %v2, align 8, !dbg !229
  %call23 = call i64 @rol64(i64 noundef %35, i32 noundef 32) #5, !dbg !229
  store i64 %call23, ptr %v2, align 8, !dbg !229
  %36 = load i64, ptr %v1, align 8, !dbg !230
  %37 = load i64, ptr %v0, align 8, !dbg !230
  %add24 = add i64 %37, %36, !dbg !230
  store i64 %add24, ptr %v0, align 8, !dbg !230
  %38 = load i64, ptr %v1, align 8, !dbg !230
  %call25 = call i64 @rol64(i64 noundef %38, i32 noundef 13) #5, !dbg !230
  store i64 %call25, ptr %v1, align 8, !dbg !230
  %39 = load i64, ptr %v0, align 8, !dbg !230
  %40 = load i64, ptr %v1, align 8, !dbg !230
  %xor26 = xor i64 %40, %39, !dbg !230
  store i64 %xor26, ptr %v1, align 8, !dbg !230
  %41 = load i64, ptr %v0, align 8, !dbg !230
  %call27 = call i64 @rol64(i64 noundef %41, i32 noundef 32) #5, !dbg !230
  store i64 %call27, ptr %v0, align 8, !dbg !230
  %42 = load i64, ptr %v3, align 8, !dbg !230
  %43 = load i64, ptr %v2, align 8, !dbg !230
  %add28 = add i64 %43, %42, !dbg !230
  store i64 %add28, ptr %v2, align 8, !dbg !230
  %44 = load i64, ptr %v3, align 8, !dbg !230
  %call29 = call i64 @rol64(i64 noundef %44, i32 noundef 16) #5, !dbg !230
  store i64 %call29, ptr %v3, align 8, !dbg !230
  %45 = load i64, ptr %v2, align 8, !dbg !230
  %46 = load i64, ptr %v3, align 8, !dbg !230
  %xor30 = xor i64 %46, %45, !dbg !230
  store i64 %xor30, ptr %v3, align 8, !dbg !230
  %47 = load i64, ptr %v3, align 8, !dbg !230
  %48 = load i64, ptr %v0, align 8, !dbg !230
  %add31 = add i64 %48, %47, !dbg !230
  store i64 %add31, ptr %v0, align 8, !dbg !230
  %49 = load i64, ptr %v3, align 8, !dbg !230
  %call32 = call i64 @rol64(i64 noundef %49, i32 noundef 21) #5, !dbg !230
  store i64 %call32, ptr %v3, align 8, !dbg !230
  %50 = load i64, ptr %v0, align 8, !dbg !230
  %51 = load i64, ptr %v3, align 8, !dbg !230
  %xor33 = xor i64 %51, %50, !dbg !230
  store i64 %xor33, ptr %v3, align 8, !dbg !230
  %52 = load i64, ptr %v1, align 8, !dbg !230
  %53 = load i64, ptr %v2, align 8, !dbg !230
  %add34 = add i64 %53, %52, !dbg !230
  store i64 %add34, ptr %v2, align 8, !dbg !230
  %54 = load i64, ptr %v1, align 8, !dbg !230
  %call35 = call i64 @rol64(i64 noundef %54, i32 noundef 17) #5, !dbg !230
  store i64 %call35, ptr %v1, align 8, !dbg !230
  %55 = load i64, ptr %v2, align 8, !dbg !230
  %56 = load i64, ptr %v1, align 8, !dbg !230
  %xor36 = xor i64 %56, %55, !dbg !230
  store i64 %xor36, ptr %v1, align 8, !dbg !230
  %57 = load i64, ptr %v2, align 8, !dbg !230
  %call37 = call i64 @rol64(i64 noundef %57, i32 noundef 32) #5, !dbg !230
  store i64 %call37, ptr %v2, align 8, !dbg !230
  %58 = load i64, ptr %first.addr, align 8, !dbg !231
  %59 = load i64, ptr %v0, align 8, !dbg !232
  %xor38 = xor i64 %59, %58, !dbg !232
  store i64 %xor38, ptr %v0, align 8, !dbg !232
  %60 = load i64, ptr %second.addr, align 8, !dbg !233
  %61 = load i64, ptr %v3, align 8, !dbg !234
  %xor39 = xor i64 %61, %60, !dbg !234
  store i64 %xor39, ptr %v3, align 8, !dbg !234
  %62 = load i64, ptr %v1, align 8, !dbg !235
  %63 = load i64, ptr %v0, align 8, !dbg !235
  %add40 = add i64 %63, %62, !dbg !235
  store i64 %add40, ptr %v0, align 8, !dbg !235
  %64 = load i64, ptr %v1, align 8, !dbg !235
  %call41 = call i64 @rol64(i64 noundef %64, i32 noundef 13) #5, !dbg !235
  store i64 %call41, ptr %v1, align 8, !dbg !235
  %65 = load i64, ptr %v0, align 8, !dbg !235
  %66 = load i64, ptr %v1, align 8, !dbg !235
  %xor42 = xor i64 %66, %65, !dbg !235
  store i64 %xor42, ptr %v1, align 8, !dbg !235
  %67 = load i64, ptr %v0, align 8, !dbg !235
  %call43 = call i64 @rol64(i64 noundef %67, i32 noundef 32) #5, !dbg !235
  store i64 %call43, ptr %v0, align 8, !dbg !235
  %68 = load i64, ptr %v3, align 8, !dbg !235
  %69 = load i64, ptr %v2, align 8, !dbg !235
  %add44 = add i64 %69, %68, !dbg !235
  store i64 %add44, ptr %v2, align 8, !dbg !235
  %70 = load i64, ptr %v3, align 8, !dbg !235
  %call45 = call i64 @rol64(i64 noundef %70, i32 noundef 16) #5, !dbg !235
  store i64 %call45, ptr %v3, align 8, !dbg !235
  %71 = load i64, ptr %v2, align 8, !dbg !235
  %72 = load i64, ptr %v3, align 8, !dbg !235
  %xor46 = xor i64 %72, %71, !dbg !235
  store i64 %xor46, ptr %v3, align 8, !dbg !235
  %73 = load i64, ptr %v3, align 8, !dbg !235
  %74 = load i64, ptr %v0, align 8, !dbg !235
  %add47 = add i64 %74, %73, !dbg !235
  store i64 %add47, ptr %v0, align 8, !dbg !235
  %75 = load i64, ptr %v3, align 8, !dbg !235
  %call48 = call i64 @rol64(i64 noundef %75, i32 noundef 21) #5, !dbg !235
  store i64 %call48, ptr %v3, align 8, !dbg !235
  %76 = load i64, ptr %v0, align 8, !dbg !235
  %77 = load i64, ptr %v3, align 8, !dbg !235
  %xor49 = xor i64 %77, %76, !dbg !235
  store i64 %xor49, ptr %v3, align 8, !dbg !235
  %78 = load i64, ptr %v1, align 8, !dbg !235
  %79 = load i64, ptr %v2, align 8, !dbg !235
  %add50 = add i64 %79, %78, !dbg !235
  store i64 %add50, ptr %v2, align 8, !dbg !235
  %80 = load i64, ptr %v1, align 8, !dbg !235
  %call51 = call i64 @rol64(i64 noundef %80, i32 noundef 17) #5, !dbg !235
  store i64 %call51, ptr %v1, align 8, !dbg !235
  %81 = load i64, ptr %v2, align 8, !dbg !235
  %82 = load i64, ptr %v1, align 8, !dbg !235
  %xor52 = xor i64 %82, %81, !dbg !235
  store i64 %xor52, ptr %v1, align 8, !dbg !235
  %83 = load i64, ptr %v2, align 8, !dbg !235
  %call53 = call i64 @rol64(i64 noundef %83, i32 noundef 32) #5, !dbg !235
  store i64 %call53, ptr %v2, align 8, !dbg !235
  %84 = load i64, ptr %v1, align 8, !dbg !236
  %85 = load i64, ptr %v0, align 8, !dbg !236
  %add54 = add i64 %85, %84, !dbg !236
  store i64 %add54, ptr %v0, align 8, !dbg !236
  %86 = load i64, ptr %v1, align 8, !dbg !236
  %call55 = call i64 @rol64(i64 noundef %86, i32 noundef 13) #5, !dbg !236
  store i64 %call55, ptr %v1, align 8, !dbg !236
  %87 = load i64, ptr %v0, align 8, !dbg !236
  %88 = load i64, ptr %v1, align 8, !dbg !236
  %xor56 = xor i64 %88, %87, !dbg !236
  store i64 %xor56, ptr %v1, align 8, !dbg !236
  %89 = load i64, ptr %v0, align 8, !dbg !236
  %call57 = call i64 @rol64(i64 noundef %89, i32 noundef 32) #5, !dbg !236
  store i64 %call57, ptr %v0, align 8, !dbg !236
  %90 = load i64, ptr %v3, align 8, !dbg !236
  %91 = load i64, ptr %v2, align 8, !dbg !236
  %add58 = add i64 %91, %90, !dbg !236
  store i64 %add58, ptr %v2, align 8, !dbg !236
  %92 = load i64, ptr %v3, align 8, !dbg !236
  %call59 = call i64 @rol64(i64 noundef %92, i32 noundef 16) #5, !dbg !236
  store i64 %call59, ptr %v3, align 8, !dbg !236
  %93 = load i64, ptr %v2, align 8, !dbg !236
  %94 = load i64, ptr %v3, align 8, !dbg !236
  %xor60 = xor i64 %94, %93, !dbg !236
  store i64 %xor60, ptr %v3, align 8, !dbg !236
  %95 = load i64, ptr %v3, align 8, !dbg !236
  %96 = load i64, ptr %v0, align 8, !dbg !236
  %add61 = add i64 %96, %95, !dbg !236
  store i64 %add61, ptr %v0, align 8, !dbg !236
  %97 = load i64, ptr %v3, align 8, !dbg !236
  %call62 = call i64 @rol64(i64 noundef %97, i32 noundef 21) #5, !dbg !236
  store i64 %call62, ptr %v3, align 8, !dbg !236
  %98 = load i64, ptr %v0, align 8, !dbg !236
  %99 = load i64, ptr %v3, align 8, !dbg !236
  %xor63 = xor i64 %99, %98, !dbg !236
  store i64 %xor63, ptr %v3, align 8, !dbg !236
  %100 = load i64, ptr %v1, align 8, !dbg !236
  %101 = load i64, ptr %v2, align 8, !dbg !236
  %add64 = add i64 %101, %100, !dbg !236
  store i64 %add64, ptr %v2, align 8, !dbg !236
  %102 = load i64, ptr %v1, align 8, !dbg !236
  %call65 = call i64 @rol64(i64 noundef %102, i32 noundef 17) #5, !dbg !236
  store i64 %call65, ptr %v1, align 8, !dbg !236
  %103 = load i64, ptr %v2, align 8, !dbg !236
  %104 = load i64, ptr %v1, align 8, !dbg !236
  %xor66 = xor i64 %104, %103, !dbg !236
  store i64 %xor66, ptr %v1, align 8, !dbg !236
  %105 = load i64, ptr %v2, align 8, !dbg !236
  %call67 = call i64 @rol64(i64 noundef %105, i32 noundef 32) #5, !dbg !236
  store i64 %call67, ptr %v2, align 8, !dbg !236
  %106 = load i64, ptr %second.addr, align 8, !dbg !237
  %107 = load i64, ptr %v0, align 8, !dbg !238
  %xor68 = xor i64 %107, %106, !dbg !238
  store i64 %xor68, ptr %v0, align 8, !dbg !238
  %108 = load i64, ptr %b, align 8, !dbg !239
  %109 = load i64, ptr %v3, align 8, !dbg !239
  %xor69 = xor i64 %109, %108, !dbg !239
  store i64 %xor69, ptr %v3, align 8, !dbg !239
  %110 = load i64, ptr %v1, align 8, !dbg !239
  %111 = load i64, ptr %v0, align 8, !dbg !239
  %add70 = add i64 %111, %110, !dbg !239
  store i64 %add70, ptr %v0, align 8, !dbg !239
  %112 = load i64, ptr %v1, align 8, !dbg !239
  %call71 = call i64 @rol64(i64 noundef %112, i32 noundef 13) #5, !dbg !239
  store i64 %call71, ptr %v1, align 8, !dbg !239
  %113 = load i64, ptr %v0, align 8, !dbg !239
  %114 = load i64, ptr %v1, align 8, !dbg !239
  %xor72 = xor i64 %114, %113, !dbg !239
  store i64 %xor72, ptr %v1, align 8, !dbg !239
  %115 = load i64, ptr %v0, align 8, !dbg !239
  %call73 = call i64 @rol64(i64 noundef %115, i32 noundef 32) #5, !dbg !239
  store i64 %call73, ptr %v0, align 8, !dbg !239
  %116 = load i64, ptr %v3, align 8, !dbg !239
  %117 = load i64, ptr %v2, align 8, !dbg !239
  %add74 = add i64 %117, %116, !dbg !239
  store i64 %add74, ptr %v2, align 8, !dbg !239
  %118 = load i64, ptr %v3, align 8, !dbg !239
  %call75 = call i64 @rol64(i64 noundef %118, i32 noundef 16) #5, !dbg !239
  store i64 %call75, ptr %v3, align 8, !dbg !239
  %119 = load i64, ptr %v2, align 8, !dbg !239
  %120 = load i64, ptr %v3, align 8, !dbg !239
  %xor76 = xor i64 %120, %119, !dbg !239
  store i64 %xor76, ptr %v3, align 8, !dbg !239
  %121 = load i64, ptr %v3, align 8, !dbg !239
  %122 = load i64, ptr %v0, align 8, !dbg !239
  %add77 = add i64 %122, %121, !dbg !239
  store i64 %add77, ptr %v0, align 8, !dbg !239
  %123 = load i64, ptr %v3, align 8, !dbg !239
  %call78 = call i64 @rol64(i64 noundef %123, i32 noundef 21) #5, !dbg !239
  store i64 %call78, ptr %v3, align 8, !dbg !239
  %124 = load i64, ptr %v0, align 8, !dbg !239
  %125 = load i64, ptr %v3, align 8, !dbg !239
  %xor79 = xor i64 %125, %124, !dbg !239
  store i64 %xor79, ptr %v3, align 8, !dbg !239
  %126 = load i64, ptr %v1, align 8, !dbg !239
  %127 = load i64, ptr %v2, align 8, !dbg !239
  %add80 = add i64 %127, %126, !dbg !239
  store i64 %add80, ptr %v2, align 8, !dbg !239
  %128 = load i64, ptr %v1, align 8, !dbg !239
  %call81 = call i64 @rol64(i64 noundef %128, i32 noundef 17) #5, !dbg !239
  store i64 %call81, ptr %v1, align 8, !dbg !239
  %129 = load i64, ptr %v2, align 8, !dbg !239
  %130 = load i64, ptr %v1, align 8, !dbg !239
  %xor82 = xor i64 %130, %129, !dbg !239
  store i64 %xor82, ptr %v1, align 8, !dbg !239
  %131 = load i64, ptr %v2, align 8, !dbg !239
  %call83 = call i64 @rol64(i64 noundef %131, i32 noundef 32) #5, !dbg !239
  store i64 %call83, ptr %v2, align 8, !dbg !239
  %132 = load i64, ptr %v1, align 8, !dbg !239
  %133 = load i64, ptr %v0, align 8, !dbg !239
  %add84 = add i64 %133, %132, !dbg !239
  store i64 %add84, ptr %v0, align 8, !dbg !239
  %134 = load i64, ptr %v1, align 8, !dbg !239
  %call85 = call i64 @rol64(i64 noundef %134, i32 noundef 13) #5, !dbg !239
  store i64 %call85, ptr %v1, align 8, !dbg !239
  %135 = load i64, ptr %v0, align 8, !dbg !239
  %136 = load i64, ptr %v1, align 8, !dbg !239
  %xor86 = xor i64 %136, %135, !dbg !239
  store i64 %xor86, ptr %v1, align 8, !dbg !239
  %137 = load i64, ptr %v0, align 8, !dbg !239
  %call87 = call i64 @rol64(i64 noundef %137, i32 noundef 32) #5, !dbg !239
  store i64 %call87, ptr %v0, align 8, !dbg !239
  %138 = load i64, ptr %v3, align 8, !dbg !239
  %139 = load i64, ptr %v2, align 8, !dbg !239
  %add88 = add i64 %139, %138, !dbg !239
  store i64 %add88, ptr %v2, align 8, !dbg !239
  %140 = load i64, ptr %v3, align 8, !dbg !239
  %call89 = call i64 @rol64(i64 noundef %140, i32 noundef 16) #5, !dbg !239
  store i64 %call89, ptr %v3, align 8, !dbg !239
  %141 = load i64, ptr %v2, align 8, !dbg !239
  %142 = load i64, ptr %v3, align 8, !dbg !239
  %xor90 = xor i64 %142, %141, !dbg !239
  store i64 %xor90, ptr %v3, align 8, !dbg !239
  %143 = load i64, ptr %v3, align 8, !dbg !239
  %144 = load i64, ptr %v0, align 8, !dbg !239
  %add91 = add i64 %144, %143, !dbg !239
  store i64 %add91, ptr %v0, align 8, !dbg !239
  %145 = load i64, ptr %v3, align 8, !dbg !239
  %call92 = call i64 @rol64(i64 noundef %145, i32 noundef 21) #5, !dbg !239
  store i64 %call92, ptr %v3, align 8, !dbg !239
  %146 = load i64, ptr %v0, align 8, !dbg !239
  %147 = load i64, ptr %v3, align 8, !dbg !239
  %xor93 = xor i64 %147, %146, !dbg !239
  store i64 %xor93, ptr %v3, align 8, !dbg !239
  %148 = load i64, ptr %v1, align 8, !dbg !239
  %149 = load i64, ptr %v2, align 8, !dbg !239
  %add94 = add i64 %149, %148, !dbg !239
  store i64 %add94, ptr %v2, align 8, !dbg !239
  %150 = load i64, ptr %v1, align 8, !dbg !239
  %call95 = call i64 @rol64(i64 noundef %150, i32 noundef 17) #5, !dbg !239
  store i64 %call95, ptr %v1, align 8, !dbg !239
  %151 = load i64, ptr %v2, align 8, !dbg !239
  %152 = load i64, ptr %v1, align 8, !dbg !239
  %xor96 = xor i64 %152, %151, !dbg !239
  store i64 %xor96, ptr %v1, align 8, !dbg !239
  %153 = load i64, ptr %v2, align 8, !dbg !239
  %call97 = call i64 @rol64(i64 noundef %153, i32 noundef 32) #5, !dbg !239
  store i64 %call97, ptr %v2, align 8, !dbg !239
  %154 = load i64, ptr %b, align 8, !dbg !239
  %155 = load i64, ptr %v0, align 8, !dbg !239
  %xor98 = xor i64 %155, %154, !dbg !239
  store i64 %xor98, ptr %v0, align 8, !dbg !239
  %156 = load i64, ptr %v2, align 8, !dbg !239
  %xor99 = xor i64 %156, 255, !dbg !239
  store i64 %xor99, ptr %v2, align 8, !dbg !239
  %157 = load i64, ptr %v1, align 8, !dbg !239
  %158 = load i64, ptr %v0, align 8, !dbg !239
  %add100 = add i64 %158, %157, !dbg !239
  store i64 %add100, ptr %v0, align 8, !dbg !239
  %159 = load i64, ptr %v1, align 8, !dbg !239
  %call101 = call i64 @rol64(i64 noundef %159, i32 noundef 13) #5, !dbg !239
  store i64 %call101, ptr %v1, align 8, !dbg !239
  %160 = load i64, ptr %v0, align 8, !dbg !239
  %161 = load i64, ptr %v1, align 8, !dbg !239
  %xor102 = xor i64 %161, %160, !dbg !239
  store i64 %xor102, ptr %v1, align 8, !dbg !239
  %162 = load i64, ptr %v0, align 8, !dbg !239
  %call103 = call i64 @rol64(i64 noundef %162, i32 noundef 32) #5, !dbg !239
  store i64 %call103, ptr %v0, align 8, !dbg !239
  %163 = load i64, ptr %v3, align 8, !dbg !239
  %164 = load i64, ptr %v2, align 8, !dbg !239
  %add104 = add i64 %164, %163, !dbg !239
  store i64 %add104, ptr %v2, align 8, !dbg !239
  %165 = load i64, ptr %v3, align 8, !dbg !239
  %call105 = call i64 @rol64(i64 noundef %165, i32 noundef 16) #5, !dbg !239
  store i64 %call105, ptr %v3, align 8, !dbg !239
  %166 = load i64, ptr %v2, align 8, !dbg !239
  %167 = load i64, ptr %v3, align 8, !dbg !239
  %xor106 = xor i64 %167, %166, !dbg !239
  store i64 %xor106, ptr %v3, align 8, !dbg !239
  %168 = load i64, ptr %v3, align 8, !dbg !239
  %169 = load i64, ptr %v0, align 8, !dbg !239
  %add107 = add i64 %169, %168, !dbg !239
  store i64 %add107, ptr %v0, align 8, !dbg !239
  %170 = load i64, ptr %v3, align 8, !dbg !239
  %call108 = call i64 @rol64(i64 noundef %170, i32 noundef 21) #5, !dbg !239
  store i64 %call108, ptr %v3, align 8, !dbg !239
  %171 = load i64, ptr %v0, align 8, !dbg !239
  %172 = load i64, ptr %v3, align 8, !dbg !239
  %xor109 = xor i64 %172, %171, !dbg !239
  store i64 %xor109, ptr %v3, align 8, !dbg !239
  %173 = load i64, ptr %v1, align 8, !dbg !239
  %174 = load i64, ptr %v2, align 8, !dbg !239
  %add110 = add i64 %174, %173, !dbg !239
  store i64 %add110, ptr %v2, align 8, !dbg !239
  %175 = load i64, ptr %v1, align 8, !dbg !239
  %call111 = call i64 @rol64(i64 noundef %175, i32 noundef 17) #5, !dbg !239
  store i64 %call111, ptr %v1, align 8, !dbg !239
  %176 = load i64, ptr %v2, align 8, !dbg !239
  %177 = load i64, ptr %v1, align 8, !dbg !239
  %xor112 = xor i64 %177, %176, !dbg !239
  store i64 %xor112, ptr %v1, align 8, !dbg !239
  %178 = load i64, ptr %v2, align 8, !dbg !239
  %call113 = call i64 @rol64(i64 noundef %178, i32 noundef 32) #5, !dbg !239
  store i64 %call113, ptr %v2, align 8, !dbg !239
  %179 = load i64, ptr %v1, align 8, !dbg !239
  %180 = load i64, ptr %v0, align 8, !dbg !239
  %add114 = add i64 %180, %179, !dbg !239
  store i64 %add114, ptr %v0, align 8, !dbg !239
  %181 = load i64, ptr %v1, align 8, !dbg !239
  %call115 = call i64 @rol64(i64 noundef %181, i32 noundef 13) #5, !dbg !239
  store i64 %call115, ptr %v1, align 8, !dbg !239
  %182 = load i64, ptr %v0, align 8, !dbg !239
  %183 = load i64, ptr %v1, align 8, !dbg !239
  %xor116 = xor i64 %183, %182, !dbg !239
  store i64 %xor116, ptr %v1, align 8, !dbg !239
  %184 = load i64, ptr %v0, align 8, !dbg !239
  %call117 = call i64 @rol64(i64 noundef %184, i32 noundef 32) #5, !dbg !239
  store i64 %call117, ptr %v0, align 8, !dbg !239
  %185 = load i64, ptr %v3, align 8, !dbg !239
  %186 = load i64, ptr %v2, align 8, !dbg !239
  %add118 = add i64 %186, %185, !dbg !239
  store i64 %add118, ptr %v2, align 8, !dbg !239
  %187 = load i64, ptr %v3, align 8, !dbg !239
  %call119 = call i64 @rol64(i64 noundef %187, i32 noundef 16) #5, !dbg !239
  store i64 %call119, ptr %v3, align 8, !dbg !239
  %188 = load i64, ptr %v2, align 8, !dbg !239
  %189 = load i64, ptr %v3, align 8, !dbg !239
  %xor120 = xor i64 %189, %188, !dbg !239
  store i64 %xor120, ptr %v3, align 8, !dbg !239
  %190 = load i64, ptr %v3, align 8, !dbg !239
  %191 = load i64, ptr %v0, align 8, !dbg !239
  %add121 = add i64 %191, %190, !dbg !239
  store i64 %add121, ptr %v0, align 8, !dbg !239
  %192 = load i64, ptr %v3, align 8, !dbg !239
  %call122 = call i64 @rol64(i64 noundef %192, i32 noundef 21) #5, !dbg !239
  store i64 %call122, ptr %v3, align 8, !dbg !239
  %193 = load i64, ptr %v0, align 8, !dbg !239
  %194 = load i64, ptr %v3, align 8, !dbg !239
  %xor123 = xor i64 %194, %193, !dbg !239
  store i64 %xor123, ptr %v3, align 8, !dbg !239
  %195 = load i64, ptr %v1, align 8, !dbg !239
  %196 = load i64, ptr %v2, align 8, !dbg !239
  %add124 = add i64 %196, %195, !dbg !239
  store i64 %add124, ptr %v2, align 8, !dbg !239
  %197 = load i64, ptr %v1, align 8, !dbg !239
  %call125 = call i64 @rol64(i64 noundef %197, i32 noundef 17) #5, !dbg !239
  store i64 %call125, ptr %v1, align 8, !dbg !239
  %198 = load i64, ptr %v2, align 8, !dbg !239
  %199 = load i64, ptr %v1, align 8, !dbg !239
  %xor126 = xor i64 %199, %198, !dbg !239
  store i64 %xor126, ptr %v1, align 8, !dbg !239
  %200 = load i64, ptr %v2, align 8, !dbg !239
  %call127 = call i64 @rol64(i64 noundef %200, i32 noundef 32) #5, !dbg !239
  store i64 %call127, ptr %v2, align 8, !dbg !239
  %201 = load i64, ptr %v1, align 8, !dbg !239
  %202 = load i64, ptr %v0, align 8, !dbg !239
  %add128 = add i64 %202, %201, !dbg !239
  store i64 %add128, ptr %v0, align 8, !dbg !239
  %203 = load i64, ptr %v1, align 8, !dbg !239
  %call129 = call i64 @rol64(i64 noundef %203, i32 noundef 13) #5, !dbg !239
  store i64 %call129, ptr %v1, align 8, !dbg !239
  %204 = load i64, ptr %v0, align 8, !dbg !239
  %205 = load i64, ptr %v1, align 8, !dbg !239
  %xor130 = xor i64 %205, %204, !dbg !239
  store i64 %xor130, ptr %v1, align 8, !dbg !239
  %206 = load i64, ptr %v0, align 8, !dbg !239
  %call131 = call i64 @rol64(i64 noundef %206, i32 noundef 32) #5, !dbg !239
  store i64 %call131, ptr %v0, align 8, !dbg !239
  %207 = load i64, ptr %v3, align 8, !dbg !239
  %208 = load i64, ptr %v2, align 8, !dbg !239
  %add132 = add i64 %208, %207, !dbg !239
  store i64 %add132, ptr %v2, align 8, !dbg !239
  %209 = load i64, ptr %v3, align 8, !dbg !239
  %call133 = call i64 @rol64(i64 noundef %209, i32 noundef 16) #5, !dbg !239
  store i64 %call133, ptr %v3, align 8, !dbg !239
  %210 = load i64, ptr %v2, align 8, !dbg !239
  %211 = load i64, ptr %v3, align 8, !dbg !239
  %xor134 = xor i64 %211, %210, !dbg !239
  store i64 %xor134, ptr %v3, align 8, !dbg !239
  %212 = load i64, ptr %v3, align 8, !dbg !239
  %213 = load i64, ptr %v0, align 8, !dbg !239
  %add135 = add i64 %213, %212, !dbg !239
  store i64 %add135, ptr %v0, align 8, !dbg !239
  %214 = load i64, ptr %v3, align 8, !dbg !239
  %call136 = call i64 @rol64(i64 noundef %214, i32 noundef 21) #5, !dbg !239
  store i64 %call136, ptr %v3, align 8, !dbg !239
  %215 = load i64, ptr %v0, align 8, !dbg !239
  %216 = load i64, ptr %v3, align 8, !dbg !239
  %xor137 = xor i64 %216, %215, !dbg !239
  store i64 %xor137, ptr %v3, align 8, !dbg !239
  %217 = load i64, ptr %v1, align 8, !dbg !239
  %218 = load i64, ptr %v2, align 8, !dbg !239
  %add138 = add i64 %218, %217, !dbg !239
  store i64 %add138, ptr %v2, align 8, !dbg !239
  %219 = load i64, ptr %v1, align 8, !dbg !239
  %call139 = call i64 @rol64(i64 noundef %219, i32 noundef 17) #5, !dbg !239
  store i64 %call139, ptr %v1, align 8, !dbg !239
  %220 = load i64, ptr %v2, align 8, !dbg !239
  %221 = load i64, ptr %v1, align 8, !dbg !239
  %xor140 = xor i64 %221, %220, !dbg !239
  store i64 %xor140, ptr %v1, align 8, !dbg !239
  %222 = load i64, ptr %v2, align 8, !dbg !239
  %call141 = call i64 @rol64(i64 noundef %222, i32 noundef 32) #5, !dbg !239
  store i64 %call141, ptr %v2, align 8, !dbg !239
  %223 = load i64, ptr %v1, align 8, !dbg !239
  %224 = load i64, ptr %v0, align 8, !dbg !239
  %add142 = add i64 %224, %223, !dbg !239
  store i64 %add142, ptr %v0, align 8, !dbg !239
  %225 = load i64, ptr %v1, align 8, !dbg !239
  %call143 = call i64 @rol64(i64 noundef %225, i32 noundef 13) #5, !dbg !239
  store i64 %call143, ptr %v1, align 8, !dbg !239
  %226 = load i64, ptr %v0, align 8, !dbg !239
  %227 = load i64, ptr %v1, align 8, !dbg !239
  %xor144 = xor i64 %227, %226, !dbg !239
  store i64 %xor144, ptr %v1, align 8, !dbg !239
  %228 = load i64, ptr %v0, align 8, !dbg !239
  %call145 = call i64 @rol64(i64 noundef %228, i32 noundef 32) #5, !dbg !239
  store i64 %call145, ptr %v0, align 8, !dbg !239
  %229 = load i64, ptr %v3, align 8, !dbg !239
  %230 = load i64, ptr %v2, align 8, !dbg !239
  %add146 = add i64 %230, %229, !dbg !239
  store i64 %add146, ptr %v2, align 8, !dbg !239
  %231 = load i64, ptr %v3, align 8, !dbg !239
  %call147 = call i64 @rol64(i64 noundef %231, i32 noundef 16) #5, !dbg !239
  store i64 %call147, ptr %v3, align 8, !dbg !239
  %232 = load i64, ptr %v2, align 8, !dbg !239
  %233 = load i64, ptr %v3, align 8, !dbg !239
  %xor148 = xor i64 %233, %232, !dbg !239
  store i64 %xor148, ptr %v3, align 8, !dbg !239
  %234 = load i64, ptr %v3, align 8, !dbg !239
  %235 = load i64, ptr %v0, align 8, !dbg !239
  %add149 = add i64 %235, %234, !dbg !239
  store i64 %add149, ptr %v0, align 8, !dbg !239
  %236 = load i64, ptr %v3, align 8, !dbg !239
  %call150 = call i64 @rol64(i64 noundef %236, i32 noundef 21) #5, !dbg !239
  store i64 %call150, ptr %v3, align 8, !dbg !239
  %237 = load i64, ptr %v0, align 8, !dbg !239
  %238 = load i64, ptr %v3, align 8, !dbg !239
  %xor151 = xor i64 %238, %237, !dbg !239
  store i64 %xor151, ptr %v3, align 8, !dbg !239
  %239 = load i64, ptr %v1, align 8, !dbg !239
  %240 = load i64, ptr %v2, align 8, !dbg !239
  %add152 = add i64 %240, %239, !dbg !239
  store i64 %add152, ptr %v2, align 8, !dbg !239
  %241 = load i64, ptr %v1, align 8, !dbg !239
  %call153 = call i64 @rol64(i64 noundef %241, i32 noundef 17) #5, !dbg !239
  store i64 %call153, ptr %v1, align 8, !dbg !239
  %242 = load i64, ptr %v2, align 8, !dbg !239
  %243 = load i64, ptr %v1, align 8, !dbg !239
  %xor154 = xor i64 %243, %242, !dbg !239
  store i64 %xor154, ptr %v1, align 8, !dbg !239
  %244 = load i64, ptr %v2, align 8, !dbg !239
  %call155 = call i64 @rol64(i64 noundef %244, i32 noundef 32) #5, !dbg !239
  store i64 %call155, ptr %v2, align 8, !dbg !239
  %245 = load i64, ptr %v0, align 8, !dbg !239
  %246 = load i64, ptr %v1, align 8, !dbg !239
  %xor156 = xor i64 %245, %246, !dbg !239
  %247 = load i64, ptr %v2, align 8, !dbg !239
  %248 = load i64, ptr %v3, align 8, !dbg !239
  %xor157 = xor i64 %247, %248, !dbg !239
  %xor158 = xor i64 %xor156, %xor157, !dbg !239
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !240
  ret i64 %xor158, !dbg !239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @siphash_3u64(i64 noundef %first, i64 noundef %second, i64 noundef %third, ptr noundef %key) #0 align 16 !dbg !241 {
entry:
  %first.addr = alloca i64, align 8
  %second.addr = alloca i64, align 8
  %third.addr = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i64 %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !245, metadata !DIExpression()), !dbg !254
  store i64 %second, ptr %second.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !246, metadata !DIExpression()), !dbg !255
  store i64 %third, ptr %third.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !247, metadata !DIExpression()), !dbg !256
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !248, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !249, metadata !DIExpression()), !dbg !258
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !250, metadata !DIExpression()), !dbg !258
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !251, metadata !DIExpression()), !dbg !258
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !252, metadata !DIExpression()), !dbg !258
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %b, metadata !253, metadata !DIExpression()), !dbg !258
  store i64 1729382256910270464, ptr %b, align 8, !dbg !258
  %0 = load ptr, ptr %key.addr, align 8, !dbg !258
  %key1 = getelementptr inbounds %struct.siphash_key_t, ptr %0, i32 0, i32 0, !dbg !258
  %arrayidx = getelementptr [2 x i64], ptr %key1, i64 0, i64 1, !dbg !258
  %1 = load i64, ptr %arrayidx, align 8, !dbg !258
  %2 = load i64, ptr %v3, align 8, !dbg !258
  %xor = xor i64 %2, %1, !dbg !258
  store i64 %xor, ptr %v3, align 8, !dbg !258
  %3 = load ptr, ptr %key.addr, align 8, !dbg !258
  %key2 = getelementptr inbounds %struct.siphash_key_t, ptr %3, i32 0, i32 0, !dbg !258
  %arrayidx3 = getelementptr [2 x i64], ptr %key2, i64 0, i64 0, !dbg !258
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !258
  %5 = load i64, ptr %v2, align 8, !dbg !258
  %xor4 = xor i64 %5, %4, !dbg !258
  store i64 %xor4, ptr %v2, align 8, !dbg !258
  %6 = load ptr, ptr %key.addr, align 8, !dbg !258
  %key5 = getelementptr inbounds %struct.siphash_key_t, ptr %6, i32 0, i32 0, !dbg !258
  %arrayidx6 = getelementptr [2 x i64], ptr %key5, i64 0, i64 1, !dbg !258
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !258
  %8 = load i64, ptr %v1, align 8, !dbg !258
  %xor7 = xor i64 %8, %7, !dbg !258
  store i64 %xor7, ptr %v1, align 8, !dbg !258
  %9 = load ptr, ptr %key.addr, align 8, !dbg !258
  %key8 = getelementptr inbounds %struct.siphash_key_t, ptr %9, i32 0, i32 0, !dbg !258
  %arrayidx9 = getelementptr [2 x i64], ptr %key8, i64 0, i64 0, !dbg !258
  %10 = load i64, ptr %arrayidx9, align 8, !dbg !258
  %11 = load i64, ptr %v0, align 8, !dbg !258
  %xor10 = xor i64 %11, %10, !dbg !258
  store i64 %xor10, ptr %v0, align 8, !dbg !258
  %12 = load i64, ptr %first.addr, align 8, !dbg !259
  %13 = load i64, ptr %v3, align 8, !dbg !260
  %xor11 = xor i64 %13, %12, !dbg !260
  store i64 %xor11, ptr %v3, align 8, !dbg !260
  %14 = load i64, ptr %v1, align 8, !dbg !261
  %15 = load i64, ptr %v0, align 8, !dbg !261
  %add = add i64 %15, %14, !dbg !261
  store i64 %add, ptr %v0, align 8, !dbg !261
  %16 = load i64, ptr %v1, align 8, !dbg !261
  %call = call i64 @rol64(i64 noundef %16, i32 noundef 13) #5, !dbg !261
  store i64 %call, ptr %v1, align 8, !dbg !261
  %17 = load i64, ptr %v0, align 8, !dbg !261
  %18 = load i64, ptr %v1, align 8, !dbg !261
  %xor12 = xor i64 %18, %17, !dbg !261
  store i64 %xor12, ptr %v1, align 8, !dbg !261
  %19 = load i64, ptr %v0, align 8, !dbg !261
  %call13 = call i64 @rol64(i64 noundef %19, i32 noundef 32) #5, !dbg !261
  store i64 %call13, ptr %v0, align 8, !dbg !261
  %20 = load i64, ptr %v3, align 8, !dbg !261
  %21 = load i64, ptr %v2, align 8, !dbg !261
  %add14 = add i64 %21, %20, !dbg !261
  store i64 %add14, ptr %v2, align 8, !dbg !261
  %22 = load i64, ptr %v3, align 8, !dbg !261
  %call15 = call i64 @rol64(i64 noundef %22, i32 noundef 16) #5, !dbg !261
  store i64 %call15, ptr %v3, align 8, !dbg !261
  %23 = load i64, ptr %v2, align 8, !dbg !261
  %24 = load i64, ptr %v3, align 8, !dbg !261
  %xor16 = xor i64 %24, %23, !dbg !261
  store i64 %xor16, ptr %v3, align 8, !dbg !261
  %25 = load i64, ptr %v3, align 8, !dbg !261
  %26 = load i64, ptr %v0, align 8, !dbg !261
  %add17 = add i64 %26, %25, !dbg !261
  store i64 %add17, ptr %v0, align 8, !dbg !261
  %27 = load i64, ptr %v3, align 8, !dbg !261
  %call18 = call i64 @rol64(i64 noundef %27, i32 noundef 21) #5, !dbg !261
  store i64 %call18, ptr %v3, align 8, !dbg !261
  %28 = load i64, ptr %v0, align 8, !dbg !261
  %29 = load i64, ptr %v3, align 8, !dbg !261
  %xor19 = xor i64 %29, %28, !dbg !261
  store i64 %xor19, ptr %v3, align 8, !dbg !261
  %30 = load i64, ptr %v1, align 8, !dbg !261
  %31 = load i64, ptr %v2, align 8, !dbg !261
  %add20 = add i64 %31, %30, !dbg !261
  store i64 %add20, ptr %v2, align 8, !dbg !261
  %32 = load i64, ptr %v1, align 8, !dbg !261
  %call21 = call i64 @rol64(i64 noundef %32, i32 noundef 17) #5, !dbg !261
  store i64 %call21, ptr %v1, align 8, !dbg !261
  %33 = load i64, ptr %v2, align 8, !dbg !261
  %34 = load i64, ptr %v1, align 8, !dbg !261
  %xor22 = xor i64 %34, %33, !dbg !261
  store i64 %xor22, ptr %v1, align 8, !dbg !261
  %35 = load i64, ptr %v2, align 8, !dbg !261
  %call23 = call i64 @rol64(i64 noundef %35, i32 noundef 32) #5, !dbg !261
  store i64 %call23, ptr %v2, align 8, !dbg !261
  %36 = load i64, ptr %v1, align 8, !dbg !262
  %37 = load i64, ptr %v0, align 8, !dbg !262
  %add24 = add i64 %37, %36, !dbg !262
  store i64 %add24, ptr %v0, align 8, !dbg !262
  %38 = load i64, ptr %v1, align 8, !dbg !262
  %call25 = call i64 @rol64(i64 noundef %38, i32 noundef 13) #5, !dbg !262
  store i64 %call25, ptr %v1, align 8, !dbg !262
  %39 = load i64, ptr %v0, align 8, !dbg !262
  %40 = load i64, ptr %v1, align 8, !dbg !262
  %xor26 = xor i64 %40, %39, !dbg !262
  store i64 %xor26, ptr %v1, align 8, !dbg !262
  %41 = load i64, ptr %v0, align 8, !dbg !262
  %call27 = call i64 @rol64(i64 noundef %41, i32 noundef 32) #5, !dbg !262
  store i64 %call27, ptr %v0, align 8, !dbg !262
  %42 = load i64, ptr %v3, align 8, !dbg !262
  %43 = load i64, ptr %v2, align 8, !dbg !262
  %add28 = add i64 %43, %42, !dbg !262
  store i64 %add28, ptr %v2, align 8, !dbg !262
  %44 = load i64, ptr %v3, align 8, !dbg !262
  %call29 = call i64 @rol64(i64 noundef %44, i32 noundef 16) #5, !dbg !262
  store i64 %call29, ptr %v3, align 8, !dbg !262
  %45 = load i64, ptr %v2, align 8, !dbg !262
  %46 = load i64, ptr %v3, align 8, !dbg !262
  %xor30 = xor i64 %46, %45, !dbg !262
  store i64 %xor30, ptr %v3, align 8, !dbg !262
  %47 = load i64, ptr %v3, align 8, !dbg !262
  %48 = load i64, ptr %v0, align 8, !dbg !262
  %add31 = add i64 %48, %47, !dbg !262
  store i64 %add31, ptr %v0, align 8, !dbg !262
  %49 = load i64, ptr %v3, align 8, !dbg !262
  %call32 = call i64 @rol64(i64 noundef %49, i32 noundef 21) #5, !dbg !262
  store i64 %call32, ptr %v3, align 8, !dbg !262
  %50 = load i64, ptr %v0, align 8, !dbg !262
  %51 = load i64, ptr %v3, align 8, !dbg !262
  %xor33 = xor i64 %51, %50, !dbg !262
  store i64 %xor33, ptr %v3, align 8, !dbg !262
  %52 = load i64, ptr %v1, align 8, !dbg !262
  %53 = load i64, ptr %v2, align 8, !dbg !262
  %add34 = add i64 %53, %52, !dbg !262
  store i64 %add34, ptr %v2, align 8, !dbg !262
  %54 = load i64, ptr %v1, align 8, !dbg !262
  %call35 = call i64 @rol64(i64 noundef %54, i32 noundef 17) #5, !dbg !262
  store i64 %call35, ptr %v1, align 8, !dbg !262
  %55 = load i64, ptr %v2, align 8, !dbg !262
  %56 = load i64, ptr %v1, align 8, !dbg !262
  %xor36 = xor i64 %56, %55, !dbg !262
  store i64 %xor36, ptr %v1, align 8, !dbg !262
  %57 = load i64, ptr %v2, align 8, !dbg !262
  %call37 = call i64 @rol64(i64 noundef %57, i32 noundef 32) #5, !dbg !262
  store i64 %call37, ptr %v2, align 8, !dbg !262
  %58 = load i64, ptr %first.addr, align 8, !dbg !263
  %59 = load i64, ptr %v0, align 8, !dbg !264
  %xor38 = xor i64 %59, %58, !dbg !264
  store i64 %xor38, ptr %v0, align 8, !dbg !264
  %60 = load i64, ptr %second.addr, align 8, !dbg !265
  %61 = load i64, ptr %v3, align 8, !dbg !266
  %xor39 = xor i64 %61, %60, !dbg !266
  store i64 %xor39, ptr %v3, align 8, !dbg !266
  %62 = load i64, ptr %v1, align 8, !dbg !267
  %63 = load i64, ptr %v0, align 8, !dbg !267
  %add40 = add i64 %63, %62, !dbg !267
  store i64 %add40, ptr %v0, align 8, !dbg !267
  %64 = load i64, ptr %v1, align 8, !dbg !267
  %call41 = call i64 @rol64(i64 noundef %64, i32 noundef 13) #5, !dbg !267
  store i64 %call41, ptr %v1, align 8, !dbg !267
  %65 = load i64, ptr %v0, align 8, !dbg !267
  %66 = load i64, ptr %v1, align 8, !dbg !267
  %xor42 = xor i64 %66, %65, !dbg !267
  store i64 %xor42, ptr %v1, align 8, !dbg !267
  %67 = load i64, ptr %v0, align 8, !dbg !267
  %call43 = call i64 @rol64(i64 noundef %67, i32 noundef 32) #5, !dbg !267
  store i64 %call43, ptr %v0, align 8, !dbg !267
  %68 = load i64, ptr %v3, align 8, !dbg !267
  %69 = load i64, ptr %v2, align 8, !dbg !267
  %add44 = add i64 %69, %68, !dbg !267
  store i64 %add44, ptr %v2, align 8, !dbg !267
  %70 = load i64, ptr %v3, align 8, !dbg !267
  %call45 = call i64 @rol64(i64 noundef %70, i32 noundef 16) #5, !dbg !267
  store i64 %call45, ptr %v3, align 8, !dbg !267
  %71 = load i64, ptr %v2, align 8, !dbg !267
  %72 = load i64, ptr %v3, align 8, !dbg !267
  %xor46 = xor i64 %72, %71, !dbg !267
  store i64 %xor46, ptr %v3, align 8, !dbg !267
  %73 = load i64, ptr %v3, align 8, !dbg !267
  %74 = load i64, ptr %v0, align 8, !dbg !267
  %add47 = add i64 %74, %73, !dbg !267
  store i64 %add47, ptr %v0, align 8, !dbg !267
  %75 = load i64, ptr %v3, align 8, !dbg !267
  %call48 = call i64 @rol64(i64 noundef %75, i32 noundef 21) #5, !dbg !267
  store i64 %call48, ptr %v3, align 8, !dbg !267
  %76 = load i64, ptr %v0, align 8, !dbg !267
  %77 = load i64, ptr %v3, align 8, !dbg !267
  %xor49 = xor i64 %77, %76, !dbg !267
  store i64 %xor49, ptr %v3, align 8, !dbg !267
  %78 = load i64, ptr %v1, align 8, !dbg !267
  %79 = load i64, ptr %v2, align 8, !dbg !267
  %add50 = add i64 %79, %78, !dbg !267
  store i64 %add50, ptr %v2, align 8, !dbg !267
  %80 = load i64, ptr %v1, align 8, !dbg !267
  %call51 = call i64 @rol64(i64 noundef %80, i32 noundef 17) #5, !dbg !267
  store i64 %call51, ptr %v1, align 8, !dbg !267
  %81 = load i64, ptr %v2, align 8, !dbg !267
  %82 = load i64, ptr %v1, align 8, !dbg !267
  %xor52 = xor i64 %82, %81, !dbg !267
  store i64 %xor52, ptr %v1, align 8, !dbg !267
  %83 = load i64, ptr %v2, align 8, !dbg !267
  %call53 = call i64 @rol64(i64 noundef %83, i32 noundef 32) #5, !dbg !267
  store i64 %call53, ptr %v2, align 8, !dbg !267
  %84 = load i64, ptr %v1, align 8, !dbg !268
  %85 = load i64, ptr %v0, align 8, !dbg !268
  %add54 = add i64 %85, %84, !dbg !268
  store i64 %add54, ptr %v0, align 8, !dbg !268
  %86 = load i64, ptr %v1, align 8, !dbg !268
  %call55 = call i64 @rol64(i64 noundef %86, i32 noundef 13) #5, !dbg !268
  store i64 %call55, ptr %v1, align 8, !dbg !268
  %87 = load i64, ptr %v0, align 8, !dbg !268
  %88 = load i64, ptr %v1, align 8, !dbg !268
  %xor56 = xor i64 %88, %87, !dbg !268
  store i64 %xor56, ptr %v1, align 8, !dbg !268
  %89 = load i64, ptr %v0, align 8, !dbg !268
  %call57 = call i64 @rol64(i64 noundef %89, i32 noundef 32) #5, !dbg !268
  store i64 %call57, ptr %v0, align 8, !dbg !268
  %90 = load i64, ptr %v3, align 8, !dbg !268
  %91 = load i64, ptr %v2, align 8, !dbg !268
  %add58 = add i64 %91, %90, !dbg !268
  store i64 %add58, ptr %v2, align 8, !dbg !268
  %92 = load i64, ptr %v3, align 8, !dbg !268
  %call59 = call i64 @rol64(i64 noundef %92, i32 noundef 16) #5, !dbg !268
  store i64 %call59, ptr %v3, align 8, !dbg !268
  %93 = load i64, ptr %v2, align 8, !dbg !268
  %94 = load i64, ptr %v3, align 8, !dbg !268
  %xor60 = xor i64 %94, %93, !dbg !268
  store i64 %xor60, ptr %v3, align 8, !dbg !268
  %95 = load i64, ptr %v3, align 8, !dbg !268
  %96 = load i64, ptr %v0, align 8, !dbg !268
  %add61 = add i64 %96, %95, !dbg !268
  store i64 %add61, ptr %v0, align 8, !dbg !268
  %97 = load i64, ptr %v3, align 8, !dbg !268
  %call62 = call i64 @rol64(i64 noundef %97, i32 noundef 21) #5, !dbg !268
  store i64 %call62, ptr %v3, align 8, !dbg !268
  %98 = load i64, ptr %v0, align 8, !dbg !268
  %99 = load i64, ptr %v3, align 8, !dbg !268
  %xor63 = xor i64 %99, %98, !dbg !268
  store i64 %xor63, ptr %v3, align 8, !dbg !268
  %100 = load i64, ptr %v1, align 8, !dbg !268
  %101 = load i64, ptr %v2, align 8, !dbg !268
  %add64 = add i64 %101, %100, !dbg !268
  store i64 %add64, ptr %v2, align 8, !dbg !268
  %102 = load i64, ptr %v1, align 8, !dbg !268
  %call65 = call i64 @rol64(i64 noundef %102, i32 noundef 17) #5, !dbg !268
  store i64 %call65, ptr %v1, align 8, !dbg !268
  %103 = load i64, ptr %v2, align 8, !dbg !268
  %104 = load i64, ptr %v1, align 8, !dbg !268
  %xor66 = xor i64 %104, %103, !dbg !268
  store i64 %xor66, ptr %v1, align 8, !dbg !268
  %105 = load i64, ptr %v2, align 8, !dbg !268
  %call67 = call i64 @rol64(i64 noundef %105, i32 noundef 32) #5, !dbg !268
  store i64 %call67, ptr %v2, align 8, !dbg !268
  %106 = load i64, ptr %second.addr, align 8, !dbg !269
  %107 = load i64, ptr %v0, align 8, !dbg !270
  %xor68 = xor i64 %107, %106, !dbg !270
  store i64 %xor68, ptr %v0, align 8, !dbg !270
  %108 = load i64, ptr %third.addr, align 8, !dbg !271
  %109 = load i64, ptr %v3, align 8, !dbg !272
  %xor69 = xor i64 %109, %108, !dbg !272
  store i64 %xor69, ptr %v3, align 8, !dbg !272
  %110 = load i64, ptr %v1, align 8, !dbg !273
  %111 = load i64, ptr %v0, align 8, !dbg !273
  %add70 = add i64 %111, %110, !dbg !273
  store i64 %add70, ptr %v0, align 8, !dbg !273
  %112 = load i64, ptr %v1, align 8, !dbg !273
  %call71 = call i64 @rol64(i64 noundef %112, i32 noundef 13) #5, !dbg !273
  store i64 %call71, ptr %v1, align 8, !dbg !273
  %113 = load i64, ptr %v0, align 8, !dbg !273
  %114 = load i64, ptr %v1, align 8, !dbg !273
  %xor72 = xor i64 %114, %113, !dbg !273
  store i64 %xor72, ptr %v1, align 8, !dbg !273
  %115 = load i64, ptr %v0, align 8, !dbg !273
  %call73 = call i64 @rol64(i64 noundef %115, i32 noundef 32) #5, !dbg !273
  store i64 %call73, ptr %v0, align 8, !dbg !273
  %116 = load i64, ptr %v3, align 8, !dbg !273
  %117 = load i64, ptr %v2, align 8, !dbg !273
  %add74 = add i64 %117, %116, !dbg !273
  store i64 %add74, ptr %v2, align 8, !dbg !273
  %118 = load i64, ptr %v3, align 8, !dbg !273
  %call75 = call i64 @rol64(i64 noundef %118, i32 noundef 16) #5, !dbg !273
  store i64 %call75, ptr %v3, align 8, !dbg !273
  %119 = load i64, ptr %v2, align 8, !dbg !273
  %120 = load i64, ptr %v3, align 8, !dbg !273
  %xor76 = xor i64 %120, %119, !dbg !273
  store i64 %xor76, ptr %v3, align 8, !dbg !273
  %121 = load i64, ptr %v3, align 8, !dbg !273
  %122 = load i64, ptr %v0, align 8, !dbg !273
  %add77 = add i64 %122, %121, !dbg !273
  store i64 %add77, ptr %v0, align 8, !dbg !273
  %123 = load i64, ptr %v3, align 8, !dbg !273
  %call78 = call i64 @rol64(i64 noundef %123, i32 noundef 21) #5, !dbg !273
  store i64 %call78, ptr %v3, align 8, !dbg !273
  %124 = load i64, ptr %v0, align 8, !dbg !273
  %125 = load i64, ptr %v3, align 8, !dbg !273
  %xor79 = xor i64 %125, %124, !dbg !273
  store i64 %xor79, ptr %v3, align 8, !dbg !273
  %126 = load i64, ptr %v1, align 8, !dbg !273
  %127 = load i64, ptr %v2, align 8, !dbg !273
  %add80 = add i64 %127, %126, !dbg !273
  store i64 %add80, ptr %v2, align 8, !dbg !273
  %128 = load i64, ptr %v1, align 8, !dbg !273
  %call81 = call i64 @rol64(i64 noundef %128, i32 noundef 17) #5, !dbg !273
  store i64 %call81, ptr %v1, align 8, !dbg !273
  %129 = load i64, ptr %v2, align 8, !dbg !273
  %130 = load i64, ptr %v1, align 8, !dbg !273
  %xor82 = xor i64 %130, %129, !dbg !273
  store i64 %xor82, ptr %v1, align 8, !dbg !273
  %131 = load i64, ptr %v2, align 8, !dbg !273
  %call83 = call i64 @rol64(i64 noundef %131, i32 noundef 32) #5, !dbg !273
  store i64 %call83, ptr %v2, align 8, !dbg !273
  %132 = load i64, ptr %v1, align 8, !dbg !274
  %133 = load i64, ptr %v0, align 8, !dbg !274
  %add84 = add i64 %133, %132, !dbg !274
  store i64 %add84, ptr %v0, align 8, !dbg !274
  %134 = load i64, ptr %v1, align 8, !dbg !274
  %call85 = call i64 @rol64(i64 noundef %134, i32 noundef 13) #5, !dbg !274
  store i64 %call85, ptr %v1, align 8, !dbg !274
  %135 = load i64, ptr %v0, align 8, !dbg !274
  %136 = load i64, ptr %v1, align 8, !dbg !274
  %xor86 = xor i64 %136, %135, !dbg !274
  store i64 %xor86, ptr %v1, align 8, !dbg !274
  %137 = load i64, ptr %v0, align 8, !dbg !274
  %call87 = call i64 @rol64(i64 noundef %137, i32 noundef 32) #5, !dbg !274
  store i64 %call87, ptr %v0, align 8, !dbg !274
  %138 = load i64, ptr %v3, align 8, !dbg !274
  %139 = load i64, ptr %v2, align 8, !dbg !274
  %add88 = add i64 %139, %138, !dbg !274
  store i64 %add88, ptr %v2, align 8, !dbg !274
  %140 = load i64, ptr %v3, align 8, !dbg !274
  %call89 = call i64 @rol64(i64 noundef %140, i32 noundef 16) #5, !dbg !274
  store i64 %call89, ptr %v3, align 8, !dbg !274
  %141 = load i64, ptr %v2, align 8, !dbg !274
  %142 = load i64, ptr %v3, align 8, !dbg !274
  %xor90 = xor i64 %142, %141, !dbg !274
  store i64 %xor90, ptr %v3, align 8, !dbg !274
  %143 = load i64, ptr %v3, align 8, !dbg !274
  %144 = load i64, ptr %v0, align 8, !dbg !274
  %add91 = add i64 %144, %143, !dbg !274
  store i64 %add91, ptr %v0, align 8, !dbg !274
  %145 = load i64, ptr %v3, align 8, !dbg !274
  %call92 = call i64 @rol64(i64 noundef %145, i32 noundef 21) #5, !dbg !274
  store i64 %call92, ptr %v3, align 8, !dbg !274
  %146 = load i64, ptr %v0, align 8, !dbg !274
  %147 = load i64, ptr %v3, align 8, !dbg !274
  %xor93 = xor i64 %147, %146, !dbg !274
  store i64 %xor93, ptr %v3, align 8, !dbg !274
  %148 = load i64, ptr %v1, align 8, !dbg !274
  %149 = load i64, ptr %v2, align 8, !dbg !274
  %add94 = add i64 %149, %148, !dbg !274
  store i64 %add94, ptr %v2, align 8, !dbg !274
  %150 = load i64, ptr %v1, align 8, !dbg !274
  %call95 = call i64 @rol64(i64 noundef %150, i32 noundef 17) #5, !dbg !274
  store i64 %call95, ptr %v1, align 8, !dbg !274
  %151 = load i64, ptr %v2, align 8, !dbg !274
  %152 = load i64, ptr %v1, align 8, !dbg !274
  %xor96 = xor i64 %152, %151, !dbg !274
  store i64 %xor96, ptr %v1, align 8, !dbg !274
  %153 = load i64, ptr %v2, align 8, !dbg !274
  %call97 = call i64 @rol64(i64 noundef %153, i32 noundef 32) #5, !dbg !274
  store i64 %call97, ptr %v2, align 8, !dbg !274
  %154 = load i64, ptr %third.addr, align 8, !dbg !275
  %155 = load i64, ptr %v0, align 8, !dbg !276
  %xor98 = xor i64 %155, %154, !dbg !276
  store i64 %xor98, ptr %v0, align 8, !dbg !276
  %156 = load i64, ptr %b, align 8, !dbg !277
  %157 = load i64, ptr %v3, align 8, !dbg !277
  %xor99 = xor i64 %157, %156, !dbg !277
  store i64 %xor99, ptr %v3, align 8, !dbg !277
  %158 = load i64, ptr %v1, align 8, !dbg !277
  %159 = load i64, ptr %v0, align 8, !dbg !277
  %add100 = add i64 %159, %158, !dbg !277
  store i64 %add100, ptr %v0, align 8, !dbg !277
  %160 = load i64, ptr %v1, align 8, !dbg !277
  %call101 = call i64 @rol64(i64 noundef %160, i32 noundef 13) #5, !dbg !277
  store i64 %call101, ptr %v1, align 8, !dbg !277
  %161 = load i64, ptr %v0, align 8, !dbg !277
  %162 = load i64, ptr %v1, align 8, !dbg !277
  %xor102 = xor i64 %162, %161, !dbg !277
  store i64 %xor102, ptr %v1, align 8, !dbg !277
  %163 = load i64, ptr %v0, align 8, !dbg !277
  %call103 = call i64 @rol64(i64 noundef %163, i32 noundef 32) #5, !dbg !277
  store i64 %call103, ptr %v0, align 8, !dbg !277
  %164 = load i64, ptr %v3, align 8, !dbg !277
  %165 = load i64, ptr %v2, align 8, !dbg !277
  %add104 = add i64 %165, %164, !dbg !277
  store i64 %add104, ptr %v2, align 8, !dbg !277
  %166 = load i64, ptr %v3, align 8, !dbg !277
  %call105 = call i64 @rol64(i64 noundef %166, i32 noundef 16) #5, !dbg !277
  store i64 %call105, ptr %v3, align 8, !dbg !277
  %167 = load i64, ptr %v2, align 8, !dbg !277
  %168 = load i64, ptr %v3, align 8, !dbg !277
  %xor106 = xor i64 %168, %167, !dbg !277
  store i64 %xor106, ptr %v3, align 8, !dbg !277
  %169 = load i64, ptr %v3, align 8, !dbg !277
  %170 = load i64, ptr %v0, align 8, !dbg !277
  %add107 = add i64 %170, %169, !dbg !277
  store i64 %add107, ptr %v0, align 8, !dbg !277
  %171 = load i64, ptr %v3, align 8, !dbg !277
  %call108 = call i64 @rol64(i64 noundef %171, i32 noundef 21) #5, !dbg !277
  store i64 %call108, ptr %v3, align 8, !dbg !277
  %172 = load i64, ptr %v0, align 8, !dbg !277
  %173 = load i64, ptr %v3, align 8, !dbg !277
  %xor109 = xor i64 %173, %172, !dbg !277
  store i64 %xor109, ptr %v3, align 8, !dbg !277
  %174 = load i64, ptr %v1, align 8, !dbg !277
  %175 = load i64, ptr %v2, align 8, !dbg !277
  %add110 = add i64 %175, %174, !dbg !277
  store i64 %add110, ptr %v2, align 8, !dbg !277
  %176 = load i64, ptr %v1, align 8, !dbg !277
  %call111 = call i64 @rol64(i64 noundef %176, i32 noundef 17) #5, !dbg !277
  store i64 %call111, ptr %v1, align 8, !dbg !277
  %177 = load i64, ptr %v2, align 8, !dbg !277
  %178 = load i64, ptr %v1, align 8, !dbg !277
  %xor112 = xor i64 %178, %177, !dbg !277
  store i64 %xor112, ptr %v1, align 8, !dbg !277
  %179 = load i64, ptr %v2, align 8, !dbg !277
  %call113 = call i64 @rol64(i64 noundef %179, i32 noundef 32) #5, !dbg !277
  store i64 %call113, ptr %v2, align 8, !dbg !277
  %180 = load i64, ptr %v1, align 8, !dbg !277
  %181 = load i64, ptr %v0, align 8, !dbg !277
  %add114 = add i64 %181, %180, !dbg !277
  store i64 %add114, ptr %v0, align 8, !dbg !277
  %182 = load i64, ptr %v1, align 8, !dbg !277
  %call115 = call i64 @rol64(i64 noundef %182, i32 noundef 13) #5, !dbg !277
  store i64 %call115, ptr %v1, align 8, !dbg !277
  %183 = load i64, ptr %v0, align 8, !dbg !277
  %184 = load i64, ptr %v1, align 8, !dbg !277
  %xor116 = xor i64 %184, %183, !dbg !277
  store i64 %xor116, ptr %v1, align 8, !dbg !277
  %185 = load i64, ptr %v0, align 8, !dbg !277
  %call117 = call i64 @rol64(i64 noundef %185, i32 noundef 32) #5, !dbg !277
  store i64 %call117, ptr %v0, align 8, !dbg !277
  %186 = load i64, ptr %v3, align 8, !dbg !277
  %187 = load i64, ptr %v2, align 8, !dbg !277
  %add118 = add i64 %187, %186, !dbg !277
  store i64 %add118, ptr %v2, align 8, !dbg !277
  %188 = load i64, ptr %v3, align 8, !dbg !277
  %call119 = call i64 @rol64(i64 noundef %188, i32 noundef 16) #5, !dbg !277
  store i64 %call119, ptr %v3, align 8, !dbg !277
  %189 = load i64, ptr %v2, align 8, !dbg !277
  %190 = load i64, ptr %v3, align 8, !dbg !277
  %xor120 = xor i64 %190, %189, !dbg !277
  store i64 %xor120, ptr %v3, align 8, !dbg !277
  %191 = load i64, ptr %v3, align 8, !dbg !277
  %192 = load i64, ptr %v0, align 8, !dbg !277
  %add121 = add i64 %192, %191, !dbg !277
  store i64 %add121, ptr %v0, align 8, !dbg !277
  %193 = load i64, ptr %v3, align 8, !dbg !277
  %call122 = call i64 @rol64(i64 noundef %193, i32 noundef 21) #5, !dbg !277
  store i64 %call122, ptr %v3, align 8, !dbg !277
  %194 = load i64, ptr %v0, align 8, !dbg !277
  %195 = load i64, ptr %v3, align 8, !dbg !277
  %xor123 = xor i64 %195, %194, !dbg !277
  store i64 %xor123, ptr %v3, align 8, !dbg !277
  %196 = load i64, ptr %v1, align 8, !dbg !277
  %197 = load i64, ptr %v2, align 8, !dbg !277
  %add124 = add i64 %197, %196, !dbg !277
  store i64 %add124, ptr %v2, align 8, !dbg !277
  %198 = load i64, ptr %v1, align 8, !dbg !277
  %call125 = call i64 @rol64(i64 noundef %198, i32 noundef 17) #5, !dbg !277
  store i64 %call125, ptr %v1, align 8, !dbg !277
  %199 = load i64, ptr %v2, align 8, !dbg !277
  %200 = load i64, ptr %v1, align 8, !dbg !277
  %xor126 = xor i64 %200, %199, !dbg !277
  store i64 %xor126, ptr %v1, align 8, !dbg !277
  %201 = load i64, ptr %v2, align 8, !dbg !277
  %call127 = call i64 @rol64(i64 noundef %201, i32 noundef 32) #5, !dbg !277
  store i64 %call127, ptr %v2, align 8, !dbg !277
  %202 = load i64, ptr %b, align 8, !dbg !277
  %203 = load i64, ptr %v0, align 8, !dbg !277
  %xor128 = xor i64 %203, %202, !dbg !277
  store i64 %xor128, ptr %v0, align 8, !dbg !277
  %204 = load i64, ptr %v2, align 8, !dbg !277
  %xor129 = xor i64 %204, 255, !dbg !277
  store i64 %xor129, ptr %v2, align 8, !dbg !277
  %205 = load i64, ptr %v1, align 8, !dbg !277
  %206 = load i64, ptr %v0, align 8, !dbg !277
  %add130 = add i64 %206, %205, !dbg !277
  store i64 %add130, ptr %v0, align 8, !dbg !277
  %207 = load i64, ptr %v1, align 8, !dbg !277
  %call131 = call i64 @rol64(i64 noundef %207, i32 noundef 13) #5, !dbg !277
  store i64 %call131, ptr %v1, align 8, !dbg !277
  %208 = load i64, ptr %v0, align 8, !dbg !277
  %209 = load i64, ptr %v1, align 8, !dbg !277
  %xor132 = xor i64 %209, %208, !dbg !277
  store i64 %xor132, ptr %v1, align 8, !dbg !277
  %210 = load i64, ptr %v0, align 8, !dbg !277
  %call133 = call i64 @rol64(i64 noundef %210, i32 noundef 32) #5, !dbg !277
  store i64 %call133, ptr %v0, align 8, !dbg !277
  %211 = load i64, ptr %v3, align 8, !dbg !277
  %212 = load i64, ptr %v2, align 8, !dbg !277
  %add134 = add i64 %212, %211, !dbg !277
  store i64 %add134, ptr %v2, align 8, !dbg !277
  %213 = load i64, ptr %v3, align 8, !dbg !277
  %call135 = call i64 @rol64(i64 noundef %213, i32 noundef 16) #5, !dbg !277
  store i64 %call135, ptr %v3, align 8, !dbg !277
  %214 = load i64, ptr %v2, align 8, !dbg !277
  %215 = load i64, ptr %v3, align 8, !dbg !277
  %xor136 = xor i64 %215, %214, !dbg !277
  store i64 %xor136, ptr %v3, align 8, !dbg !277
  %216 = load i64, ptr %v3, align 8, !dbg !277
  %217 = load i64, ptr %v0, align 8, !dbg !277
  %add137 = add i64 %217, %216, !dbg !277
  store i64 %add137, ptr %v0, align 8, !dbg !277
  %218 = load i64, ptr %v3, align 8, !dbg !277
  %call138 = call i64 @rol64(i64 noundef %218, i32 noundef 21) #5, !dbg !277
  store i64 %call138, ptr %v3, align 8, !dbg !277
  %219 = load i64, ptr %v0, align 8, !dbg !277
  %220 = load i64, ptr %v3, align 8, !dbg !277
  %xor139 = xor i64 %220, %219, !dbg !277
  store i64 %xor139, ptr %v3, align 8, !dbg !277
  %221 = load i64, ptr %v1, align 8, !dbg !277
  %222 = load i64, ptr %v2, align 8, !dbg !277
  %add140 = add i64 %222, %221, !dbg !277
  store i64 %add140, ptr %v2, align 8, !dbg !277
  %223 = load i64, ptr %v1, align 8, !dbg !277
  %call141 = call i64 @rol64(i64 noundef %223, i32 noundef 17) #5, !dbg !277
  store i64 %call141, ptr %v1, align 8, !dbg !277
  %224 = load i64, ptr %v2, align 8, !dbg !277
  %225 = load i64, ptr %v1, align 8, !dbg !277
  %xor142 = xor i64 %225, %224, !dbg !277
  store i64 %xor142, ptr %v1, align 8, !dbg !277
  %226 = load i64, ptr %v2, align 8, !dbg !277
  %call143 = call i64 @rol64(i64 noundef %226, i32 noundef 32) #5, !dbg !277
  store i64 %call143, ptr %v2, align 8, !dbg !277
  %227 = load i64, ptr %v1, align 8, !dbg !277
  %228 = load i64, ptr %v0, align 8, !dbg !277
  %add144 = add i64 %228, %227, !dbg !277
  store i64 %add144, ptr %v0, align 8, !dbg !277
  %229 = load i64, ptr %v1, align 8, !dbg !277
  %call145 = call i64 @rol64(i64 noundef %229, i32 noundef 13) #5, !dbg !277
  store i64 %call145, ptr %v1, align 8, !dbg !277
  %230 = load i64, ptr %v0, align 8, !dbg !277
  %231 = load i64, ptr %v1, align 8, !dbg !277
  %xor146 = xor i64 %231, %230, !dbg !277
  store i64 %xor146, ptr %v1, align 8, !dbg !277
  %232 = load i64, ptr %v0, align 8, !dbg !277
  %call147 = call i64 @rol64(i64 noundef %232, i32 noundef 32) #5, !dbg !277
  store i64 %call147, ptr %v0, align 8, !dbg !277
  %233 = load i64, ptr %v3, align 8, !dbg !277
  %234 = load i64, ptr %v2, align 8, !dbg !277
  %add148 = add i64 %234, %233, !dbg !277
  store i64 %add148, ptr %v2, align 8, !dbg !277
  %235 = load i64, ptr %v3, align 8, !dbg !277
  %call149 = call i64 @rol64(i64 noundef %235, i32 noundef 16) #5, !dbg !277
  store i64 %call149, ptr %v3, align 8, !dbg !277
  %236 = load i64, ptr %v2, align 8, !dbg !277
  %237 = load i64, ptr %v3, align 8, !dbg !277
  %xor150 = xor i64 %237, %236, !dbg !277
  store i64 %xor150, ptr %v3, align 8, !dbg !277
  %238 = load i64, ptr %v3, align 8, !dbg !277
  %239 = load i64, ptr %v0, align 8, !dbg !277
  %add151 = add i64 %239, %238, !dbg !277
  store i64 %add151, ptr %v0, align 8, !dbg !277
  %240 = load i64, ptr %v3, align 8, !dbg !277
  %call152 = call i64 @rol64(i64 noundef %240, i32 noundef 21) #5, !dbg !277
  store i64 %call152, ptr %v3, align 8, !dbg !277
  %241 = load i64, ptr %v0, align 8, !dbg !277
  %242 = load i64, ptr %v3, align 8, !dbg !277
  %xor153 = xor i64 %242, %241, !dbg !277
  store i64 %xor153, ptr %v3, align 8, !dbg !277
  %243 = load i64, ptr %v1, align 8, !dbg !277
  %244 = load i64, ptr %v2, align 8, !dbg !277
  %add154 = add i64 %244, %243, !dbg !277
  store i64 %add154, ptr %v2, align 8, !dbg !277
  %245 = load i64, ptr %v1, align 8, !dbg !277
  %call155 = call i64 @rol64(i64 noundef %245, i32 noundef 17) #5, !dbg !277
  store i64 %call155, ptr %v1, align 8, !dbg !277
  %246 = load i64, ptr %v2, align 8, !dbg !277
  %247 = load i64, ptr %v1, align 8, !dbg !277
  %xor156 = xor i64 %247, %246, !dbg !277
  store i64 %xor156, ptr %v1, align 8, !dbg !277
  %248 = load i64, ptr %v2, align 8, !dbg !277
  %call157 = call i64 @rol64(i64 noundef %248, i32 noundef 32) #5, !dbg !277
  store i64 %call157, ptr %v2, align 8, !dbg !277
  %249 = load i64, ptr %v1, align 8, !dbg !277
  %250 = load i64, ptr %v0, align 8, !dbg !277
  %add158 = add i64 %250, %249, !dbg !277
  store i64 %add158, ptr %v0, align 8, !dbg !277
  %251 = load i64, ptr %v1, align 8, !dbg !277
  %call159 = call i64 @rol64(i64 noundef %251, i32 noundef 13) #5, !dbg !277
  store i64 %call159, ptr %v1, align 8, !dbg !277
  %252 = load i64, ptr %v0, align 8, !dbg !277
  %253 = load i64, ptr %v1, align 8, !dbg !277
  %xor160 = xor i64 %253, %252, !dbg !277
  store i64 %xor160, ptr %v1, align 8, !dbg !277
  %254 = load i64, ptr %v0, align 8, !dbg !277
  %call161 = call i64 @rol64(i64 noundef %254, i32 noundef 32) #5, !dbg !277
  store i64 %call161, ptr %v0, align 8, !dbg !277
  %255 = load i64, ptr %v3, align 8, !dbg !277
  %256 = load i64, ptr %v2, align 8, !dbg !277
  %add162 = add i64 %256, %255, !dbg !277
  store i64 %add162, ptr %v2, align 8, !dbg !277
  %257 = load i64, ptr %v3, align 8, !dbg !277
  %call163 = call i64 @rol64(i64 noundef %257, i32 noundef 16) #5, !dbg !277
  store i64 %call163, ptr %v3, align 8, !dbg !277
  %258 = load i64, ptr %v2, align 8, !dbg !277
  %259 = load i64, ptr %v3, align 8, !dbg !277
  %xor164 = xor i64 %259, %258, !dbg !277
  store i64 %xor164, ptr %v3, align 8, !dbg !277
  %260 = load i64, ptr %v3, align 8, !dbg !277
  %261 = load i64, ptr %v0, align 8, !dbg !277
  %add165 = add i64 %261, %260, !dbg !277
  store i64 %add165, ptr %v0, align 8, !dbg !277
  %262 = load i64, ptr %v3, align 8, !dbg !277
  %call166 = call i64 @rol64(i64 noundef %262, i32 noundef 21) #5, !dbg !277
  store i64 %call166, ptr %v3, align 8, !dbg !277
  %263 = load i64, ptr %v0, align 8, !dbg !277
  %264 = load i64, ptr %v3, align 8, !dbg !277
  %xor167 = xor i64 %264, %263, !dbg !277
  store i64 %xor167, ptr %v3, align 8, !dbg !277
  %265 = load i64, ptr %v1, align 8, !dbg !277
  %266 = load i64, ptr %v2, align 8, !dbg !277
  %add168 = add i64 %266, %265, !dbg !277
  store i64 %add168, ptr %v2, align 8, !dbg !277
  %267 = load i64, ptr %v1, align 8, !dbg !277
  %call169 = call i64 @rol64(i64 noundef %267, i32 noundef 17) #5, !dbg !277
  store i64 %call169, ptr %v1, align 8, !dbg !277
  %268 = load i64, ptr %v2, align 8, !dbg !277
  %269 = load i64, ptr %v1, align 8, !dbg !277
  %xor170 = xor i64 %269, %268, !dbg !277
  store i64 %xor170, ptr %v1, align 8, !dbg !277
  %270 = load i64, ptr %v2, align 8, !dbg !277
  %call171 = call i64 @rol64(i64 noundef %270, i32 noundef 32) #5, !dbg !277
  store i64 %call171, ptr %v2, align 8, !dbg !277
  %271 = load i64, ptr %v1, align 8, !dbg !277
  %272 = load i64, ptr %v0, align 8, !dbg !277
  %add172 = add i64 %272, %271, !dbg !277
  store i64 %add172, ptr %v0, align 8, !dbg !277
  %273 = load i64, ptr %v1, align 8, !dbg !277
  %call173 = call i64 @rol64(i64 noundef %273, i32 noundef 13) #5, !dbg !277
  store i64 %call173, ptr %v1, align 8, !dbg !277
  %274 = load i64, ptr %v0, align 8, !dbg !277
  %275 = load i64, ptr %v1, align 8, !dbg !277
  %xor174 = xor i64 %275, %274, !dbg !277
  store i64 %xor174, ptr %v1, align 8, !dbg !277
  %276 = load i64, ptr %v0, align 8, !dbg !277
  %call175 = call i64 @rol64(i64 noundef %276, i32 noundef 32) #5, !dbg !277
  store i64 %call175, ptr %v0, align 8, !dbg !277
  %277 = load i64, ptr %v3, align 8, !dbg !277
  %278 = load i64, ptr %v2, align 8, !dbg !277
  %add176 = add i64 %278, %277, !dbg !277
  store i64 %add176, ptr %v2, align 8, !dbg !277
  %279 = load i64, ptr %v3, align 8, !dbg !277
  %call177 = call i64 @rol64(i64 noundef %279, i32 noundef 16) #5, !dbg !277
  store i64 %call177, ptr %v3, align 8, !dbg !277
  %280 = load i64, ptr %v2, align 8, !dbg !277
  %281 = load i64, ptr %v3, align 8, !dbg !277
  %xor178 = xor i64 %281, %280, !dbg !277
  store i64 %xor178, ptr %v3, align 8, !dbg !277
  %282 = load i64, ptr %v3, align 8, !dbg !277
  %283 = load i64, ptr %v0, align 8, !dbg !277
  %add179 = add i64 %283, %282, !dbg !277
  store i64 %add179, ptr %v0, align 8, !dbg !277
  %284 = load i64, ptr %v3, align 8, !dbg !277
  %call180 = call i64 @rol64(i64 noundef %284, i32 noundef 21) #5, !dbg !277
  store i64 %call180, ptr %v3, align 8, !dbg !277
  %285 = load i64, ptr %v0, align 8, !dbg !277
  %286 = load i64, ptr %v3, align 8, !dbg !277
  %xor181 = xor i64 %286, %285, !dbg !277
  store i64 %xor181, ptr %v3, align 8, !dbg !277
  %287 = load i64, ptr %v1, align 8, !dbg !277
  %288 = load i64, ptr %v2, align 8, !dbg !277
  %add182 = add i64 %288, %287, !dbg !277
  store i64 %add182, ptr %v2, align 8, !dbg !277
  %289 = load i64, ptr %v1, align 8, !dbg !277
  %call183 = call i64 @rol64(i64 noundef %289, i32 noundef 17) #5, !dbg !277
  store i64 %call183, ptr %v1, align 8, !dbg !277
  %290 = load i64, ptr %v2, align 8, !dbg !277
  %291 = load i64, ptr %v1, align 8, !dbg !277
  %xor184 = xor i64 %291, %290, !dbg !277
  store i64 %xor184, ptr %v1, align 8, !dbg !277
  %292 = load i64, ptr %v2, align 8, !dbg !277
  %call185 = call i64 @rol64(i64 noundef %292, i32 noundef 32) #5, !dbg !277
  store i64 %call185, ptr %v2, align 8, !dbg !277
  %293 = load i64, ptr %v0, align 8, !dbg !277
  %294 = load i64, ptr %v1, align 8, !dbg !277
  %xor186 = xor i64 %293, %294, !dbg !277
  %295 = load i64, ptr %v2, align 8, !dbg !277
  %296 = load i64, ptr %v3, align 8, !dbg !277
  %xor187 = xor i64 %295, %296, !dbg !277
  %xor188 = xor i64 %xor186, %xor187, !dbg !277
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !278
  ret i64 %xor188, !dbg !277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @siphash_4u64(i64 noundef %first, i64 noundef %second, i64 noundef %third, i64 noundef %forth, ptr noundef %key) #0 align 16 !dbg !279 {
entry:
  %first.addr = alloca i64, align 8
  %second.addr = alloca i64, align 8
  %third.addr = alloca i64, align 8
  %forth.addr = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i64 %first, ptr %first.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !283, metadata !DIExpression()), !dbg !293
  store i64 %second, ptr %second.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !284, metadata !DIExpression()), !dbg !294
  store i64 %third, ptr %third.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !285, metadata !DIExpression()), !dbg !295
  store i64 %forth, ptr %forth.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %forth.addr, metadata !286, metadata !DIExpression()), !dbg !296
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !287, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !288, metadata !DIExpression()), !dbg !298
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !289, metadata !DIExpression()), !dbg !298
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !290, metadata !DIExpression()), !dbg !298
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !291, metadata !DIExpression()), !dbg !298
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %b, metadata !292, metadata !DIExpression()), !dbg !298
  store i64 2305843009213693952, ptr %b, align 8, !dbg !298
  %0 = load ptr, ptr %key.addr, align 8, !dbg !298
  %key1 = getelementptr inbounds %struct.siphash_key_t, ptr %0, i32 0, i32 0, !dbg !298
  %arrayidx = getelementptr [2 x i64], ptr %key1, i64 0, i64 1, !dbg !298
  %1 = load i64, ptr %arrayidx, align 8, !dbg !298
  %2 = load i64, ptr %v3, align 8, !dbg !298
  %xor = xor i64 %2, %1, !dbg !298
  store i64 %xor, ptr %v3, align 8, !dbg !298
  %3 = load ptr, ptr %key.addr, align 8, !dbg !298
  %key2 = getelementptr inbounds %struct.siphash_key_t, ptr %3, i32 0, i32 0, !dbg !298
  %arrayidx3 = getelementptr [2 x i64], ptr %key2, i64 0, i64 0, !dbg !298
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !298
  %5 = load i64, ptr %v2, align 8, !dbg !298
  %xor4 = xor i64 %5, %4, !dbg !298
  store i64 %xor4, ptr %v2, align 8, !dbg !298
  %6 = load ptr, ptr %key.addr, align 8, !dbg !298
  %key5 = getelementptr inbounds %struct.siphash_key_t, ptr %6, i32 0, i32 0, !dbg !298
  %arrayidx6 = getelementptr [2 x i64], ptr %key5, i64 0, i64 1, !dbg !298
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !298
  %8 = load i64, ptr %v1, align 8, !dbg !298
  %xor7 = xor i64 %8, %7, !dbg !298
  store i64 %xor7, ptr %v1, align 8, !dbg !298
  %9 = load ptr, ptr %key.addr, align 8, !dbg !298
  %key8 = getelementptr inbounds %struct.siphash_key_t, ptr %9, i32 0, i32 0, !dbg !298
  %arrayidx9 = getelementptr [2 x i64], ptr %key8, i64 0, i64 0, !dbg !298
  %10 = load i64, ptr %arrayidx9, align 8, !dbg !298
  %11 = load i64, ptr %v0, align 8, !dbg !298
  %xor10 = xor i64 %11, %10, !dbg !298
  store i64 %xor10, ptr %v0, align 8, !dbg !298
  %12 = load i64, ptr %first.addr, align 8, !dbg !299
  %13 = load i64, ptr %v3, align 8, !dbg !300
  %xor11 = xor i64 %13, %12, !dbg !300
  store i64 %xor11, ptr %v3, align 8, !dbg !300
  %14 = load i64, ptr %v1, align 8, !dbg !301
  %15 = load i64, ptr %v0, align 8, !dbg !301
  %add = add i64 %15, %14, !dbg !301
  store i64 %add, ptr %v0, align 8, !dbg !301
  %16 = load i64, ptr %v1, align 8, !dbg !301
  %call = call i64 @rol64(i64 noundef %16, i32 noundef 13) #5, !dbg !301
  store i64 %call, ptr %v1, align 8, !dbg !301
  %17 = load i64, ptr %v0, align 8, !dbg !301
  %18 = load i64, ptr %v1, align 8, !dbg !301
  %xor12 = xor i64 %18, %17, !dbg !301
  store i64 %xor12, ptr %v1, align 8, !dbg !301
  %19 = load i64, ptr %v0, align 8, !dbg !301
  %call13 = call i64 @rol64(i64 noundef %19, i32 noundef 32) #5, !dbg !301
  store i64 %call13, ptr %v0, align 8, !dbg !301
  %20 = load i64, ptr %v3, align 8, !dbg !301
  %21 = load i64, ptr %v2, align 8, !dbg !301
  %add14 = add i64 %21, %20, !dbg !301
  store i64 %add14, ptr %v2, align 8, !dbg !301
  %22 = load i64, ptr %v3, align 8, !dbg !301
  %call15 = call i64 @rol64(i64 noundef %22, i32 noundef 16) #5, !dbg !301
  store i64 %call15, ptr %v3, align 8, !dbg !301
  %23 = load i64, ptr %v2, align 8, !dbg !301
  %24 = load i64, ptr %v3, align 8, !dbg !301
  %xor16 = xor i64 %24, %23, !dbg !301
  store i64 %xor16, ptr %v3, align 8, !dbg !301
  %25 = load i64, ptr %v3, align 8, !dbg !301
  %26 = load i64, ptr %v0, align 8, !dbg !301
  %add17 = add i64 %26, %25, !dbg !301
  store i64 %add17, ptr %v0, align 8, !dbg !301
  %27 = load i64, ptr %v3, align 8, !dbg !301
  %call18 = call i64 @rol64(i64 noundef %27, i32 noundef 21) #5, !dbg !301
  store i64 %call18, ptr %v3, align 8, !dbg !301
  %28 = load i64, ptr %v0, align 8, !dbg !301
  %29 = load i64, ptr %v3, align 8, !dbg !301
  %xor19 = xor i64 %29, %28, !dbg !301
  store i64 %xor19, ptr %v3, align 8, !dbg !301
  %30 = load i64, ptr %v1, align 8, !dbg !301
  %31 = load i64, ptr %v2, align 8, !dbg !301
  %add20 = add i64 %31, %30, !dbg !301
  store i64 %add20, ptr %v2, align 8, !dbg !301
  %32 = load i64, ptr %v1, align 8, !dbg !301
  %call21 = call i64 @rol64(i64 noundef %32, i32 noundef 17) #5, !dbg !301
  store i64 %call21, ptr %v1, align 8, !dbg !301
  %33 = load i64, ptr %v2, align 8, !dbg !301
  %34 = load i64, ptr %v1, align 8, !dbg !301
  %xor22 = xor i64 %34, %33, !dbg !301
  store i64 %xor22, ptr %v1, align 8, !dbg !301
  %35 = load i64, ptr %v2, align 8, !dbg !301
  %call23 = call i64 @rol64(i64 noundef %35, i32 noundef 32) #5, !dbg !301
  store i64 %call23, ptr %v2, align 8, !dbg !301
  %36 = load i64, ptr %v1, align 8, !dbg !302
  %37 = load i64, ptr %v0, align 8, !dbg !302
  %add24 = add i64 %37, %36, !dbg !302
  store i64 %add24, ptr %v0, align 8, !dbg !302
  %38 = load i64, ptr %v1, align 8, !dbg !302
  %call25 = call i64 @rol64(i64 noundef %38, i32 noundef 13) #5, !dbg !302
  store i64 %call25, ptr %v1, align 8, !dbg !302
  %39 = load i64, ptr %v0, align 8, !dbg !302
  %40 = load i64, ptr %v1, align 8, !dbg !302
  %xor26 = xor i64 %40, %39, !dbg !302
  store i64 %xor26, ptr %v1, align 8, !dbg !302
  %41 = load i64, ptr %v0, align 8, !dbg !302
  %call27 = call i64 @rol64(i64 noundef %41, i32 noundef 32) #5, !dbg !302
  store i64 %call27, ptr %v0, align 8, !dbg !302
  %42 = load i64, ptr %v3, align 8, !dbg !302
  %43 = load i64, ptr %v2, align 8, !dbg !302
  %add28 = add i64 %43, %42, !dbg !302
  store i64 %add28, ptr %v2, align 8, !dbg !302
  %44 = load i64, ptr %v3, align 8, !dbg !302
  %call29 = call i64 @rol64(i64 noundef %44, i32 noundef 16) #5, !dbg !302
  store i64 %call29, ptr %v3, align 8, !dbg !302
  %45 = load i64, ptr %v2, align 8, !dbg !302
  %46 = load i64, ptr %v3, align 8, !dbg !302
  %xor30 = xor i64 %46, %45, !dbg !302
  store i64 %xor30, ptr %v3, align 8, !dbg !302
  %47 = load i64, ptr %v3, align 8, !dbg !302
  %48 = load i64, ptr %v0, align 8, !dbg !302
  %add31 = add i64 %48, %47, !dbg !302
  store i64 %add31, ptr %v0, align 8, !dbg !302
  %49 = load i64, ptr %v3, align 8, !dbg !302
  %call32 = call i64 @rol64(i64 noundef %49, i32 noundef 21) #5, !dbg !302
  store i64 %call32, ptr %v3, align 8, !dbg !302
  %50 = load i64, ptr %v0, align 8, !dbg !302
  %51 = load i64, ptr %v3, align 8, !dbg !302
  %xor33 = xor i64 %51, %50, !dbg !302
  store i64 %xor33, ptr %v3, align 8, !dbg !302
  %52 = load i64, ptr %v1, align 8, !dbg !302
  %53 = load i64, ptr %v2, align 8, !dbg !302
  %add34 = add i64 %53, %52, !dbg !302
  store i64 %add34, ptr %v2, align 8, !dbg !302
  %54 = load i64, ptr %v1, align 8, !dbg !302
  %call35 = call i64 @rol64(i64 noundef %54, i32 noundef 17) #5, !dbg !302
  store i64 %call35, ptr %v1, align 8, !dbg !302
  %55 = load i64, ptr %v2, align 8, !dbg !302
  %56 = load i64, ptr %v1, align 8, !dbg !302
  %xor36 = xor i64 %56, %55, !dbg !302
  store i64 %xor36, ptr %v1, align 8, !dbg !302
  %57 = load i64, ptr %v2, align 8, !dbg !302
  %call37 = call i64 @rol64(i64 noundef %57, i32 noundef 32) #5, !dbg !302
  store i64 %call37, ptr %v2, align 8, !dbg !302
  %58 = load i64, ptr %first.addr, align 8, !dbg !303
  %59 = load i64, ptr %v0, align 8, !dbg !304
  %xor38 = xor i64 %59, %58, !dbg !304
  store i64 %xor38, ptr %v0, align 8, !dbg !304
  %60 = load i64, ptr %second.addr, align 8, !dbg !305
  %61 = load i64, ptr %v3, align 8, !dbg !306
  %xor39 = xor i64 %61, %60, !dbg !306
  store i64 %xor39, ptr %v3, align 8, !dbg !306
  %62 = load i64, ptr %v1, align 8, !dbg !307
  %63 = load i64, ptr %v0, align 8, !dbg !307
  %add40 = add i64 %63, %62, !dbg !307
  store i64 %add40, ptr %v0, align 8, !dbg !307
  %64 = load i64, ptr %v1, align 8, !dbg !307
  %call41 = call i64 @rol64(i64 noundef %64, i32 noundef 13) #5, !dbg !307
  store i64 %call41, ptr %v1, align 8, !dbg !307
  %65 = load i64, ptr %v0, align 8, !dbg !307
  %66 = load i64, ptr %v1, align 8, !dbg !307
  %xor42 = xor i64 %66, %65, !dbg !307
  store i64 %xor42, ptr %v1, align 8, !dbg !307
  %67 = load i64, ptr %v0, align 8, !dbg !307
  %call43 = call i64 @rol64(i64 noundef %67, i32 noundef 32) #5, !dbg !307
  store i64 %call43, ptr %v0, align 8, !dbg !307
  %68 = load i64, ptr %v3, align 8, !dbg !307
  %69 = load i64, ptr %v2, align 8, !dbg !307
  %add44 = add i64 %69, %68, !dbg !307
  store i64 %add44, ptr %v2, align 8, !dbg !307
  %70 = load i64, ptr %v3, align 8, !dbg !307
  %call45 = call i64 @rol64(i64 noundef %70, i32 noundef 16) #5, !dbg !307
  store i64 %call45, ptr %v3, align 8, !dbg !307
  %71 = load i64, ptr %v2, align 8, !dbg !307
  %72 = load i64, ptr %v3, align 8, !dbg !307
  %xor46 = xor i64 %72, %71, !dbg !307
  store i64 %xor46, ptr %v3, align 8, !dbg !307
  %73 = load i64, ptr %v3, align 8, !dbg !307
  %74 = load i64, ptr %v0, align 8, !dbg !307
  %add47 = add i64 %74, %73, !dbg !307
  store i64 %add47, ptr %v0, align 8, !dbg !307
  %75 = load i64, ptr %v3, align 8, !dbg !307
  %call48 = call i64 @rol64(i64 noundef %75, i32 noundef 21) #5, !dbg !307
  store i64 %call48, ptr %v3, align 8, !dbg !307
  %76 = load i64, ptr %v0, align 8, !dbg !307
  %77 = load i64, ptr %v3, align 8, !dbg !307
  %xor49 = xor i64 %77, %76, !dbg !307
  store i64 %xor49, ptr %v3, align 8, !dbg !307
  %78 = load i64, ptr %v1, align 8, !dbg !307
  %79 = load i64, ptr %v2, align 8, !dbg !307
  %add50 = add i64 %79, %78, !dbg !307
  store i64 %add50, ptr %v2, align 8, !dbg !307
  %80 = load i64, ptr %v1, align 8, !dbg !307
  %call51 = call i64 @rol64(i64 noundef %80, i32 noundef 17) #5, !dbg !307
  store i64 %call51, ptr %v1, align 8, !dbg !307
  %81 = load i64, ptr %v2, align 8, !dbg !307
  %82 = load i64, ptr %v1, align 8, !dbg !307
  %xor52 = xor i64 %82, %81, !dbg !307
  store i64 %xor52, ptr %v1, align 8, !dbg !307
  %83 = load i64, ptr %v2, align 8, !dbg !307
  %call53 = call i64 @rol64(i64 noundef %83, i32 noundef 32) #5, !dbg !307
  store i64 %call53, ptr %v2, align 8, !dbg !307
  %84 = load i64, ptr %v1, align 8, !dbg !308
  %85 = load i64, ptr %v0, align 8, !dbg !308
  %add54 = add i64 %85, %84, !dbg !308
  store i64 %add54, ptr %v0, align 8, !dbg !308
  %86 = load i64, ptr %v1, align 8, !dbg !308
  %call55 = call i64 @rol64(i64 noundef %86, i32 noundef 13) #5, !dbg !308
  store i64 %call55, ptr %v1, align 8, !dbg !308
  %87 = load i64, ptr %v0, align 8, !dbg !308
  %88 = load i64, ptr %v1, align 8, !dbg !308
  %xor56 = xor i64 %88, %87, !dbg !308
  store i64 %xor56, ptr %v1, align 8, !dbg !308
  %89 = load i64, ptr %v0, align 8, !dbg !308
  %call57 = call i64 @rol64(i64 noundef %89, i32 noundef 32) #5, !dbg !308
  store i64 %call57, ptr %v0, align 8, !dbg !308
  %90 = load i64, ptr %v3, align 8, !dbg !308
  %91 = load i64, ptr %v2, align 8, !dbg !308
  %add58 = add i64 %91, %90, !dbg !308
  store i64 %add58, ptr %v2, align 8, !dbg !308
  %92 = load i64, ptr %v3, align 8, !dbg !308
  %call59 = call i64 @rol64(i64 noundef %92, i32 noundef 16) #5, !dbg !308
  store i64 %call59, ptr %v3, align 8, !dbg !308
  %93 = load i64, ptr %v2, align 8, !dbg !308
  %94 = load i64, ptr %v3, align 8, !dbg !308
  %xor60 = xor i64 %94, %93, !dbg !308
  store i64 %xor60, ptr %v3, align 8, !dbg !308
  %95 = load i64, ptr %v3, align 8, !dbg !308
  %96 = load i64, ptr %v0, align 8, !dbg !308
  %add61 = add i64 %96, %95, !dbg !308
  store i64 %add61, ptr %v0, align 8, !dbg !308
  %97 = load i64, ptr %v3, align 8, !dbg !308
  %call62 = call i64 @rol64(i64 noundef %97, i32 noundef 21) #5, !dbg !308
  store i64 %call62, ptr %v3, align 8, !dbg !308
  %98 = load i64, ptr %v0, align 8, !dbg !308
  %99 = load i64, ptr %v3, align 8, !dbg !308
  %xor63 = xor i64 %99, %98, !dbg !308
  store i64 %xor63, ptr %v3, align 8, !dbg !308
  %100 = load i64, ptr %v1, align 8, !dbg !308
  %101 = load i64, ptr %v2, align 8, !dbg !308
  %add64 = add i64 %101, %100, !dbg !308
  store i64 %add64, ptr %v2, align 8, !dbg !308
  %102 = load i64, ptr %v1, align 8, !dbg !308
  %call65 = call i64 @rol64(i64 noundef %102, i32 noundef 17) #5, !dbg !308
  store i64 %call65, ptr %v1, align 8, !dbg !308
  %103 = load i64, ptr %v2, align 8, !dbg !308
  %104 = load i64, ptr %v1, align 8, !dbg !308
  %xor66 = xor i64 %104, %103, !dbg !308
  store i64 %xor66, ptr %v1, align 8, !dbg !308
  %105 = load i64, ptr %v2, align 8, !dbg !308
  %call67 = call i64 @rol64(i64 noundef %105, i32 noundef 32) #5, !dbg !308
  store i64 %call67, ptr %v2, align 8, !dbg !308
  %106 = load i64, ptr %second.addr, align 8, !dbg !309
  %107 = load i64, ptr %v0, align 8, !dbg !310
  %xor68 = xor i64 %107, %106, !dbg !310
  store i64 %xor68, ptr %v0, align 8, !dbg !310
  %108 = load i64, ptr %third.addr, align 8, !dbg !311
  %109 = load i64, ptr %v3, align 8, !dbg !312
  %xor69 = xor i64 %109, %108, !dbg !312
  store i64 %xor69, ptr %v3, align 8, !dbg !312
  %110 = load i64, ptr %v1, align 8, !dbg !313
  %111 = load i64, ptr %v0, align 8, !dbg !313
  %add70 = add i64 %111, %110, !dbg !313
  store i64 %add70, ptr %v0, align 8, !dbg !313
  %112 = load i64, ptr %v1, align 8, !dbg !313
  %call71 = call i64 @rol64(i64 noundef %112, i32 noundef 13) #5, !dbg !313
  store i64 %call71, ptr %v1, align 8, !dbg !313
  %113 = load i64, ptr %v0, align 8, !dbg !313
  %114 = load i64, ptr %v1, align 8, !dbg !313
  %xor72 = xor i64 %114, %113, !dbg !313
  store i64 %xor72, ptr %v1, align 8, !dbg !313
  %115 = load i64, ptr %v0, align 8, !dbg !313
  %call73 = call i64 @rol64(i64 noundef %115, i32 noundef 32) #5, !dbg !313
  store i64 %call73, ptr %v0, align 8, !dbg !313
  %116 = load i64, ptr %v3, align 8, !dbg !313
  %117 = load i64, ptr %v2, align 8, !dbg !313
  %add74 = add i64 %117, %116, !dbg !313
  store i64 %add74, ptr %v2, align 8, !dbg !313
  %118 = load i64, ptr %v3, align 8, !dbg !313
  %call75 = call i64 @rol64(i64 noundef %118, i32 noundef 16) #5, !dbg !313
  store i64 %call75, ptr %v3, align 8, !dbg !313
  %119 = load i64, ptr %v2, align 8, !dbg !313
  %120 = load i64, ptr %v3, align 8, !dbg !313
  %xor76 = xor i64 %120, %119, !dbg !313
  store i64 %xor76, ptr %v3, align 8, !dbg !313
  %121 = load i64, ptr %v3, align 8, !dbg !313
  %122 = load i64, ptr %v0, align 8, !dbg !313
  %add77 = add i64 %122, %121, !dbg !313
  store i64 %add77, ptr %v0, align 8, !dbg !313
  %123 = load i64, ptr %v3, align 8, !dbg !313
  %call78 = call i64 @rol64(i64 noundef %123, i32 noundef 21) #5, !dbg !313
  store i64 %call78, ptr %v3, align 8, !dbg !313
  %124 = load i64, ptr %v0, align 8, !dbg !313
  %125 = load i64, ptr %v3, align 8, !dbg !313
  %xor79 = xor i64 %125, %124, !dbg !313
  store i64 %xor79, ptr %v3, align 8, !dbg !313
  %126 = load i64, ptr %v1, align 8, !dbg !313
  %127 = load i64, ptr %v2, align 8, !dbg !313
  %add80 = add i64 %127, %126, !dbg !313
  store i64 %add80, ptr %v2, align 8, !dbg !313
  %128 = load i64, ptr %v1, align 8, !dbg !313
  %call81 = call i64 @rol64(i64 noundef %128, i32 noundef 17) #5, !dbg !313
  store i64 %call81, ptr %v1, align 8, !dbg !313
  %129 = load i64, ptr %v2, align 8, !dbg !313
  %130 = load i64, ptr %v1, align 8, !dbg !313
  %xor82 = xor i64 %130, %129, !dbg !313
  store i64 %xor82, ptr %v1, align 8, !dbg !313
  %131 = load i64, ptr %v2, align 8, !dbg !313
  %call83 = call i64 @rol64(i64 noundef %131, i32 noundef 32) #5, !dbg !313
  store i64 %call83, ptr %v2, align 8, !dbg !313
  %132 = load i64, ptr %v1, align 8, !dbg !314
  %133 = load i64, ptr %v0, align 8, !dbg !314
  %add84 = add i64 %133, %132, !dbg !314
  store i64 %add84, ptr %v0, align 8, !dbg !314
  %134 = load i64, ptr %v1, align 8, !dbg !314
  %call85 = call i64 @rol64(i64 noundef %134, i32 noundef 13) #5, !dbg !314
  store i64 %call85, ptr %v1, align 8, !dbg !314
  %135 = load i64, ptr %v0, align 8, !dbg !314
  %136 = load i64, ptr %v1, align 8, !dbg !314
  %xor86 = xor i64 %136, %135, !dbg !314
  store i64 %xor86, ptr %v1, align 8, !dbg !314
  %137 = load i64, ptr %v0, align 8, !dbg !314
  %call87 = call i64 @rol64(i64 noundef %137, i32 noundef 32) #5, !dbg !314
  store i64 %call87, ptr %v0, align 8, !dbg !314
  %138 = load i64, ptr %v3, align 8, !dbg !314
  %139 = load i64, ptr %v2, align 8, !dbg !314
  %add88 = add i64 %139, %138, !dbg !314
  store i64 %add88, ptr %v2, align 8, !dbg !314
  %140 = load i64, ptr %v3, align 8, !dbg !314
  %call89 = call i64 @rol64(i64 noundef %140, i32 noundef 16) #5, !dbg !314
  store i64 %call89, ptr %v3, align 8, !dbg !314
  %141 = load i64, ptr %v2, align 8, !dbg !314
  %142 = load i64, ptr %v3, align 8, !dbg !314
  %xor90 = xor i64 %142, %141, !dbg !314
  store i64 %xor90, ptr %v3, align 8, !dbg !314
  %143 = load i64, ptr %v3, align 8, !dbg !314
  %144 = load i64, ptr %v0, align 8, !dbg !314
  %add91 = add i64 %144, %143, !dbg !314
  store i64 %add91, ptr %v0, align 8, !dbg !314
  %145 = load i64, ptr %v3, align 8, !dbg !314
  %call92 = call i64 @rol64(i64 noundef %145, i32 noundef 21) #5, !dbg !314
  store i64 %call92, ptr %v3, align 8, !dbg !314
  %146 = load i64, ptr %v0, align 8, !dbg !314
  %147 = load i64, ptr %v3, align 8, !dbg !314
  %xor93 = xor i64 %147, %146, !dbg !314
  store i64 %xor93, ptr %v3, align 8, !dbg !314
  %148 = load i64, ptr %v1, align 8, !dbg !314
  %149 = load i64, ptr %v2, align 8, !dbg !314
  %add94 = add i64 %149, %148, !dbg !314
  store i64 %add94, ptr %v2, align 8, !dbg !314
  %150 = load i64, ptr %v1, align 8, !dbg !314
  %call95 = call i64 @rol64(i64 noundef %150, i32 noundef 17) #5, !dbg !314
  store i64 %call95, ptr %v1, align 8, !dbg !314
  %151 = load i64, ptr %v2, align 8, !dbg !314
  %152 = load i64, ptr %v1, align 8, !dbg !314
  %xor96 = xor i64 %152, %151, !dbg !314
  store i64 %xor96, ptr %v1, align 8, !dbg !314
  %153 = load i64, ptr %v2, align 8, !dbg !314
  %call97 = call i64 @rol64(i64 noundef %153, i32 noundef 32) #5, !dbg !314
  store i64 %call97, ptr %v2, align 8, !dbg !314
  %154 = load i64, ptr %third.addr, align 8, !dbg !315
  %155 = load i64, ptr %v0, align 8, !dbg !316
  %xor98 = xor i64 %155, %154, !dbg !316
  store i64 %xor98, ptr %v0, align 8, !dbg !316
  %156 = load i64, ptr %forth.addr, align 8, !dbg !317
  %157 = load i64, ptr %v3, align 8, !dbg !318
  %xor99 = xor i64 %157, %156, !dbg !318
  store i64 %xor99, ptr %v3, align 8, !dbg !318
  %158 = load i64, ptr %v1, align 8, !dbg !319
  %159 = load i64, ptr %v0, align 8, !dbg !319
  %add100 = add i64 %159, %158, !dbg !319
  store i64 %add100, ptr %v0, align 8, !dbg !319
  %160 = load i64, ptr %v1, align 8, !dbg !319
  %call101 = call i64 @rol64(i64 noundef %160, i32 noundef 13) #5, !dbg !319
  store i64 %call101, ptr %v1, align 8, !dbg !319
  %161 = load i64, ptr %v0, align 8, !dbg !319
  %162 = load i64, ptr %v1, align 8, !dbg !319
  %xor102 = xor i64 %162, %161, !dbg !319
  store i64 %xor102, ptr %v1, align 8, !dbg !319
  %163 = load i64, ptr %v0, align 8, !dbg !319
  %call103 = call i64 @rol64(i64 noundef %163, i32 noundef 32) #5, !dbg !319
  store i64 %call103, ptr %v0, align 8, !dbg !319
  %164 = load i64, ptr %v3, align 8, !dbg !319
  %165 = load i64, ptr %v2, align 8, !dbg !319
  %add104 = add i64 %165, %164, !dbg !319
  store i64 %add104, ptr %v2, align 8, !dbg !319
  %166 = load i64, ptr %v3, align 8, !dbg !319
  %call105 = call i64 @rol64(i64 noundef %166, i32 noundef 16) #5, !dbg !319
  store i64 %call105, ptr %v3, align 8, !dbg !319
  %167 = load i64, ptr %v2, align 8, !dbg !319
  %168 = load i64, ptr %v3, align 8, !dbg !319
  %xor106 = xor i64 %168, %167, !dbg !319
  store i64 %xor106, ptr %v3, align 8, !dbg !319
  %169 = load i64, ptr %v3, align 8, !dbg !319
  %170 = load i64, ptr %v0, align 8, !dbg !319
  %add107 = add i64 %170, %169, !dbg !319
  store i64 %add107, ptr %v0, align 8, !dbg !319
  %171 = load i64, ptr %v3, align 8, !dbg !319
  %call108 = call i64 @rol64(i64 noundef %171, i32 noundef 21) #5, !dbg !319
  store i64 %call108, ptr %v3, align 8, !dbg !319
  %172 = load i64, ptr %v0, align 8, !dbg !319
  %173 = load i64, ptr %v3, align 8, !dbg !319
  %xor109 = xor i64 %173, %172, !dbg !319
  store i64 %xor109, ptr %v3, align 8, !dbg !319
  %174 = load i64, ptr %v1, align 8, !dbg !319
  %175 = load i64, ptr %v2, align 8, !dbg !319
  %add110 = add i64 %175, %174, !dbg !319
  store i64 %add110, ptr %v2, align 8, !dbg !319
  %176 = load i64, ptr %v1, align 8, !dbg !319
  %call111 = call i64 @rol64(i64 noundef %176, i32 noundef 17) #5, !dbg !319
  store i64 %call111, ptr %v1, align 8, !dbg !319
  %177 = load i64, ptr %v2, align 8, !dbg !319
  %178 = load i64, ptr %v1, align 8, !dbg !319
  %xor112 = xor i64 %178, %177, !dbg !319
  store i64 %xor112, ptr %v1, align 8, !dbg !319
  %179 = load i64, ptr %v2, align 8, !dbg !319
  %call113 = call i64 @rol64(i64 noundef %179, i32 noundef 32) #5, !dbg !319
  store i64 %call113, ptr %v2, align 8, !dbg !319
  %180 = load i64, ptr %v1, align 8, !dbg !320
  %181 = load i64, ptr %v0, align 8, !dbg !320
  %add114 = add i64 %181, %180, !dbg !320
  store i64 %add114, ptr %v0, align 8, !dbg !320
  %182 = load i64, ptr %v1, align 8, !dbg !320
  %call115 = call i64 @rol64(i64 noundef %182, i32 noundef 13) #5, !dbg !320
  store i64 %call115, ptr %v1, align 8, !dbg !320
  %183 = load i64, ptr %v0, align 8, !dbg !320
  %184 = load i64, ptr %v1, align 8, !dbg !320
  %xor116 = xor i64 %184, %183, !dbg !320
  store i64 %xor116, ptr %v1, align 8, !dbg !320
  %185 = load i64, ptr %v0, align 8, !dbg !320
  %call117 = call i64 @rol64(i64 noundef %185, i32 noundef 32) #5, !dbg !320
  store i64 %call117, ptr %v0, align 8, !dbg !320
  %186 = load i64, ptr %v3, align 8, !dbg !320
  %187 = load i64, ptr %v2, align 8, !dbg !320
  %add118 = add i64 %187, %186, !dbg !320
  store i64 %add118, ptr %v2, align 8, !dbg !320
  %188 = load i64, ptr %v3, align 8, !dbg !320
  %call119 = call i64 @rol64(i64 noundef %188, i32 noundef 16) #5, !dbg !320
  store i64 %call119, ptr %v3, align 8, !dbg !320
  %189 = load i64, ptr %v2, align 8, !dbg !320
  %190 = load i64, ptr %v3, align 8, !dbg !320
  %xor120 = xor i64 %190, %189, !dbg !320
  store i64 %xor120, ptr %v3, align 8, !dbg !320
  %191 = load i64, ptr %v3, align 8, !dbg !320
  %192 = load i64, ptr %v0, align 8, !dbg !320
  %add121 = add i64 %192, %191, !dbg !320
  store i64 %add121, ptr %v0, align 8, !dbg !320
  %193 = load i64, ptr %v3, align 8, !dbg !320
  %call122 = call i64 @rol64(i64 noundef %193, i32 noundef 21) #5, !dbg !320
  store i64 %call122, ptr %v3, align 8, !dbg !320
  %194 = load i64, ptr %v0, align 8, !dbg !320
  %195 = load i64, ptr %v3, align 8, !dbg !320
  %xor123 = xor i64 %195, %194, !dbg !320
  store i64 %xor123, ptr %v3, align 8, !dbg !320
  %196 = load i64, ptr %v1, align 8, !dbg !320
  %197 = load i64, ptr %v2, align 8, !dbg !320
  %add124 = add i64 %197, %196, !dbg !320
  store i64 %add124, ptr %v2, align 8, !dbg !320
  %198 = load i64, ptr %v1, align 8, !dbg !320
  %call125 = call i64 @rol64(i64 noundef %198, i32 noundef 17) #5, !dbg !320
  store i64 %call125, ptr %v1, align 8, !dbg !320
  %199 = load i64, ptr %v2, align 8, !dbg !320
  %200 = load i64, ptr %v1, align 8, !dbg !320
  %xor126 = xor i64 %200, %199, !dbg !320
  store i64 %xor126, ptr %v1, align 8, !dbg !320
  %201 = load i64, ptr %v2, align 8, !dbg !320
  %call127 = call i64 @rol64(i64 noundef %201, i32 noundef 32) #5, !dbg !320
  store i64 %call127, ptr %v2, align 8, !dbg !320
  %202 = load i64, ptr %forth.addr, align 8, !dbg !321
  %203 = load i64, ptr %v0, align 8, !dbg !322
  %xor128 = xor i64 %203, %202, !dbg !322
  store i64 %xor128, ptr %v0, align 8, !dbg !322
  %204 = load i64, ptr %b, align 8, !dbg !323
  %205 = load i64, ptr %v3, align 8, !dbg !323
  %xor129 = xor i64 %205, %204, !dbg !323
  store i64 %xor129, ptr %v3, align 8, !dbg !323
  %206 = load i64, ptr %v1, align 8, !dbg !323
  %207 = load i64, ptr %v0, align 8, !dbg !323
  %add130 = add i64 %207, %206, !dbg !323
  store i64 %add130, ptr %v0, align 8, !dbg !323
  %208 = load i64, ptr %v1, align 8, !dbg !323
  %call131 = call i64 @rol64(i64 noundef %208, i32 noundef 13) #5, !dbg !323
  store i64 %call131, ptr %v1, align 8, !dbg !323
  %209 = load i64, ptr %v0, align 8, !dbg !323
  %210 = load i64, ptr %v1, align 8, !dbg !323
  %xor132 = xor i64 %210, %209, !dbg !323
  store i64 %xor132, ptr %v1, align 8, !dbg !323
  %211 = load i64, ptr %v0, align 8, !dbg !323
  %call133 = call i64 @rol64(i64 noundef %211, i32 noundef 32) #5, !dbg !323
  store i64 %call133, ptr %v0, align 8, !dbg !323
  %212 = load i64, ptr %v3, align 8, !dbg !323
  %213 = load i64, ptr %v2, align 8, !dbg !323
  %add134 = add i64 %213, %212, !dbg !323
  store i64 %add134, ptr %v2, align 8, !dbg !323
  %214 = load i64, ptr %v3, align 8, !dbg !323
  %call135 = call i64 @rol64(i64 noundef %214, i32 noundef 16) #5, !dbg !323
  store i64 %call135, ptr %v3, align 8, !dbg !323
  %215 = load i64, ptr %v2, align 8, !dbg !323
  %216 = load i64, ptr %v3, align 8, !dbg !323
  %xor136 = xor i64 %216, %215, !dbg !323
  store i64 %xor136, ptr %v3, align 8, !dbg !323
  %217 = load i64, ptr %v3, align 8, !dbg !323
  %218 = load i64, ptr %v0, align 8, !dbg !323
  %add137 = add i64 %218, %217, !dbg !323
  store i64 %add137, ptr %v0, align 8, !dbg !323
  %219 = load i64, ptr %v3, align 8, !dbg !323
  %call138 = call i64 @rol64(i64 noundef %219, i32 noundef 21) #5, !dbg !323
  store i64 %call138, ptr %v3, align 8, !dbg !323
  %220 = load i64, ptr %v0, align 8, !dbg !323
  %221 = load i64, ptr %v3, align 8, !dbg !323
  %xor139 = xor i64 %221, %220, !dbg !323
  store i64 %xor139, ptr %v3, align 8, !dbg !323
  %222 = load i64, ptr %v1, align 8, !dbg !323
  %223 = load i64, ptr %v2, align 8, !dbg !323
  %add140 = add i64 %223, %222, !dbg !323
  store i64 %add140, ptr %v2, align 8, !dbg !323
  %224 = load i64, ptr %v1, align 8, !dbg !323
  %call141 = call i64 @rol64(i64 noundef %224, i32 noundef 17) #5, !dbg !323
  store i64 %call141, ptr %v1, align 8, !dbg !323
  %225 = load i64, ptr %v2, align 8, !dbg !323
  %226 = load i64, ptr %v1, align 8, !dbg !323
  %xor142 = xor i64 %226, %225, !dbg !323
  store i64 %xor142, ptr %v1, align 8, !dbg !323
  %227 = load i64, ptr %v2, align 8, !dbg !323
  %call143 = call i64 @rol64(i64 noundef %227, i32 noundef 32) #5, !dbg !323
  store i64 %call143, ptr %v2, align 8, !dbg !323
  %228 = load i64, ptr %v1, align 8, !dbg !323
  %229 = load i64, ptr %v0, align 8, !dbg !323
  %add144 = add i64 %229, %228, !dbg !323
  store i64 %add144, ptr %v0, align 8, !dbg !323
  %230 = load i64, ptr %v1, align 8, !dbg !323
  %call145 = call i64 @rol64(i64 noundef %230, i32 noundef 13) #5, !dbg !323
  store i64 %call145, ptr %v1, align 8, !dbg !323
  %231 = load i64, ptr %v0, align 8, !dbg !323
  %232 = load i64, ptr %v1, align 8, !dbg !323
  %xor146 = xor i64 %232, %231, !dbg !323
  store i64 %xor146, ptr %v1, align 8, !dbg !323
  %233 = load i64, ptr %v0, align 8, !dbg !323
  %call147 = call i64 @rol64(i64 noundef %233, i32 noundef 32) #5, !dbg !323
  store i64 %call147, ptr %v0, align 8, !dbg !323
  %234 = load i64, ptr %v3, align 8, !dbg !323
  %235 = load i64, ptr %v2, align 8, !dbg !323
  %add148 = add i64 %235, %234, !dbg !323
  store i64 %add148, ptr %v2, align 8, !dbg !323
  %236 = load i64, ptr %v3, align 8, !dbg !323
  %call149 = call i64 @rol64(i64 noundef %236, i32 noundef 16) #5, !dbg !323
  store i64 %call149, ptr %v3, align 8, !dbg !323
  %237 = load i64, ptr %v2, align 8, !dbg !323
  %238 = load i64, ptr %v3, align 8, !dbg !323
  %xor150 = xor i64 %238, %237, !dbg !323
  store i64 %xor150, ptr %v3, align 8, !dbg !323
  %239 = load i64, ptr %v3, align 8, !dbg !323
  %240 = load i64, ptr %v0, align 8, !dbg !323
  %add151 = add i64 %240, %239, !dbg !323
  store i64 %add151, ptr %v0, align 8, !dbg !323
  %241 = load i64, ptr %v3, align 8, !dbg !323
  %call152 = call i64 @rol64(i64 noundef %241, i32 noundef 21) #5, !dbg !323
  store i64 %call152, ptr %v3, align 8, !dbg !323
  %242 = load i64, ptr %v0, align 8, !dbg !323
  %243 = load i64, ptr %v3, align 8, !dbg !323
  %xor153 = xor i64 %243, %242, !dbg !323
  store i64 %xor153, ptr %v3, align 8, !dbg !323
  %244 = load i64, ptr %v1, align 8, !dbg !323
  %245 = load i64, ptr %v2, align 8, !dbg !323
  %add154 = add i64 %245, %244, !dbg !323
  store i64 %add154, ptr %v2, align 8, !dbg !323
  %246 = load i64, ptr %v1, align 8, !dbg !323
  %call155 = call i64 @rol64(i64 noundef %246, i32 noundef 17) #5, !dbg !323
  store i64 %call155, ptr %v1, align 8, !dbg !323
  %247 = load i64, ptr %v2, align 8, !dbg !323
  %248 = load i64, ptr %v1, align 8, !dbg !323
  %xor156 = xor i64 %248, %247, !dbg !323
  store i64 %xor156, ptr %v1, align 8, !dbg !323
  %249 = load i64, ptr %v2, align 8, !dbg !323
  %call157 = call i64 @rol64(i64 noundef %249, i32 noundef 32) #5, !dbg !323
  store i64 %call157, ptr %v2, align 8, !dbg !323
  %250 = load i64, ptr %b, align 8, !dbg !323
  %251 = load i64, ptr %v0, align 8, !dbg !323
  %xor158 = xor i64 %251, %250, !dbg !323
  store i64 %xor158, ptr %v0, align 8, !dbg !323
  %252 = load i64, ptr %v2, align 8, !dbg !323
  %xor159 = xor i64 %252, 255, !dbg !323
  store i64 %xor159, ptr %v2, align 8, !dbg !323
  %253 = load i64, ptr %v1, align 8, !dbg !323
  %254 = load i64, ptr %v0, align 8, !dbg !323
  %add160 = add i64 %254, %253, !dbg !323
  store i64 %add160, ptr %v0, align 8, !dbg !323
  %255 = load i64, ptr %v1, align 8, !dbg !323
  %call161 = call i64 @rol64(i64 noundef %255, i32 noundef 13) #5, !dbg !323
  store i64 %call161, ptr %v1, align 8, !dbg !323
  %256 = load i64, ptr %v0, align 8, !dbg !323
  %257 = load i64, ptr %v1, align 8, !dbg !323
  %xor162 = xor i64 %257, %256, !dbg !323
  store i64 %xor162, ptr %v1, align 8, !dbg !323
  %258 = load i64, ptr %v0, align 8, !dbg !323
  %call163 = call i64 @rol64(i64 noundef %258, i32 noundef 32) #5, !dbg !323
  store i64 %call163, ptr %v0, align 8, !dbg !323
  %259 = load i64, ptr %v3, align 8, !dbg !323
  %260 = load i64, ptr %v2, align 8, !dbg !323
  %add164 = add i64 %260, %259, !dbg !323
  store i64 %add164, ptr %v2, align 8, !dbg !323
  %261 = load i64, ptr %v3, align 8, !dbg !323
  %call165 = call i64 @rol64(i64 noundef %261, i32 noundef 16) #5, !dbg !323
  store i64 %call165, ptr %v3, align 8, !dbg !323
  %262 = load i64, ptr %v2, align 8, !dbg !323
  %263 = load i64, ptr %v3, align 8, !dbg !323
  %xor166 = xor i64 %263, %262, !dbg !323
  store i64 %xor166, ptr %v3, align 8, !dbg !323
  %264 = load i64, ptr %v3, align 8, !dbg !323
  %265 = load i64, ptr %v0, align 8, !dbg !323
  %add167 = add i64 %265, %264, !dbg !323
  store i64 %add167, ptr %v0, align 8, !dbg !323
  %266 = load i64, ptr %v3, align 8, !dbg !323
  %call168 = call i64 @rol64(i64 noundef %266, i32 noundef 21) #5, !dbg !323
  store i64 %call168, ptr %v3, align 8, !dbg !323
  %267 = load i64, ptr %v0, align 8, !dbg !323
  %268 = load i64, ptr %v3, align 8, !dbg !323
  %xor169 = xor i64 %268, %267, !dbg !323
  store i64 %xor169, ptr %v3, align 8, !dbg !323
  %269 = load i64, ptr %v1, align 8, !dbg !323
  %270 = load i64, ptr %v2, align 8, !dbg !323
  %add170 = add i64 %270, %269, !dbg !323
  store i64 %add170, ptr %v2, align 8, !dbg !323
  %271 = load i64, ptr %v1, align 8, !dbg !323
  %call171 = call i64 @rol64(i64 noundef %271, i32 noundef 17) #5, !dbg !323
  store i64 %call171, ptr %v1, align 8, !dbg !323
  %272 = load i64, ptr %v2, align 8, !dbg !323
  %273 = load i64, ptr %v1, align 8, !dbg !323
  %xor172 = xor i64 %273, %272, !dbg !323
  store i64 %xor172, ptr %v1, align 8, !dbg !323
  %274 = load i64, ptr %v2, align 8, !dbg !323
  %call173 = call i64 @rol64(i64 noundef %274, i32 noundef 32) #5, !dbg !323
  store i64 %call173, ptr %v2, align 8, !dbg !323
  %275 = load i64, ptr %v1, align 8, !dbg !323
  %276 = load i64, ptr %v0, align 8, !dbg !323
  %add174 = add i64 %276, %275, !dbg !323
  store i64 %add174, ptr %v0, align 8, !dbg !323
  %277 = load i64, ptr %v1, align 8, !dbg !323
  %call175 = call i64 @rol64(i64 noundef %277, i32 noundef 13) #5, !dbg !323
  store i64 %call175, ptr %v1, align 8, !dbg !323
  %278 = load i64, ptr %v0, align 8, !dbg !323
  %279 = load i64, ptr %v1, align 8, !dbg !323
  %xor176 = xor i64 %279, %278, !dbg !323
  store i64 %xor176, ptr %v1, align 8, !dbg !323
  %280 = load i64, ptr %v0, align 8, !dbg !323
  %call177 = call i64 @rol64(i64 noundef %280, i32 noundef 32) #5, !dbg !323
  store i64 %call177, ptr %v0, align 8, !dbg !323
  %281 = load i64, ptr %v3, align 8, !dbg !323
  %282 = load i64, ptr %v2, align 8, !dbg !323
  %add178 = add i64 %282, %281, !dbg !323
  store i64 %add178, ptr %v2, align 8, !dbg !323
  %283 = load i64, ptr %v3, align 8, !dbg !323
  %call179 = call i64 @rol64(i64 noundef %283, i32 noundef 16) #5, !dbg !323
  store i64 %call179, ptr %v3, align 8, !dbg !323
  %284 = load i64, ptr %v2, align 8, !dbg !323
  %285 = load i64, ptr %v3, align 8, !dbg !323
  %xor180 = xor i64 %285, %284, !dbg !323
  store i64 %xor180, ptr %v3, align 8, !dbg !323
  %286 = load i64, ptr %v3, align 8, !dbg !323
  %287 = load i64, ptr %v0, align 8, !dbg !323
  %add181 = add i64 %287, %286, !dbg !323
  store i64 %add181, ptr %v0, align 8, !dbg !323
  %288 = load i64, ptr %v3, align 8, !dbg !323
  %call182 = call i64 @rol64(i64 noundef %288, i32 noundef 21) #5, !dbg !323
  store i64 %call182, ptr %v3, align 8, !dbg !323
  %289 = load i64, ptr %v0, align 8, !dbg !323
  %290 = load i64, ptr %v3, align 8, !dbg !323
  %xor183 = xor i64 %290, %289, !dbg !323
  store i64 %xor183, ptr %v3, align 8, !dbg !323
  %291 = load i64, ptr %v1, align 8, !dbg !323
  %292 = load i64, ptr %v2, align 8, !dbg !323
  %add184 = add i64 %292, %291, !dbg !323
  store i64 %add184, ptr %v2, align 8, !dbg !323
  %293 = load i64, ptr %v1, align 8, !dbg !323
  %call185 = call i64 @rol64(i64 noundef %293, i32 noundef 17) #5, !dbg !323
  store i64 %call185, ptr %v1, align 8, !dbg !323
  %294 = load i64, ptr %v2, align 8, !dbg !323
  %295 = load i64, ptr %v1, align 8, !dbg !323
  %xor186 = xor i64 %295, %294, !dbg !323
  store i64 %xor186, ptr %v1, align 8, !dbg !323
  %296 = load i64, ptr %v2, align 8, !dbg !323
  %call187 = call i64 @rol64(i64 noundef %296, i32 noundef 32) #5, !dbg !323
  store i64 %call187, ptr %v2, align 8, !dbg !323
  %297 = load i64, ptr %v1, align 8, !dbg !323
  %298 = load i64, ptr %v0, align 8, !dbg !323
  %add188 = add i64 %298, %297, !dbg !323
  store i64 %add188, ptr %v0, align 8, !dbg !323
  %299 = load i64, ptr %v1, align 8, !dbg !323
  %call189 = call i64 @rol64(i64 noundef %299, i32 noundef 13) #5, !dbg !323
  store i64 %call189, ptr %v1, align 8, !dbg !323
  %300 = load i64, ptr %v0, align 8, !dbg !323
  %301 = load i64, ptr %v1, align 8, !dbg !323
  %xor190 = xor i64 %301, %300, !dbg !323
  store i64 %xor190, ptr %v1, align 8, !dbg !323
  %302 = load i64, ptr %v0, align 8, !dbg !323
  %call191 = call i64 @rol64(i64 noundef %302, i32 noundef 32) #5, !dbg !323
  store i64 %call191, ptr %v0, align 8, !dbg !323
  %303 = load i64, ptr %v3, align 8, !dbg !323
  %304 = load i64, ptr %v2, align 8, !dbg !323
  %add192 = add i64 %304, %303, !dbg !323
  store i64 %add192, ptr %v2, align 8, !dbg !323
  %305 = load i64, ptr %v3, align 8, !dbg !323
  %call193 = call i64 @rol64(i64 noundef %305, i32 noundef 16) #5, !dbg !323
  store i64 %call193, ptr %v3, align 8, !dbg !323
  %306 = load i64, ptr %v2, align 8, !dbg !323
  %307 = load i64, ptr %v3, align 8, !dbg !323
  %xor194 = xor i64 %307, %306, !dbg !323
  store i64 %xor194, ptr %v3, align 8, !dbg !323
  %308 = load i64, ptr %v3, align 8, !dbg !323
  %309 = load i64, ptr %v0, align 8, !dbg !323
  %add195 = add i64 %309, %308, !dbg !323
  store i64 %add195, ptr %v0, align 8, !dbg !323
  %310 = load i64, ptr %v3, align 8, !dbg !323
  %call196 = call i64 @rol64(i64 noundef %310, i32 noundef 21) #5, !dbg !323
  store i64 %call196, ptr %v3, align 8, !dbg !323
  %311 = load i64, ptr %v0, align 8, !dbg !323
  %312 = load i64, ptr %v3, align 8, !dbg !323
  %xor197 = xor i64 %312, %311, !dbg !323
  store i64 %xor197, ptr %v3, align 8, !dbg !323
  %313 = load i64, ptr %v1, align 8, !dbg !323
  %314 = load i64, ptr %v2, align 8, !dbg !323
  %add198 = add i64 %314, %313, !dbg !323
  store i64 %add198, ptr %v2, align 8, !dbg !323
  %315 = load i64, ptr %v1, align 8, !dbg !323
  %call199 = call i64 @rol64(i64 noundef %315, i32 noundef 17) #5, !dbg !323
  store i64 %call199, ptr %v1, align 8, !dbg !323
  %316 = load i64, ptr %v2, align 8, !dbg !323
  %317 = load i64, ptr %v1, align 8, !dbg !323
  %xor200 = xor i64 %317, %316, !dbg !323
  store i64 %xor200, ptr %v1, align 8, !dbg !323
  %318 = load i64, ptr %v2, align 8, !dbg !323
  %call201 = call i64 @rol64(i64 noundef %318, i32 noundef 32) #5, !dbg !323
  store i64 %call201, ptr %v2, align 8, !dbg !323
  %319 = load i64, ptr %v1, align 8, !dbg !323
  %320 = load i64, ptr %v0, align 8, !dbg !323
  %add202 = add i64 %320, %319, !dbg !323
  store i64 %add202, ptr %v0, align 8, !dbg !323
  %321 = load i64, ptr %v1, align 8, !dbg !323
  %call203 = call i64 @rol64(i64 noundef %321, i32 noundef 13) #5, !dbg !323
  store i64 %call203, ptr %v1, align 8, !dbg !323
  %322 = load i64, ptr %v0, align 8, !dbg !323
  %323 = load i64, ptr %v1, align 8, !dbg !323
  %xor204 = xor i64 %323, %322, !dbg !323
  store i64 %xor204, ptr %v1, align 8, !dbg !323
  %324 = load i64, ptr %v0, align 8, !dbg !323
  %call205 = call i64 @rol64(i64 noundef %324, i32 noundef 32) #5, !dbg !323
  store i64 %call205, ptr %v0, align 8, !dbg !323
  %325 = load i64, ptr %v3, align 8, !dbg !323
  %326 = load i64, ptr %v2, align 8, !dbg !323
  %add206 = add i64 %326, %325, !dbg !323
  store i64 %add206, ptr %v2, align 8, !dbg !323
  %327 = load i64, ptr %v3, align 8, !dbg !323
  %call207 = call i64 @rol64(i64 noundef %327, i32 noundef 16) #5, !dbg !323
  store i64 %call207, ptr %v3, align 8, !dbg !323
  %328 = load i64, ptr %v2, align 8, !dbg !323
  %329 = load i64, ptr %v3, align 8, !dbg !323
  %xor208 = xor i64 %329, %328, !dbg !323
  store i64 %xor208, ptr %v3, align 8, !dbg !323
  %330 = load i64, ptr %v3, align 8, !dbg !323
  %331 = load i64, ptr %v0, align 8, !dbg !323
  %add209 = add i64 %331, %330, !dbg !323
  store i64 %add209, ptr %v0, align 8, !dbg !323
  %332 = load i64, ptr %v3, align 8, !dbg !323
  %call210 = call i64 @rol64(i64 noundef %332, i32 noundef 21) #5, !dbg !323
  store i64 %call210, ptr %v3, align 8, !dbg !323
  %333 = load i64, ptr %v0, align 8, !dbg !323
  %334 = load i64, ptr %v3, align 8, !dbg !323
  %xor211 = xor i64 %334, %333, !dbg !323
  store i64 %xor211, ptr %v3, align 8, !dbg !323
  %335 = load i64, ptr %v1, align 8, !dbg !323
  %336 = load i64, ptr %v2, align 8, !dbg !323
  %add212 = add i64 %336, %335, !dbg !323
  store i64 %add212, ptr %v2, align 8, !dbg !323
  %337 = load i64, ptr %v1, align 8, !dbg !323
  %call213 = call i64 @rol64(i64 noundef %337, i32 noundef 17) #5, !dbg !323
  store i64 %call213, ptr %v1, align 8, !dbg !323
  %338 = load i64, ptr %v2, align 8, !dbg !323
  %339 = load i64, ptr %v1, align 8, !dbg !323
  %xor214 = xor i64 %339, %338, !dbg !323
  store i64 %xor214, ptr %v1, align 8, !dbg !323
  %340 = load i64, ptr %v2, align 8, !dbg !323
  %call215 = call i64 @rol64(i64 noundef %340, i32 noundef 32) #5, !dbg !323
  store i64 %call215, ptr %v2, align 8, !dbg !323
  %341 = load i64, ptr %v0, align 8, !dbg !323
  %342 = load i64, ptr %v1, align 8, !dbg !323
  %xor216 = xor i64 %341, %342, !dbg !323
  %343 = load i64, ptr %v2, align 8, !dbg !323
  %344 = load i64, ptr %v3, align 8, !dbg !323
  %xor217 = xor i64 %343, %344, !dbg !323
  %xor218 = xor i64 %xor216, %xor217, !dbg !323
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !324
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !324
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !324
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !324
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !324
  ret i64 %xor218, !dbg !323
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @siphash_1u32(i32 noundef %first, ptr noundef %key) #0 align 16 !dbg !325 {
entry:
  %first.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !332, metadata !DIExpression()), !dbg !339
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !333, metadata !DIExpression()), !dbg !340
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !334, metadata !DIExpression()), !dbg !341
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !335, metadata !DIExpression()), !dbg !341
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !336, metadata !DIExpression()), !dbg !341
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !337, metadata !DIExpression()), !dbg !341
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %b, metadata !338, metadata !DIExpression()), !dbg !341
  store i64 288230376151711744, ptr %b, align 8, !dbg !341
  %0 = load ptr, ptr %key.addr, align 8, !dbg !341
  %key1 = getelementptr inbounds %struct.siphash_key_t, ptr %0, i32 0, i32 0, !dbg !341
  %arrayidx = getelementptr [2 x i64], ptr %key1, i64 0, i64 1, !dbg !341
  %1 = load i64, ptr %arrayidx, align 8, !dbg !341
  %2 = load i64, ptr %v3, align 8, !dbg !341
  %xor = xor i64 %2, %1, !dbg !341
  store i64 %xor, ptr %v3, align 8, !dbg !341
  %3 = load ptr, ptr %key.addr, align 8, !dbg !341
  %key2 = getelementptr inbounds %struct.siphash_key_t, ptr %3, i32 0, i32 0, !dbg !341
  %arrayidx3 = getelementptr [2 x i64], ptr %key2, i64 0, i64 0, !dbg !341
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !341
  %5 = load i64, ptr %v2, align 8, !dbg !341
  %xor4 = xor i64 %5, %4, !dbg !341
  store i64 %xor4, ptr %v2, align 8, !dbg !341
  %6 = load ptr, ptr %key.addr, align 8, !dbg !341
  %key5 = getelementptr inbounds %struct.siphash_key_t, ptr %6, i32 0, i32 0, !dbg !341
  %arrayidx6 = getelementptr [2 x i64], ptr %key5, i64 0, i64 1, !dbg !341
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !341
  %8 = load i64, ptr %v1, align 8, !dbg !341
  %xor7 = xor i64 %8, %7, !dbg !341
  store i64 %xor7, ptr %v1, align 8, !dbg !341
  %9 = load ptr, ptr %key.addr, align 8, !dbg !341
  %key8 = getelementptr inbounds %struct.siphash_key_t, ptr %9, i32 0, i32 0, !dbg !341
  %arrayidx9 = getelementptr [2 x i64], ptr %key8, i64 0, i64 0, !dbg !341
  %10 = load i64, ptr %arrayidx9, align 8, !dbg !341
  %11 = load i64, ptr %v0, align 8, !dbg !341
  %xor10 = xor i64 %11, %10, !dbg !341
  store i64 %xor10, ptr %v0, align 8, !dbg !341
  %12 = load i32, ptr %first.addr, align 4, !dbg !342
  %conv = zext i32 %12 to i64, !dbg !342
  %13 = load i64, ptr %b, align 8, !dbg !343
  %or = or i64 %13, %conv, !dbg !343
  store i64 %or, ptr %b, align 8, !dbg !343
  %14 = load i64, ptr %b, align 8, !dbg !344
  %15 = load i64, ptr %v3, align 8, !dbg !344
  %xor11 = xor i64 %15, %14, !dbg !344
  store i64 %xor11, ptr %v3, align 8, !dbg !344
  %16 = load i64, ptr %v1, align 8, !dbg !344
  %17 = load i64, ptr %v0, align 8, !dbg !344
  %add = add i64 %17, %16, !dbg !344
  store i64 %add, ptr %v0, align 8, !dbg !344
  %18 = load i64, ptr %v1, align 8, !dbg !344
  %call = call i64 @rol64(i64 noundef %18, i32 noundef 13) #5, !dbg !344
  store i64 %call, ptr %v1, align 8, !dbg !344
  %19 = load i64, ptr %v0, align 8, !dbg !344
  %20 = load i64, ptr %v1, align 8, !dbg !344
  %xor12 = xor i64 %20, %19, !dbg !344
  store i64 %xor12, ptr %v1, align 8, !dbg !344
  %21 = load i64, ptr %v0, align 8, !dbg !344
  %call13 = call i64 @rol64(i64 noundef %21, i32 noundef 32) #5, !dbg !344
  store i64 %call13, ptr %v0, align 8, !dbg !344
  %22 = load i64, ptr %v3, align 8, !dbg !344
  %23 = load i64, ptr %v2, align 8, !dbg !344
  %add14 = add i64 %23, %22, !dbg !344
  store i64 %add14, ptr %v2, align 8, !dbg !344
  %24 = load i64, ptr %v3, align 8, !dbg !344
  %call15 = call i64 @rol64(i64 noundef %24, i32 noundef 16) #5, !dbg !344
  store i64 %call15, ptr %v3, align 8, !dbg !344
  %25 = load i64, ptr %v2, align 8, !dbg !344
  %26 = load i64, ptr %v3, align 8, !dbg !344
  %xor16 = xor i64 %26, %25, !dbg !344
  store i64 %xor16, ptr %v3, align 8, !dbg !344
  %27 = load i64, ptr %v3, align 8, !dbg !344
  %28 = load i64, ptr %v0, align 8, !dbg !344
  %add17 = add i64 %28, %27, !dbg !344
  store i64 %add17, ptr %v0, align 8, !dbg !344
  %29 = load i64, ptr %v3, align 8, !dbg !344
  %call18 = call i64 @rol64(i64 noundef %29, i32 noundef 21) #5, !dbg !344
  store i64 %call18, ptr %v3, align 8, !dbg !344
  %30 = load i64, ptr %v0, align 8, !dbg !344
  %31 = load i64, ptr %v3, align 8, !dbg !344
  %xor19 = xor i64 %31, %30, !dbg !344
  store i64 %xor19, ptr %v3, align 8, !dbg !344
  %32 = load i64, ptr %v1, align 8, !dbg !344
  %33 = load i64, ptr %v2, align 8, !dbg !344
  %add20 = add i64 %33, %32, !dbg !344
  store i64 %add20, ptr %v2, align 8, !dbg !344
  %34 = load i64, ptr %v1, align 8, !dbg !344
  %call21 = call i64 @rol64(i64 noundef %34, i32 noundef 17) #5, !dbg !344
  store i64 %call21, ptr %v1, align 8, !dbg !344
  %35 = load i64, ptr %v2, align 8, !dbg !344
  %36 = load i64, ptr %v1, align 8, !dbg !344
  %xor22 = xor i64 %36, %35, !dbg !344
  store i64 %xor22, ptr %v1, align 8, !dbg !344
  %37 = load i64, ptr %v2, align 8, !dbg !344
  %call23 = call i64 @rol64(i64 noundef %37, i32 noundef 32) #5, !dbg !344
  store i64 %call23, ptr %v2, align 8, !dbg !344
  %38 = load i64, ptr %v1, align 8, !dbg !344
  %39 = load i64, ptr %v0, align 8, !dbg !344
  %add24 = add i64 %39, %38, !dbg !344
  store i64 %add24, ptr %v0, align 8, !dbg !344
  %40 = load i64, ptr %v1, align 8, !dbg !344
  %call25 = call i64 @rol64(i64 noundef %40, i32 noundef 13) #5, !dbg !344
  store i64 %call25, ptr %v1, align 8, !dbg !344
  %41 = load i64, ptr %v0, align 8, !dbg !344
  %42 = load i64, ptr %v1, align 8, !dbg !344
  %xor26 = xor i64 %42, %41, !dbg !344
  store i64 %xor26, ptr %v1, align 8, !dbg !344
  %43 = load i64, ptr %v0, align 8, !dbg !344
  %call27 = call i64 @rol64(i64 noundef %43, i32 noundef 32) #5, !dbg !344
  store i64 %call27, ptr %v0, align 8, !dbg !344
  %44 = load i64, ptr %v3, align 8, !dbg !344
  %45 = load i64, ptr %v2, align 8, !dbg !344
  %add28 = add i64 %45, %44, !dbg !344
  store i64 %add28, ptr %v2, align 8, !dbg !344
  %46 = load i64, ptr %v3, align 8, !dbg !344
  %call29 = call i64 @rol64(i64 noundef %46, i32 noundef 16) #5, !dbg !344
  store i64 %call29, ptr %v3, align 8, !dbg !344
  %47 = load i64, ptr %v2, align 8, !dbg !344
  %48 = load i64, ptr %v3, align 8, !dbg !344
  %xor30 = xor i64 %48, %47, !dbg !344
  store i64 %xor30, ptr %v3, align 8, !dbg !344
  %49 = load i64, ptr %v3, align 8, !dbg !344
  %50 = load i64, ptr %v0, align 8, !dbg !344
  %add31 = add i64 %50, %49, !dbg !344
  store i64 %add31, ptr %v0, align 8, !dbg !344
  %51 = load i64, ptr %v3, align 8, !dbg !344
  %call32 = call i64 @rol64(i64 noundef %51, i32 noundef 21) #5, !dbg !344
  store i64 %call32, ptr %v3, align 8, !dbg !344
  %52 = load i64, ptr %v0, align 8, !dbg !344
  %53 = load i64, ptr %v3, align 8, !dbg !344
  %xor33 = xor i64 %53, %52, !dbg !344
  store i64 %xor33, ptr %v3, align 8, !dbg !344
  %54 = load i64, ptr %v1, align 8, !dbg !344
  %55 = load i64, ptr %v2, align 8, !dbg !344
  %add34 = add i64 %55, %54, !dbg !344
  store i64 %add34, ptr %v2, align 8, !dbg !344
  %56 = load i64, ptr %v1, align 8, !dbg !344
  %call35 = call i64 @rol64(i64 noundef %56, i32 noundef 17) #5, !dbg !344
  store i64 %call35, ptr %v1, align 8, !dbg !344
  %57 = load i64, ptr %v2, align 8, !dbg !344
  %58 = load i64, ptr %v1, align 8, !dbg !344
  %xor36 = xor i64 %58, %57, !dbg !344
  store i64 %xor36, ptr %v1, align 8, !dbg !344
  %59 = load i64, ptr %v2, align 8, !dbg !344
  %call37 = call i64 @rol64(i64 noundef %59, i32 noundef 32) #5, !dbg !344
  store i64 %call37, ptr %v2, align 8, !dbg !344
  %60 = load i64, ptr %b, align 8, !dbg !344
  %61 = load i64, ptr %v0, align 8, !dbg !344
  %xor38 = xor i64 %61, %60, !dbg !344
  store i64 %xor38, ptr %v0, align 8, !dbg !344
  %62 = load i64, ptr %v2, align 8, !dbg !344
  %xor39 = xor i64 %62, 255, !dbg !344
  store i64 %xor39, ptr %v2, align 8, !dbg !344
  %63 = load i64, ptr %v1, align 8, !dbg !344
  %64 = load i64, ptr %v0, align 8, !dbg !344
  %add40 = add i64 %64, %63, !dbg !344
  store i64 %add40, ptr %v0, align 8, !dbg !344
  %65 = load i64, ptr %v1, align 8, !dbg !344
  %call41 = call i64 @rol64(i64 noundef %65, i32 noundef 13) #5, !dbg !344
  store i64 %call41, ptr %v1, align 8, !dbg !344
  %66 = load i64, ptr %v0, align 8, !dbg !344
  %67 = load i64, ptr %v1, align 8, !dbg !344
  %xor42 = xor i64 %67, %66, !dbg !344
  store i64 %xor42, ptr %v1, align 8, !dbg !344
  %68 = load i64, ptr %v0, align 8, !dbg !344
  %call43 = call i64 @rol64(i64 noundef %68, i32 noundef 32) #5, !dbg !344
  store i64 %call43, ptr %v0, align 8, !dbg !344
  %69 = load i64, ptr %v3, align 8, !dbg !344
  %70 = load i64, ptr %v2, align 8, !dbg !344
  %add44 = add i64 %70, %69, !dbg !344
  store i64 %add44, ptr %v2, align 8, !dbg !344
  %71 = load i64, ptr %v3, align 8, !dbg !344
  %call45 = call i64 @rol64(i64 noundef %71, i32 noundef 16) #5, !dbg !344
  store i64 %call45, ptr %v3, align 8, !dbg !344
  %72 = load i64, ptr %v2, align 8, !dbg !344
  %73 = load i64, ptr %v3, align 8, !dbg !344
  %xor46 = xor i64 %73, %72, !dbg !344
  store i64 %xor46, ptr %v3, align 8, !dbg !344
  %74 = load i64, ptr %v3, align 8, !dbg !344
  %75 = load i64, ptr %v0, align 8, !dbg !344
  %add47 = add i64 %75, %74, !dbg !344
  store i64 %add47, ptr %v0, align 8, !dbg !344
  %76 = load i64, ptr %v3, align 8, !dbg !344
  %call48 = call i64 @rol64(i64 noundef %76, i32 noundef 21) #5, !dbg !344
  store i64 %call48, ptr %v3, align 8, !dbg !344
  %77 = load i64, ptr %v0, align 8, !dbg !344
  %78 = load i64, ptr %v3, align 8, !dbg !344
  %xor49 = xor i64 %78, %77, !dbg !344
  store i64 %xor49, ptr %v3, align 8, !dbg !344
  %79 = load i64, ptr %v1, align 8, !dbg !344
  %80 = load i64, ptr %v2, align 8, !dbg !344
  %add50 = add i64 %80, %79, !dbg !344
  store i64 %add50, ptr %v2, align 8, !dbg !344
  %81 = load i64, ptr %v1, align 8, !dbg !344
  %call51 = call i64 @rol64(i64 noundef %81, i32 noundef 17) #5, !dbg !344
  store i64 %call51, ptr %v1, align 8, !dbg !344
  %82 = load i64, ptr %v2, align 8, !dbg !344
  %83 = load i64, ptr %v1, align 8, !dbg !344
  %xor52 = xor i64 %83, %82, !dbg !344
  store i64 %xor52, ptr %v1, align 8, !dbg !344
  %84 = load i64, ptr %v2, align 8, !dbg !344
  %call53 = call i64 @rol64(i64 noundef %84, i32 noundef 32) #5, !dbg !344
  store i64 %call53, ptr %v2, align 8, !dbg !344
  %85 = load i64, ptr %v1, align 8, !dbg !344
  %86 = load i64, ptr %v0, align 8, !dbg !344
  %add54 = add i64 %86, %85, !dbg !344
  store i64 %add54, ptr %v0, align 8, !dbg !344
  %87 = load i64, ptr %v1, align 8, !dbg !344
  %call55 = call i64 @rol64(i64 noundef %87, i32 noundef 13) #5, !dbg !344
  store i64 %call55, ptr %v1, align 8, !dbg !344
  %88 = load i64, ptr %v0, align 8, !dbg !344
  %89 = load i64, ptr %v1, align 8, !dbg !344
  %xor56 = xor i64 %89, %88, !dbg !344
  store i64 %xor56, ptr %v1, align 8, !dbg !344
  %90 = load i64, ptr %v0, align 8, !dbg !344
  %call57 = call i64 @rol64(i64 noundef %90, i32 noundef 32) #5, !dbg !344
  store i64 %call57, ptr %v0, align 8, !dbg !344
  %91 = load i64, ptr %v3, align 8, !dbg !344
  %92 = load i64, ptr %v2, align 8, !dbg !344
  %add58 = add i64 %92, %91, !dbg !344
  store i64 %add58, ptr %v2, align 8, !dbg !344
  %93 = load i64, ptr %v3, align 8, !dbg !344
  %call59 = call i64 @rol64(i64 noundef %93, i32 noundef 16) #5, !dbg !344
  store i64 %call59, ptr %v3, align 8, !dbg !344
  %94 = load i64, ptr %v2, align 8, !dbg !344
  %95 = load i64, ptr %v3, align 8, !dbg !344
  %xor60 = xor i64 %95, %94, !dbg !344
  store i64 %xor60, ptr %v3, align 8, !dbg !344
  %96 = load i64, ptr %v3, align 8, !dbg !344
  %97 = load i64, ptr %v0, align 8, !dbg !344
  %add61 = add i64 %97, %96, !dbg !344
  store i64 %add61, ptr %v0, align 8, !dbg !344
  %98 = load i64, ptr %v3, align 8, !dbg !344
  %call62 = call i64 @rol64(i64 noundef %98, i32 noundef 21) #5, !dbg !344
  store i64 %call62, ptr %v3, align 8, !dbg !344
  %99 = load i64, ptr %v0, align 8, !dbg !344
  %100 = load i64, ptr %v3, align 8, !dbg !344
  %xor63 = xor i64 %100, %99, !dbg !344
  store i64 %xor63, ptr %v3, align 8, !dbg !344
  %101 = load i64, ptr %v1, align 8, !dbg !344
  %102 = load i64, ptr %v2, align 8, !dbg !344
  %add64 = add i64 %102, %101, !dbg !344
  store i64 %add64, ptr %v2, align 8, !dbg !344
  %103 = load i64, ptr %v1, align 8, !dbg !344
  %call65 = call i64 @rol64(i64 noundef %103, i32 noundef 17) #5, !dbg !344
  store i64 %call65, ptr %v1, align 8, !dbg !344
  %104 = load i64, ptr %v2, align 8, !dbg !344
  %105 = load i64, ptr %v1, align 8, !dbg !344
  %xor66 = xor i64 %105, %104, !dbg !344
  store i64 %xor66, ptr %v1, align 8, !dbg !344
  %106 = load i64, ptr %v2, align 8, !dbg !344
  %call67 = call i64 @rol64(i64 noundef %106, i32 noundef 32) #5, !dbg !344
  store i64 %call67, ptr %v2, align 8, !dbg !344
  %107 = load i64, ptr %v1, align 8, !dbg !344
  %108 = load i64, ptr %v0, align 8, !dbg !344
  %add68 = add i64 %108, %107, !dbg !344
  store i64 %add68, ptr %v0, align 8, !dbg !344
  %109 = load i64, ptr %v1, align 8, !dbg !344
  %call69 = call i64 @rol64(i64 noundef %109, i32 noundef 13) #5, !dbg !344
  store i64 %call69, ptr %v1, align 8, !dbg !344
  %110 = load i64, ptr %v0, align 8, !dbg !344
  %111 = load i64, ptr %v1, align 8, !dbg !344
  %xor70 = xor i64 %111, %110, !dbg !344
  store i64 %xor70, ptr %v1, align 8, !dbg !344
  %112 = load i64, ptr %v0, align 8, !dbg !344
  %call71 = call i64 @rol64(i64 noundef %112, i32 noundef 32) #5, !dbg !344
  store i64 %call71, ptr %v0, align 8, !dbg !344
  %113 = load i64, ptr %v3, align 8, !dbg !344
  %114 = load i64, ptr %v2, align 8, !dbg !344
  %add72 = add i64 %114, %113, !dbg !344
  store i64 %add72, ptr %v2, align 8, !dbg !344
  %115 = load i64, ptr %v3, align 8, !dbg !344
  %call73 = call i64 @rol64(i64 noundef %115, i32 noundef 16) #5, !dbg !344
  store i64 %call73, ptr %v3, align 8, !dbg !344
  %116 = load i64, ptr %v2, align 8, !dbg !344
  %117 = load i64, ptr %v3, align 8, !dbg !344
  %xor74 = xor i64 %117, %116, !dbg !344
  store i64 %xor74, ptr %v3, align 8, !dbg !344
  %118 = load i64, ptr %v3, align 8, !dbg !344
  %119 = load i64, ptr %v0, align 8, !dbg !344
  %add75 = add i64 %119, %118, !dbg !344
  store i64 %add75, ptr %v0, align 8, !dbg !344
  %120 = load i64, ptr %v3, align 8, !dbg !344
  %call76 = call i64 @rol64(i64 noundef %120, i32 noundef 21) #5, !dbg !344
  store i64 %call76, ptr %v3, align 8, !dbg !344
  %121 = load i64, ptr %v0, align 8, !dbg !344
  %122 = load i64, ptr %v3, align 8, !dbg !344
  %xor77 = xor i64 %122, %121, !dbg !344
  store i64 %xor77, ptr %v3, align 8, !dbg !344
  %123 = load i64, ptr %v1, align 8, !dbg !344
  %124 = load i64, ptr %v2, align 8, !dbg !344
  %add78 = add i64 %124, %123, !dbg !344
  store i64 %add78, ptr %v2, align 8, !dbg !344
  %125 = load i64, ptr %v1, align 8, !dbg !344
  %call79 = call i64 @rol64(i64 noundef %125, i32 noundef 17) #5, !dbg !344
  store i64 %call79, ptr %v1, align 8, !dbg !344
  %126 = load i64, ptr %v2, align 8, !dbg !344
  %127 = load i64, ptr %v1, align 8, !dbg !344
  %xor80 = xor i64 %127, %126, !dbg !344
  store i64 %xor80, ptr %v1, align 8, !dbg !344
  %128 = load i64, ptr %v2, align 8, !dbg !344
  %call81 = call i64 @rol64(i64 noundef %128, i32 noundef 32) #5, !dbg !344
  store i64 %call81, ptr %v2, align 8, !dbg !344
  %129 = load i64, ptr %v1, align 8, !dbg !344
  %130 = load i64, ptr %v0, align 8, !dbg !344
  %add82 = add i64 %130, %129, !dbg !344
  store i64 %add82, ptr %v0, align 8, !dbg !344
  %131 = load i64, ptr %v1, align 8, !dbg !344
  %call83 = call i64 @rol64(i64 noundef %131, i32 noundef 13) #5, !dbg !344
  store i64 %call83, ptr %v1, align 8, !dbg !344
  %132 = load i64, ptr %v0, align 8, !dbg !344
  %133 = load i64, ptr %v1, align 8, !dbg !344
  %xor84 = xor i64 %133, %132, !dbg !344
  store i64 %xor84, ptr %v1, align 8, !dbg !344
  %134 = load i64, ptr %v0, align 8, !dbg !344
  %call85 = call i64 @rol64(i64 noundef %134, i32 noundef 32) #5, !dbg !344
  store i64 %call85, ptr %v0, align 8, !dbg !344
  %135 = load i64, ptr %v3, align 8, !dbg !344
  %136 = load i64, ptr %v2, align 8, !dbg !344
  %add86 = add i64 %136, %135, !dbg !344
  store i64 %add86, ptr %v2, align 8, !dbg !344
  %137 = load i64, ptr %v3, align 8, !dbg !344
  %call87 = call i64 @rol64(i64 noundef %137, i32 noundef 16) #5, !dbg !344
  store i64 %call87, ptr %v3, align 8, !dbg !344
  %138 = load i64, ptr %v2, align 8, !dbg !344
  %139 = load i64, ptr %v3, align 8, !dbg !344
  %xor88 = xor i64 %139, %138, !dbg !344
  store i64 %xor88, ptr %v3, align 8, !dbg !344
  %140 = load i64, ptr %v3, align 8, !dbg !344
  %141 = load i64, ptr %v0, align 8, !dbg !344
  %add89 = add i64 %141, %140, !dbg !344
  store i64 %add89, ptr %v0, align 8, !dbg !344
  %142 = load i64, ptr %v3, align 8, !dbg !344
  %call90 = call i64 @rol64(i64 noundef %142, i32 noundef 21) #5, !dbg !344
  store i64 %call90, ptr %v3, align 8, !dbg !344
  %143 = load i64, ptr %v0, align 8, !dbg !344
  %144 = load i64, ptr %v3, align 8, !dbg !344
  %xor91 = xor i64 %144, %143, !dbg !344
  store i64 %xor91, ptr %v3, align 8, !dbg !344
  %145 = load i64, ptr %v1, align 8, !dbg !344
  %146 = load i64, ptr %v2, align 8, !dbg !344
  %add92 = add i64 %146, %145, !dbg !344
  store i64 %add92, ptr %v2, align 8, !dbg !344
  %147 = load i64, ptr %v1, align 8, !dbg !344
  %call93 = call i64 @rol64(i64 noundef %147, i32 noundef 17) #5, !dbg !344
  store i64 %call93, ptr %v1, align 8, !dbg !344
  %148 = load i64, ptr %v2, align 8, !dbg !344
  %149 = load i64, ptr %v1, align 8, !dbg !344
  %xor94 = xor i64 %149, %148, !dbg !344
  store i64 %xor94, ptr %v1, align 8, !dbg !344
  %150 = load i64, ptr %v2, align 8, !dbg !344
  %call95 = call i64 @rol64(i64 noundef %150, i32 noundef 32) #5, !dbg !344
  store i64 %call95, ptr %v2, align 8, !dbg !344
  %151 = load i64, ptr %v0, align 8, !dbg !344
  %152 = load i64, ptr %v1, align 8, !dbg !344
  %xor96 = xor i64 %151, %152, !dbg !344
  %153 = load i64, ptr %v2, align 8, !dbg !344
  %154 = load i64, ptr %v3, align 8, !dbg !344
  %xor97 = xor i64 %153, %154, !dbg !344
  %xor98 = xor i64 %xor96, %xor97, !dbg !344
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !345
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !345
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !345
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !345
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !345
  ret i64 %xor98, !dbg !344
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @siphash_3u32(i32 noundef %first, i32 noundef %second, i32 noundef %third, ptr noundef %key) #0 align 16 !dbg !346 {
entry:
  %first.addr = alloca i32, align 4
  %second.addr = alloca i32, align 4
  %third.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %combined = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !350, metadata !DIExpression()), !dbg !360
  store i32 %second, ptr %second.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !351, metadata !DIExpression()), !dbg !361
  store i32 %third, ptr %third.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !352, metadata !DIExpression()), !dbg !362
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !353, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined) #4, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %combined, metadata !354, metadata !DIExpression()), !dbg !365
  %0 = load i32, ptr %second.addr, align 4, !dbg !366
  %conv = zext i32 %0 to i64, !dbg !367
  %shl = shl i64 %conv, 32, !dbg !368
  %1 = load i32, ptr %first.addr, align 4, !dbg !369
  %conv1 = zext i32 %1 to i64, !dbg !369
  %or = or i64 %shl, %conv1, !dbg !370
  store i64 %or, ptr %combined, align 8, !dbg !365
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !355, metadata !DIExpression()), !dbg !371
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !371
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !356, metadata !DIExpression()), !dbg !371
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !371
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !357, metadata !DIExpression()), !dbg !371
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !371
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !358, metadata !DIExpression()), !dbg !371
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !371
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %b, metadata !359, metadata !DIExpression()), !dbg !371
  store i64 864691128455135232, ptr %b, align 8, !dbg !371
  %2 = load ptr, ptr %key.addr, align 8, !dbg !371
  %key2 = getelementptr inbounds %struct.siphash_key_t, ptr %2, i32 0, i32 0, !dbg !371
  %arrayidx = getelementptr [2 x i64], ptr %key2, i64 0, i64 1, !dbg !371
  %3 = load i64, ptr %arrayidx, align 8, !dbg !371
  %4 = load i64, ptr %v3, align 8, !dbg !371
  %xor = xor i64 %4, %3, !dbg !371
  store i64 %xor, ptr %v3, align 8, !dbg !371
  %5 = load ptr, ptr %key.addr, align 8, !dbg !371
  %key3 = getelementptr inbounds %struct.siphash_key_t, ptr %5, i32 0, i32 0, !dbg !371
  %arrayidx4 = getelementptr [2 x i64], ptr %key3, i64 0, i64 0, !dbg !371
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !371
  %7 = load i64, ptr %v2, align 8, !dbg !371
  %xor5 = xor i64 %7, %6, !dbg !371
  store i64 %xor5, ptr %v2, align 8, !dbg !371
  %8 = load ptr, ptr %key.addr, align 8, !dbg !371
  %key6 = getelementptr inbounds %struct.siphash_key_t, ptr %8, i32 0, i32 0, !dbg !371
  %arrayidx7 = getelementptr [2 x i64], ptr %key6, i64 0, i64 1, !dbg !371
  %9 = load i64, ptr %arrayidx7, align 8, !dbg !371
  %10 = load i64, ptr %v1, align 8, !dbg !371
  %xor8 = xor i64 %10, %9, !dbg !371
  store i64 %xor8, ptr %v1, align 8, !dbg !371
  %11 = load ptr, ptr %key.addr, align 8, !dbg !371
  %key9 = getelementptr inbounds %struct.siphash_key_t, ptr %11, i32 0, i32 0, !dbg !371
  %arrayidx10 = getelementptr [2 x i64], ptr %key9, i64 0, i64 0, !dbg !371
  %12 = load i64, ptr %arrayidx10, align 8, !dbg !371
  %13 = load i64, ptr %v0, align 8, !dbg !371
  %xor11 = xor i64 %13, %12, !dbg !371
  store i64 %xor11, ptr %v0, align 8, !dbg !371
  %14 = load i64, ptr %combined, align 8, !dbg !372
  %15 = load i64, ptr %v3, align 8, !dbg !373
  %xor12 = xor i64 %15, %14, !dbg !373
  store i64 %xor12, ptr %v3, align 8, !dbg !373
  %16 = load i64, ptr %v1, align 8, !dbg !374
  %17 = load i64, ptr %v0, align 8, !dbg !374
  %add = add i64 %17, %16, !dbg !374
  store i64 %add, ptr %v0, align 8, !dbg !374
  %18 = load i64, ptr %v1, align 8, !dbg !374
  %call = call i64 @rol64(i64 noundef %18, i32 noundef 13) #5, !dbg !374
  store i64 %call, ptr %v1, align 8, !dbg !374
  %19 = load i64, ptr %v0, align 8, !dbg !374
  %20 = load i64, ptr %v1, align 8, !dbg !374
  %xor13 = xor i64 %20, %19, !dbg !374
  store i64 %xor13, ptr %v1, align 8, !dbg !374
  %21 = load i64, ptr %v0, align 8, !dbg !374
  %call14 = call i64 @rol64(i64 noundef %21, i32 noundef 32) #5, !dbg !374
  store i64 %call14, ptr %v0, align 8, !dbg !374
  %22 = load i64, ptr %v3, align 8, !dbg !374
  %23 = load i64, ptr %v2, align 8, !dbg !374
  %add15 = add i64 %23, %22, !dbg !374
  store i64 %add15, ptr %v2, align 8, !dbg !374
  %24 = load i64, ptr %v3, align 8, !dbg !374
  %call16 = call i64 @rol64(i64 noundef %24, i32 noundef 16) #5, !dbg !374
  store i64 %call16, ptr %v3, align 8, !dbg !374
  %25 = load i64, ptr %v2, align 8, !dbg !374
  %26 = load i64, ptr %v3, align 8, !dbg !374
  %xor17 = xor i64 %26, %25, !dbg !374
  store i64 %xor17, ptr %v3, align 8, !dbg !374
  %27 = load i64, ptr %v3, align 8, !dbg !374
  %28 = load i64, ptr %v0, align 8, !dbg !374
  %add18 = add i64 %28, %27, !dbg !374
  store i64 %add18, ptr %v0, align 8, !dbg !374
  %29 = load i64, ptr %v3, align 8, !dbg !374
  %call19 = call i64 @rol64(i64 noundef %29, i32 noundef 21) #5, !dbg !374
  store i64 %call19, ptr %v3, align 8, !dbg !374
  %30 = load i64, ptr %v0, align 8, !dbg !374
  %31 = load i64, ptr %v3, align 8, !dbg !374
  %xor20 = xor i64 %31, %30, !dbg !374
  store i64 %xor20, ptr %v3, align 8, !dbg !374
  %32 = load i64, ptr %v1, align 8, !dbg !374
  %33 = load i64, ptr %v2, align 8, !dbg !374
  %add21 = add i64 %33, %32, !dbg !374
  store i64 %add21, ptr %v2, align 8, !dbg !374
  %34 = load i64, ptr %v1, align 8, !dbg !374
  %call22 = call i64 @rol64(i64 noundef %34, i32 noundef 17) #5, !dbg !374
  store i64 %call22, ptr %v1, align 8, !dbg !374
  %35 = load i64, ptr %v2, align 8, !dbg !374
  %36 = load i64, ptr %v1, align 8, !dbg !374
  %xor23 = xor i64 %36, %35, !dbg !374
  store i64 %xor23, ptr %v1, align 8, !dbg !374
  %37 = load i64, ptr %v2, align 8, !dbg !374
  %call24 = call i64 @rol64(i64 noundef %37, i32 noundef 32) #5, !dbg !374
  store i64 %call24, ptr %v2, align 8, !dbg !374
  %38 = load i64, ptr %v1, align 8, !dbg !375
  %39 = load i64, ptr %v0, align 8, !dbg !375
  %add25 = add i64 %39, %38, !dbg !375
  store i64 %add25, ptr %v0, align 8, !dbg !375
  %40 = load i64, ptr %v1, align 8, !dbg !375
  %call26 = call i64 @rol64(i64 noundef %40, i32 noundef 13) #5, !dbg !375
  store i64 %call26, ptr %v1, align 8, !dbg !375
  %41 = load i64, ptr %v0, align 8, !dbg !375
  %42 = load i64, ptr %v1, align 8, !dbg !375
  %xor27 = xor i64 %42, %41, !dbg !375
  store i64 %xor27, ptr %v1, align 8, !dbg !375
  %43 = load i64, ptr %v0, align 8, !dbg !375
  %call28 = call i64 @rol64(i64 noundef %43, i32 noundef 32) #5, !dbg !375
  store i64 %call28, ptr %v0, align 8, !dbg !375
  %44 = load i64, ptr %v3, align 8, !dbg !375
  %45 = load i64, ptr %v2, align 8, !dbg !375
  %add29 = add i64 %45, %44, !dbg !375
  store i64 %add29, ptr %v2, align 8, !dbg !375
  %46 = load i64, ptr %v3, align 8, !dbg !375
  %call30 = call i64 @rol64(i64 noundef %46, i32 noundef 16) #5, !dbg !375
  store i64 %call30, ptr %v3, align 8, !dbg !375
  %47 = load i64, ptr %v2, align 8, !dbg !375
  %48 = load i64, ptr %v3, align 8, !dbg !375
  %xor31 = xor i64 %48, %47, !dbg !375
  store i64 %xor31, ptr %v3, align 8, !dbg !375
  %49 = load i64, ptr %v3, align 8, !dbg !375
  %50 = load i64, ptr %v0, align 8, !dbg !375
  %add32 = add i64 %50, %49, !dbg !375
  store i64 %add32, ptr %v0, align 8, !dbg !375
  %51 = load i64, ptr %v3, align 8, !dbg !375
  %call33 = call i64 @rol64(i64 noundef %51, i32 noundef 21) #5, !dbg !375
  store i64 %call33, ptr %v3, align 8, !dbg !375
  %52 = load i64, ptr %v0, align 8, !dbg !375
  %53 = load i64, ptr %v3, align 8, !dbg !375
  %xor34 = xor i64 %53, %52, !dbg !375
  store i64 %xor34, ptr %v3, align 8, !dbg !375
  %54 = load i64, ptr %v1, align 8, !dbg !375
  %55 = load i64, ptr %v2, align 8, !dbg !375
  %add35 = add i64 %55, %54, !dbg !375
  store i64 %add35, ptr %v2, align 8, !dbg !375
  %56 = load i64, ptr %v1, align 8, !dbg !375
  %call36 = call i64 @rol64(i64 noundef %56, i32 noundef 17) #5, !dbg !375
  store i64 %call36, ptr %v1, align 8, !dbg !375
  %57 = load i64, ptr %v2, align 8, !dbg !375
  %58 = load i64, ptr %v1, align 8, !dbg !375
  %xor37 = xor i64 %58, %57, !dbg !375
  store i64 %xor37, ptr %v1, align 8, !dbg !375
  %59 = load i64, ptr %v2, align 8, !dbg !375
  %call38 = call i64 @rol64(i64 noundef %59, i32 noundef 32) #5, !dbg !375
  store i64 %call38, ptr %v2, align 8, !dbg !375
  %60 = load i64, ptr %combined, align 8, !dbg !376
  %61 = load i64, ptr %v0, align 8, !dbg !377
  %xor39 = xor i64 %61, %60, !dbg !377
  store i64 %xor39, ptr %v0, align 8, !dbg !377
  %62 = load i32, ptr %third.addr, align 4, !dbg !378
  %conv40 = zext i32 %62 to i64, !dbg !378
  %63 = load i64, ptr %b, align 8, !dbg !379
  %or41 = or i64 %63, %conv40, !dbg !379
  store i64 %or41, ptr %b, align 8, !dbg !379
  %64 = load i64, ptr %b, align 8, !dbg !380
  %65 = load i64, ptr %v3, align 8, !dbg !380
  %xor42 = xor i64 %65, %64, !dbg !380
  store i64 %xor42, ptr %v3, align 8, !dbg !380
  %66 = load i64, ptr %v1, align 8, !dbg !380
  %67 = load i64, ptr %v0, align 8, !dbg !380
  %add43 = add i64 %67, %66, !dbg !380
  store i64 %add43, ptr %v0, align 8, !dbg !380
  %68 = load i64, ptr %v1, align 8, !dbg !380
  %call44 = call i64 @rol64(i64 noundef %68, i32 noundef 13) #5, !dbg !380
  store i64 %call44, ptr %v1, align 8, !dbg !380
  %69 = load i64, ptr %v0, align 8, !dbg !380
  %70 = load i64, ptr %v1, align 8, !dbg !380
  %xor45 = xor i64 %70, %69, !dbg !380
  store i64 %xor45, ptr %v1, align 8, !dbg !380
  %71 = load i64, ptr %v0, align 8, !dbg !380
  %call46 = call i64 @rol64(i64 noundef %71, i32 noundef 32) #5, !dbg !380
  store i64 %call46, ptr %v0, align 8, !dbg !380
  %72 = load i64, ptr %v3, align 8, !dbg !380
  %73 = load i64, ptr %v2, align 8, !dbg !380
  %add47 = add i64 %73, %72, !dbg !380
  store i64 %add47, ptr %v2, align 8, !dbg !380
  %74 = load i64, ptr %v3, align 8, !dbg !380
  %call48 = call i64 @rol64(i64 noundef %74, i32 noundef 16) #5, !dbg !380
  store i64 %call48, ptr %v3, align 8, !dbg !380
  %75 = load i64, ptr %v2, align 8, !dbg !380
  %76 = load i64, ptr %v3, align 8, !dbg !380
  %xor49 = xor i64 %76, %75, !dbg !380
  store i64 %xor49, ptr %v3, align 8, !dbg !380
  %77 = load i64, ptr %v3, align 8, !dbg !380
  %78 = load i64, ptr %v0, align 8, !dbg !380
  %add50 = add i64 %78, %77, !dbg !380
  store i64 %add50, ptr %v0, align 8, !dbg !380
  %79 = load i64, ptr %v3, align 8, !dbg !380
  %call51 = call i64 @rol64(i64 noundef %79, i32 noundef 21) #5, !dbg !380
  store i64 %call51, ptr %v3, align 8, !dbg !380
  %80 = load i64, ptr %v0, align 8, !dbg !380
  %81 = load i64, ptr %v3, align 8, !dbg !380
  %xor52 = xor i64 %81, %80, !dbg !380
  store i64 %xor52, ptr %v3, align 8, !dbg !380
  %82 = load i64, ptr %v1, align 8, !dbg !380
  %83 = load i64, ptr %v2, align 8, !dbg !380
  %add53 = add i64 %83, %82, !dbg !380
  store i64 %add53, ptr %v2, align 8, !dbg !380
  %84 = load i64, ptr %v1, align 8, !dbg !380
  %call54 = call i64 @rol64(i64 noundef %84, i32 noundef 17) #5, !dbg !380
  store i64 %call54, ptr %v1, align 8, !dbg !380
  %85 = load i64, ptr %v2, align 8, !dbg !380
  %86 = load i64, ptr %v1, align 8, !dbg !380
  %xor55 = xor i64 %86, %85, !dbg !380
  store i64 %xor55, ptr %v1, align 8, !dbg !380
  %87 = load i64, ptr %v2, align 8, !dbg !380
  %call56 = call i64 @rol64(i64 noundef %87, i32 noundef 32) #5, !dbg !380
  store i64 %call56, ptr %v2, align 8, !dbg !380
  %88 = load i64, ptr %v1, align 8, !dbg !380
  %89 = load i64, ptr %v0, align 8, !dbg !380
  %add57 = add i64 %89, %88, !dbg !380
  store i64 %add57, ptr %v0, align 8, !dbg !380
  %90 = load i64, ptr %v1, align 8, !dbg !380
  %call58 = call i64 @rol64(i64 noundef %90, i32 noundef 13) #5, !dbg !380
  store i64 %call58, ptr %v1, align 8, !dbg !380
  %91 = load i64, ptr %v0, align 8, !dbg !380
  %92 = load i64, ptr %v1, align 8, !dbg !380
  %xor59 = xor i64 %92, %91, !dbg !380
  store i64 %xor59, ptr %v1, align 8, !dbg !380
  %93 = load i64, ptr %v0, align 8, !dbg !380
  %call60 = call i64 @rol64(i64 noundef %93, i32 noundef 32) #5, !dbg !380
  store i64 %call60, ptr %v0, align 8, !dbg !380
  %94 = load i64, ptr %v3, align 8, !dbg !380
  %95 = load i64, ptr %v2, align 8, !dbg !380
  %add61 = add i64 %95, %94, !dbg !380
  store i64 %add61, ptr %v2, align 8, !dbg !380
  %96 = load i64, ptr %v3, align 8, !dbg !380
  %call62 = call i64 @rol64(i64 noundef %96, i32 noundef 16) #5, !dbg !380
  store i64 %call62, ptr %v3, align 8, !dbg !380
  %97 = load i64, ptr %v2, align 8, !dbg !380
  %98 = load i64, ptr %v3, align 8, !dbg !380
  %xor63 = xor i64 %98, %97, !dbg !380
  store i64 %xor63, ptr %v3, align 8, !dbg !380
  %99 = load i64, ptr %v3, align 8, !dbg !380
  %100 = load i64, ptr %v0, align 8, !dbg !380
  %add64 = add i64 %100, %99, !dbg !380
  store i64 %add64, ptr %v0, align 8, !dbg !380
  %101 = load i64, ptr %v3, align 8, !dbg !380
  %call65 = call i64 @rol64(i64 noundef %101, i32 noundef 21) #5, !dbg !380
  store i64 %call65, ptr %v3, align 8, !dbg !380
  %102 = load i64, ptr %v0, align 8, !dbg !380
  %103 = load i64, ptr %v3, align 8, !dbg !380
  %xor66 = xor i64 %103, %102, !dbg !380
  store i64 %xor66, ptr %v3, align 8, !dbg !380
  %104 = load i64, ptr %v1, align 8, !dbg !380
  %105 = load i64, ptr %v2, align 8, !dbg !380
  %add67 = add i64 %105, %104, !dbg !380
  store i64 %add67, ptr %v2, align 8, !dbg !380
  %106 = load i64, ptr %v1, align 8, !dbg !380
  %call68 = call i64 @rol64(i64 noundef %106, i32 noundef 17) #5, !dbg !380
  store i64 %call68, ptr %v1, align 8, !dbg !380
  %107 = load i64, ptr %v2, align 8, !dbg !380
  %108 = load i64, ptr %v1, align 8, !dbg !380
  %xor69 = xor i64 %108, %107, !dbg !380
  store i64 %xor69, ptr %v1, align 8, !dbg !380
  %109 = load i64, ptr %v2, align 8, !dbg !380
  %call70 = call i64 @rol64(i64 noundef %109, i32 noundef 32) #5, !dbg !380
  store i64 %call70, ptr %v2, align 8, !dbg !380
  %110 = load i64, ptr %b, align 8, !dbg !380
  %111 = load i64, ptr %v0, align 8, !dbg !380
  %xor71 = xor i64 %111, %110, !dbg !380
  store i64 %xor71, ptr %v0, align 8, !dbg !380
  %112 = load i64, ptr %v2, align 8, !dbg !380
  %xor72 = xor i64 %112, 255, !dbg !380
  store i64 %xor72, ptr %v2, align 8, !dbg !380
  %113 = load i64, ptr %v1, align 8, !dbg !380
  %114 = load i64, ptr %v0, align 8, !dbg !380
  %add73 = add i64 %114, %113, !dbg !380
  store i64 %add73, ptr %v0, align 8, !dbg !380
  %115 = load i64, ptr %v1, align 8, !dbg !380
  %call74 = call i64 @rol64(i64 noundef %115, i32 noundef 13) #5, !dbg !380
  store i64 %call74, ptr %v1, align 8, !dbg !380
  %116 = load i64, ptr %v0, align 8, !dbg !380
  %117 = load i64, ptr %v1, align 8, !dbg !380
  %xor75 = xor i64 %117, %116, !dbg !380
  store i64 %xor75, ptr %v1, align 8, !dbg !380
  %118 = load i64, ptr %v0, align 8, !dbg !380
  %call76 = call i64 @rol64(i64 noundef %118, i32 noundef 32) #5, !dbg !380
  store i64 %call76, ptr %v0, align 8, !dbg !380
  %119 = load i64, ptr %v3, align 8, !dbg !380
  %120 = load i64, ptr %v2, align 8, !dbg !380
  %add77 = add i64 %120, %119, !dbg !380
  store i64 %add77, ptr %v2, align 8, !dbg !380
  %121 = load i64, ptr %v3, align 8, !dbg !380
  %call78 = call i64 @rol64(i64 noundef %121, i32 noundef 16) #5, !dbg !380
  store i64 %call78, ptr %v3, align 8, !dbg !380
  %122 = load i64, ptr %v2, align 8, !dbg !380
  %123 = load i64, ptr %v3, align 8, !dbg !380
  %xor79 = xor i64 %123, %122, !dbg !380
  store i64 %xor79, ptr %v3, align 8, !dbg !380
  %124 = load i64, ptr %v3, align 8, !dbg !380
  %125 = load i64, ptr %v0, align 8, !dbg !380
  %add80 = add i64 %125, %124, !dbg !380
  store i64 %add80, ptr %v0, align 8, !dbg !380
  %126 = load i64, ptr %v3, align 8, !dbg !380
  %call81 = call i64 @rol64(i64 noundef %126, i32 noundef 21) #5, !dbg !380
  store i64 %call81, ptr %v3, align 8, !dbg !380
  %127 = load i64, ptr %v0, align 8, !dbg !380
  %128 = load i64, ptr %v3, align 8, !dbg !380
  %xor82 = xor i64 %128, %127, !dbg !380
  store i64 %xor82, ptr %v3, align 8, !dbg !380
  %129 = load i64, ptr %v1, align 8, !dbg !380
  %130 = load i64, ptr %v2, align 8, !dbg !380
  %add83 = add i64 %130, %129, !dbg !380
  store i64 %add83, ptr %v2, align 8, !dbg !380
  %131 = load i64, ptr %v1, align 8, !dbg !380
  %call84 = call i64 @rol64(i64 noundef %131, i32 noundef 17) #5, !dbg !380
  store i64 %call84, ptr %v1, align 8, !dbg !380
  %132 = load i64, ptr %v2, align 8, !dbg !380
  %133 = load i64, ptr %v1, align 8, !dbg !380
  %xor85 = xor i64 %133, %132, !dbg !380
  store i64 %xor85, ptr %v1, align 8, !dbg !380
  %134 = load i64, ptr %v2, align 8, !dbg !380
  %call86 = call i64 @rol64(i64 noundef %134, i32 noundef 32) #5, !dbg !380
  store i64 %call86, ptr %v2, align 8, !dbg !380
  %135 = load i64, ptr %v1, align 8, !dbg !380
  %136 = load i64, ptr %v0, align 8, !dbg !380
  %add87 = add i64 %136, %135, !dbg !380
  store i64 %add87, ptr %v0, align 8, !dbg !380
  %137 = load i64, ptr %v1, align 8, !dbg !380
  %call88 = call i64 @rol64(i64 noundef %137, i32 noundef 13) #5, !dbg !380
  store i64 %call88, ptr %v1, align 8, !dbg !380
  %138 = load i64, ptr %v0, align 8, !dbg !380
  %139 = load i64, ptr %v1, align 8, !dbg !380
  %xor89 = xor i64 %139, %138, !dbg !380
  store i64 %xor89, ptr %v1, align 8, !dbg !380
  %140 = load i64, ptr %v0, align 8, !dbg !380
  %call90 = call i64 @rol64(i64 noundef %140, i32 noundef 32) #5, !dbg !380
  store i64 %call90, ptr %v0, align 8, !dbg !380
  %141 = load i64, ptr %v3, align 8, !dbg !380
  %142 = load i64, ptr %v2, align 8, !dbg !380
  %add91 = add i64 %142, %141, !dbg !380
  store i64 %add91, ptr %v2, align 8, !dbg !380
  %143 = load i64, ptr %v3, align 8, !dbg !380
  %call92 = call i64 @rol64(i64 noundef %143, i32 noundef 16) #5, !dbg !380
  store i64 %call92, ptr %v3, align 8, !dbg !380
  %144 = load i64, ptr %v2, align 8, !dbg !380
  %145 = load i64, ptr %v3, align 8, !dbg !380
  %xor93 = xor i64 %145, %144, !dbg !380
  store i64 %xor93, ptr %v3, align 8, !dbg !380
  %146 = load i64, ptr %v3, align 8, !dbg !380
  %147 = load i64, ptr %v0, align 8, !dbg !380
  %add94 = add i64 %147, %146, !dbg !380
  store i64 %add94, ptr %v0, align 8, !dbg !380
  %148 = load i64, ptr %v3, align 8, !dbg !380
  %call95 = call i64 @rol64(i64 noundef %148, i32 noundef 21) #5, !dbg !380
  store i64 %call95, ptr %v3, align 8, !dbg !380
  %149 = load i64, ptr %v0, align 8, !dbg !380
  %150 = load i64, ptr %v3, align 8, !dbg !380
  %xor96 = xor i64 %150, %149, !dbg !380
  store i64 %xor96, ptr %v3, align 8, !dbg !380
  %151 = load i64, ptr %v1, align 8, !dbg !380
  %152 = load i64, ptr %v2, align 8, !dbg !380
  %add97 = add i64 %152, %151, !dbg !380
  store i64 %add97, ptr %v2, align 8, !dbg !380
  %153 = load i64, ptr %v1, align 8, !dbg !380
  %call98 = call i64 @rol64(i64 noundef %153, i32 noundef 17) #5, !dbg !380
  store i64 %call98, ptr %v1, align 8, !dbg !380
  %154 = load i64, ptr %v2, align 8, !dbg !380
  %155 = load i64, ptr %v1, align 8, !dbg !380
  %xor99 = xor i64 %155, %154, !dbg !380
  store i64 %xor99, ptr %v1, align 8, !dbg !380
  %156 = load i64, ptr %v2, align 8, !dbg !380
  %call100 = call i64 @rol64(i64 noundef %156, i32 noundef 32) #5, !dbg !380
  store i64 %call100, ptr %v2, align 8, !dbg !380
  %157 = load i64, ptr %v1, align 8, !dbg !380
  %158 = load i64, ptr %v0, align 8, !dbg !380
  %add101 = add i64 %158, %157, !dbg !380
  store i64 %add101, ptr %v0, align 8, !dbg !380
  %159 = load i64, ptr %v1, align 8, !dbg !380
  %call102 = call i64 @rol64(i64 noundef %159, i32 noundef 13) #5, !dbg !380
  store i64 %call102, ptr %v1, align 8, !dbg !380
  %160 = load i64, ptr %v0, align 8, !dbg !380
  %161 = load i64, ptr %v1, align 8, !dbg !380
  %xor103 = xor i64 %161, %160, !dbg !380
  store i64 %xor103, ptr %v1, align 8, !dbg !380
  %162 = load i64, ptr %v0, align 8, !dbg !380
  %call104 = call i64 @rol64(i64 noundef %162, i32 noundef 32) #5, !dbg !380
  store i64 %call104, ptr %v0, align 8, !dbg !380
  %163 = load i64, ptr %v3, align 8, !dbg !380
  %164 = load i64, ptr %v2, align 8, !dbg !380
  %add105 = add i64 %164, %163, !dbg !380
  store i64 %add105, ptr %v2, align 8, !dbg !380
  %165 = load i64, ptr %v3, align 8, !dbg !380
  %call106 = call i64 @rol64(i64 noundef %165, i32 noundef 16) #5, !dbg !380
  store i64 %call106, ptr %v3, align 8, !dbg !380
  %166 = load i64, ptr %v2, align 8, !dbg !380
  %167 = load i64, ptr %v3, align 8, !dbg !380
  %xor107 = xor i64 %167, %166, !dbg !380
  store i64 %xor107, ptr %v3, align 8, !dbg !380
  %168 = load i64, ptr %v3, align 8, !dbg !380
  %169 = load i64, ptr %v0, align 8, !dbg !380
  %add108 = add i64 %169, %168, !dbg !380
  store i64 %add108, ptr %v0, align 8, !dbg !380
  %170 = load i64, ptr %v3, align 8, !dbg !380
  %call109 = call i64 @rol64(i64 noundef %170, i32 noundef 21) #5, !dbg !380
  store i64 %call109, ptr %v3, align 8, !dbg !380
  %171 = load i64, ptr %v0, align 8, !dbg !380
  %172 = load i64, ptr %v3, align 8, !dbg !380
  %xor110 = xor i64 %172, %171, !dbg !380
  store i64 %xor110, ptr %v3, align 8, !dbg !380
  %173 = load i64, ptr %v1, align 8, !dbg !380
  %174 = load i64, ptr %v2, align 8, !dbg !380
  %add111 = add i64 %174, %173, !dbg !380
  store i64 %add111, ptr %v2, align 8, !dbg !380
  %175 = load i64, ptr %v1, align 8, !dbg !380
  %call112 = call i64 @rol64(i64 noundef %175, i32 noundef 17) #5, !dbg !380
  store i64 %call112, ptr %v1, align 8, !dbg !380
  %176 = load i64, ptr %v2, align 8, !dbg !380
  %177 = load i64, ptr %v1, align 8, !dbg !380
  %xor113 = xor i64 %177, %176, !dbg !380
  store i64 %xor113, ptr %v1, align 8, !dbg !380
  %178 = load i64, ptr %v2, align 8, !dbg !380
  %call114 = call i64 @rol64(i64 noundef %178, i32 noundef 32) #5, !dbg !380
  store i64 %call114, ptr %v2, align 8, !dbg !380
  %179 = load i64, ptr %v1, align 8, !dbg !380
  %180 = load i64, ptr %v0, align 8, !dbg !380
  %add115 = add i64 %180, %179, !dbg !380
  store i64 %add115, ptr %v0, align 8, !dbg !380
  %181 = load i64, ptr %v1, align 8, !dbg !380
  %call116 = call i64 @rol64(i64 noundef %181, i32 noundef 13) #5, !dbg !380
  store i64 %call116, ptr %v1, align 8, !dbg !380
  %182 = load i64, ptr %v0, align 8, !dbg !380
  %183 = load i64, ptr %v1, align 8, !dbg !380
  %xor117 = xor i64 %183, %182, !dbg !380
  store i64 %xor117, ptr %v1, align 8, !dbg !380
  %184 = load i64, ptr %v0, align 8, !dbg !380
  %call118 = call i64 @rol64(i64 noundef %184, i32 noundef 32) #5, !dbg !380
  store i64 %call118, ptr %v0, align 8, !dbg !380
  %185 = load i64, ptr %v3, align 8, !dbg !380
  %186 = load i64, ptr %v2, align 8, !dbg !380
  %add119 = add i64 %186, %185, !dbg !380
  store i64 %add119, ptr %v2, align 8, !dbg !380
  %187 = load i64, ptr %v3, align 8, !dbg !380
  %call120 = call i64 @rol64(i64 noundef %187, i32 noundef 16) #5, !dbg !380
  store i64 %call120, ptr %v3, align 8, !dbg !380
  %188 = load i64, ptr %v2, align 8, !dbg !380
  %189 = load i64, ptr %v3, align 8, !dbg !380
  %xor121 = xor i64 %189, %188, !dbg !380
  store i64 %xor121, ptr %v3, align 8, !dbg !380
  %190 = load i64, ptr %v3, align 8, !dbg !380
  %191 = load i64, ptr %v0, align 8, !dbg !380
  %add122 = add i64 %191, %190, !dbg !380
  store i64 %add122, ptr %v0, align 8, !dbg !380
  %192 = load i64, ptr %v3, align 8, !dbg !380
  %call123 = call i64 @rol64(i64 noundef %192, i32 noundef 21) #5, !dbg !380
  store i64 %call123, ptr %v3, align 8, !dbg !380
  %193 = load i64, ptr %v0, align 8, !dbg !380
  %194 = load i64, ptr %v3, align 8, !dbg !380
  %xor124 = xor i64 %194, %193, !dbg !380
  store i64 %xor124, ptr %v3, align 8, !dbg !380
  %195 = load i64, ptr %v1, align 8, !dbg !380
  %196 = load i64, ptr %v2, align 8, !dbg !380
  %add125 = add i64 %196, %195, !dbg !380
  store i64 %add125, ptr %v2, align 8, !dbg !380
  %197 = load i64, ptr %v1, align 8, !dbg !380
  %call126 = call i64 @rol64(i64 noundef %197, i32 noundef 17) #5, !dbg !380
  store i64 %call126, ptr %v1, align 8, !dbg !380
  %198 = load i64, ptr %v2, align 8, !dbg !380
  %199 = load i64, ptr %v1, align 8, !dbg !380
  %xor127 = xor i64 %199, %198, !dbg !380
  store i64 %xor127, ptr %v1, align 8, !dbg !380
  %200 = load i64, ptr %v2, align 8, !dbg !380
  %call128 = call i64 @rol64(i64 noundef %200, i32 noundef 32) #5, !dbg !380
  store i64 %call128, ptr %v2, align 8, !dbg !380
  %201 = load i64, ptr %v0, align 8, !dbg !380
  %202 = load i64, ptr %v1, align 8, !dbg !380
  %xor129 = xor i64 %201, %202, !dbg !380
  %203 = load i64, ptr %v2, align 8, !dbg !380
  %204 = load i64, ptr %v3, align 8, !dbg !380
  %xor130 = xor i64 %203, %204, !dbg !380
  %xor131 = xor i64 %xor129, %xor130, !dbg !380
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined) #4, !dbg !381
  ret i64 %xor131, !dbg !380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__hsiphash_unaligned(ptr noundef %data, i64 noundef %len, ptr noundef %key) #0 align 16 !dbg !382 {
entry:
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %key.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %left = alloca i8, align 1
  %m = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !393, metadata !DIExpression()), !dbg !404
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !394, metadata !DIExpression()), !dbg !405
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !395, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %end, metadata !396, metadata !DIExpression()), !dbg !408
  %0 = load ptr, ptr %data.addr, align 8, !dbg !409
  %1 = load i64, ptr %len.addr, align 8, !dbg !410
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !411
  %2 = load i64, ptr %len.addr, align 8, !dbg !412
  %rem = urem i64 %2, 8, !dbg !413
  %idx.neg = sub i64 0, %rem, !dbg !414
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i64 %idx.neg, !dbg !414
  store ptr %add.ptr1, ptr %end, align 8, !dbg !408
  call void @llvm.lifetime.start.p0(i64 1, ptr %left) #4, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %left, metadata !397, metadata !DIExpression()), !dbg !416
  %3 = load i64, ptr %len.addr, align 8, !dbg !417
  %and = and i64 %3, 7, !dbg !418
  %conv = trunc i64 %and to i8, !dbg !417
  store i8 %conv, ptr %left, align 1, !dbg !416
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #4, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %m, metadata !398, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !399, metadata !DIExpression()), !dbg !421
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !421
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !400, metadata !DIExpression()), !dbg !421
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !421
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !401, metadata !DIExpression()), !dbg !421
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !421
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !402, metadata !DIExpression()), !dbg !421
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !421
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %b, metadata !403, metadata !DIExpression()), !dbg !421
  %4 = load i64, ptr %len.addr, align 8, !dbg !421
  %shl = shl i64 %4, 56, !dbg !421
  store i64 %shl, ptr %b, align 8, !dbg !421
  %5 = load ptr, ptr %key.addr, align 8, !dbg !421
  %key2 = getelementptr inbounds %struct.hsiphash_key_t, ptr %5, i32 0, i32 0, !dbg !421
  %arrayidx = getelementptr [2 x i64], ptr %key2, i64 0, i64 1, !dbg !421
  %6 = load i64, ptr %arrayidx, align 8, !dbg !421
  %7 = load i64, ptr %v3, align 8, !dbg !421
  %xor = xor i64 %7, %6, !dbg !421
  store i64 %xor, ptr %v3, align 8, !dbg !421
  %8 = load ptr, ptr %key.addr, align 8, !dbg !421
  %key3 = getelementptr inbounds %struct.hsiphash_key_t, ptr %8, i32 0, i32 0, !dbg !421
  %arrayidx4 = getelementptr [2 x i64], ptr %key3, i64 0, i64 0, !dbg !421
  %9 = load i64, ptr %arrayidx4, align 8, !dbg !421
  %10 = load i64, ptr %v2, align 8, !dbg !421
  %xor5 = xor i64 %10, %9, !dbg !421
  store i64 %xor5, ptr %v2, align 8, !dbg !421
  %11 = load ptr, ptr %key.addr, align 8, !dbg !421
  %key6 = getelementptr inbounds %struct.hsiphash_key_t, ptr %11, i32 0, i32 0, !dbg !421
  %arrayidx7 = getelementptr [2 x i64], ptr %key6, i64 0, i64 1, !dbg !421
  %12 = load i64, ptr %arrayidx7, align 8, !dbg !421
  %13 = load i64, ptr %v1, align 8, !dbg !421
  %xor8 = xor i64 %13, %12, !dbg !421
  store i64 %xor8, ptr %v1, align 8, !dbg !421
  %14 = load ptr, ptr %key.addr, align 8, !dbg !421
  %key9 = getelementptr inbounds %struct.hsiphash_key_t, ptr %14, i32 0, i32 0, !dbg !421
  %arrayidx10 = getelementptr [2 x i64], ptr %key9, i64 0, i64 0, !dbg !421
  %15 = load i64, ptr %arrayidx10, align 8, !dbg !421
  %16 = load i64, ptr %v0, align 8, !dbg !421
  %xor11 = xor i64 %16, %15, !dbg !421
  store i64 %xor11, ptr %v0, align 8, !dbg !421
  br label %for.cond, !dbg !422

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load ptr, ptr %data.addr, align 8, !dbg !423
  %18 = load ptr, ptr %end, align 8, !dbg !426
  %cmp = icmp ne ptr %17, %18, !dbg !427
  br i1 %cmp, label %for.body, label %for.end, !dbg !428

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %data.addr, align 8, !dbg !429
  %call = call i64 @get_unaligned_le64(ptr noundef %19) #5, !dbg !431
  store i64 %call, ptr %m, align 8, !dbg !432
  %20 = load i64, ptr %m, align 8, !dbg !433
  %21 = load i64, ptr %v3, align 8, !dbg !434
  %xor13 = xor i64 %21, %20, !dbg !434
  store i64 %xor13, ptr %v3, align 8, !dbg !434
  %22 = load i64, ptr %v1, align 8, !dbg !435
  %23 = load i64, ptr %v0, align 8, !dbg !435
  %add = add i64 %23, %22, !dbg !435
  store i64 %add, ptr %v0, align 8, !dbg !435
  %24 = load i64, ptr %v1, align 8, !dbg !435
  %call14 = call i64 @rol64(i64 noundef %24, i32 noundef 13) #5, !dbg !435
  store i64 %call14, ptr %v1, align 8, !dbg !435
  %25 = load i64, ptr %v0, align 8, !dbg !435
  %26 = load i64, ptr %v1, align 8, !dbg !435
  %xor15 = xor i64 %26, %25, !dbg !435
  store i64 %xor15, ptr %v1, align 8, !dbg !435
  %27 = load i64, ptr %v0, align 8, !dbg !435
  %call16 = call i64 @rol64(i64 noundef %27, i32 noundef 32) #5, !dbg !435
  store i64 %call16, ptr %v0, align 8, !dbg !435
  %28 = load i64, ptr %v3, align 8, !dbg !435
  %29 = load i64, ptr %v2, align 8, !dbg !435
  %add17 = add i64 %29, %28, !dbg !435
  store i64 %add17, ptr %v2, align 8, !dbg !435
  %30 = load i64, ptr %v3, align 8, !dbg !435
  %call18 = call i64 @rol64(i64 noundef %30, i32 noundef 16) #5, !dbg !435
  store i64 %call18, ptr %v3, align 8, !dbg !435
  %31 = load i64, ptr %v2, align 8, !dbg !435
  %32 = load i64, ptr %v3, align 8, !dbg !435
  %xor19 = xor i64 %32, %31, !dbg !435
  store i64 %xor19, ptr %v3, align 8, !dbg !435
  %33 = load i64, ptr %v3, align 8, !dbg !435
  %34 = load i64, ptr %v0, align 8, !dbg !435
  %add20 = add i64 %34, %33, !dbg !435
  store i64 %add20, ptr %v0, align 8, !dbg !435
  %35 = load i64, ptr %v3, align 8, !dbg !435
  %call21 = call i64 @rol64(i64 noundef %35, i32 noundef 21) #5, !dbg !435
  store i64 %call21, ptr %v3, align 8, !dbg !435
  %36 = load i64, ptr %v0, align 8, !dbg !435
  %37 = load i64, ptr %v3, align 8, !dbg !435
  %xor22 = xor i64 %37, %36, !dbg !435
  store i64 %xor22, ptr %v3, align 8, !dbg !435
  %38 = load i64, ptr %v1, align 8, !dbg !435
  %39 = load i64, ptr %v2, align 8, !dbg !435
  %add23 = add i64 %39, %38, !dbg !435
  store i64 %add23, ptr %v2, align 8, !dbg !435
  %40 = load i64, ptr %v1, align 8, !dbg !435
  %call24 = call i64 @rol64(i64 noundef %40, i32 noundef 17) #5, !dbg !435
  store i64 %call24, ptr %v1, align 8, !dbg !435
  %41 = load i64, ptr %v2, align 8, !dbg !435
  %42 = load i64, ptr %v1, align 8, !dbg !435
  %xor25 = xor i64 %42, %41, !dbg !435
  store i64 %xor25, ptr %v1, align 8, !dbg !435
  %43 = load i64, ptr %v2, align 8, !dbg !435
  %call26 = call i64 @rol64(i64 noundef %43, i32 noundef 32) #5, !dbg !435
  store i64 %call26, ptr %v2, align 8, !dbg !435
  %44 = load i64, ptr %m, align 8, !dbg !436
  %45 = load i64, ptr %v0, align 8, !dbg !437
  %xor27 = xor i64 %45, %44, !dbg !437
  store i64 %xor27, ptr %v0, align 8, !dbg !437
  br label %for.inc, !dbg !438

for.inc:                                          ; preds = %for.body
  %46 = load ptr, ptr %data.addr, align 8, !dbg !439
  %add.ptr28 = getelementptr i8, ptr %46, i64 8, !dbg !439
  store ptr %add.ptr28, ptr %data.addr, align 8, !dbg !439
  br label %for.cond, !dbg !440, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  %47 = load i8, ptr %left, align 1, !dbg !443
  %tobool = icmp ne i8 %47, 0, !dbg !443
  br i1 %tobool, label %if.then, label %if.end, !dbg !445

if.then:                                          ; preds = %for.end
  %48 = load ptr, ptr %data.addr, align 8, !dbg !446
  %call29 = call i64 @load_unaligned_zeropad(ptr noundef %48) #5, !dbg !446
  %49 = load i8, ptr %left, align 1, !dbg !446
  %conv30 = zext i8 %49 to i32, !dbg !446
  %mul = mul i32 %conv30, 8, !dbg !446
  %sh_prom = zext i32 %mul to i64, !dbg !446
  %shl31 = shl i64 -1, %sh_prom, !dbg !446
  %not = xor i64 %shl31, -1, !dbg !446
  %and32 = and i64 %call29, %not, !dbg !446
  %50 = load i64, ptr %b, align 8, !dbg !447
  %or = or i64 %50, %and32, !dbg !447
  store i64 %or, ptr %b, align 8, !dbg !447
  br label %if.end, !dbg !448

if.end:                                           ; preds = %if.then, %for.end
  %51 = load i64, ptr %b, align 8, !dbg !449
  %52 = load i64, ptr %v3, align 8, !dbg !449
  %xor33 = xor i64 %52, %51, !dbg !449
  store i64 %xor33, ptr %v3, align 8, !dbg !449
  %53 = load i64, ptr %v1, align 8, !dbg !449
  %54 = load i64, ptr %v0, align 8, !dbg !449
  %add34 = add i64 %54, %53, !dbg !449
  store i64 %add34, ptr %v0, align 8, !dbg !449
  %55 = load i64, ptr %v1, align 8, !dbg !449
  %call35 = call i64 @rol64(i64 noundef %55, i32 noundef 13) #5, !dbg !449
  store i64 %call35, ptr %v1, align 8, !dbg !449
  %56 = load i64, ptr %v0, align 8, !dbg !449
  %57 = load i64, ptr %v1, align 8, !dbg !449
  %xor36 = xor i64 %57, %56, !dbg !449
  store i64 %xor36, ptr %v1, align 8, !dbg !449
  %58 = load i64, ptr %v0, align 8, !dbg !449
  %call37 = call i64 @rol64(i64 noundef %58, i32 noundef 32) #5, !dbg !449
  store i64 %call37, ptr %v0, align 8, !dbg !449
  %59 = load i64, ptr %v3, align 8, !dbg !449
  %60 = load i64, ptr %v2, align 8, !dbg !449
  %add38 = add i64 %60, %59, !dbg !449
  store i64 %add38, ptr %v2, align 8, !dbg !449
  %61 = load i64, ptr %v3, align 8, !dbg !449
  %call39 = call i64 @rol64(i64 noundef %61, i32 noundef 16) #5, !dbg !449
  store i64 %call39, ptr %v3, align 8, !dbg !449
  %62 = load i64, ptr %v2, align 8, !dbg !449
  %63 = load i64, ptr %v3, align 8, !dbg !449
  %xor40 = xor i64 %63, %62, !dbg !449
  store i64 %xor40, ptr %v3, align 8, !dbg !449
  %64 = load i64, ptr %v3, align 8, !dbg !449
  %65 = load i64, ptr %v0, align 8, !dbg !449
  %add41 = add i64 %65, %64, !dbg !449
  store i64 %add41, ptr %v0, align 8, !dbg !449
  %66 = load i64, ptr %v3, align 8, !dbg !449
  %call42 = call i64 @rol64(i64 noundef %66, i32 noundef 21) #5, !dbg !449
  store i64 %call42, ptr %v3, align 8, !dbg !449
  %67 = load i64, ptr %v0, align 8, !dbg !449
  %68 = load i64, ptr %v3, align 8, !dbg !449
  %xor43 = xor i64 %68, %67, !dbg !449
  store i64 %xor43, ptr %v3, align 8, !dbg !449
  %69 = load i64, ptr %v1, align 8, !dbg !449
  %70 = load i64, ptr %v2, align 8, !dbg !449
  %add44 = add i64 %70, %69, !dbg !449
  store i64 %add44, ptr %v2, align 8, !dbg !449
  %71 = load i64, ptr %v1, align 8, !dbg !449
  %call45 = call i64 @rol64(i64 noundef %71, i32 noundef 17) #5, !dbg !449
  store i64 %call45, ptr %v1, align 8, !dbg !449
  %72 = load i64, ptr %v2, align 8, !dbg !449
  %73 = load i64, ptr %v1, align 8, !dbg !449
  %xor46 = xor i64 %73, %72, !dbg !449
  store i64 %xor46, ptr %v1, align 8, !dbg !449
  %74 = load i64, ptr %v2, align 8, !dbg !449
  %call47 = call i64 @rol64(i64 noundef %74, i32 noundef 32) #5, !dbg !449
  store i64 %call47, ptr %v2, align 8, !dbg !449
  %75 = load i64, ptr %b, align 8, !dbg !449
  %76 = load i64, ptr %v0, align 8, !dbg !449
  %xor48 = xor i64 %76, %75, !dbg !449
  store i64 %xor48, ptr %v0, align 8, !dbg !449
  %77 = load i64, ptr %v2, align 8, !dbg !449
  %xor49 = xor i64 %77, 255, !dbg !449
  store i64 %xor49, ptr %v2, align 8, !dbg !449
  %78 = load i64, ptr %v1, align 8, !dbg !449
  %79 = load i64, ptr %v0, align 8, !dbg !449
  %add50 = add i64 %79, %78, !dbg !449
  store i64 %add50, ptr %v0, align 8, !dbg !449
  %80 = load i64, ptr %v1, align 8, !dbg !449
  %call51 = call i64 @rol64(i64 noundef %80, i32 noundef 13) #5, !dbg !449
  store i64 %call51, ptr %v1, align 8, !dbg !449
  %81 = load i64, ptr %v0, align 8, !dbg !449
  %82 = load i64, ptr %v1, align 8, !dbg !449
  %xor52 = xor i64 %82, %81, !dbg !449
  store i64 %xor52, ptr %v1, align 8, !dbg !449
  %83 = load i64, ptr %v0, align 8, !dbg !449
  %call53 = call i64 @rol64(i64 noundef %83, i32 noundef 32) #5, !dbg !449
  store i64 %call53, ptr %v0, align 8, !dbg !449
  %84 = load i64, ptr %v3, align 8, !dbg !449
  %85 = load i64, ptr %v2, align 8, !dbg !449
  %add54 = add i64 %85, %84, !dbg !449
  store i64 %add54, ptr %v2, align 8, !dbg !449
  %86 = load i64, ptr %v3, align 8, !dbg !449
  %call55 = call i64 @rol64(i64 noundef %86, i32 noundef 16) #5, !dbg !449
  store i64 %call55, ptr %v3, align 8, !dbg !449
  %87 = load i64, ptr %v2, align 8, !dbg !449
  %88 = load i64, ptr %v3, align 8, !dbg !449
  %xor56 = xor i64 %88, %87, !dbg !449
  store i64 %xor56, ptr %v3, align 8, !dbg !449
  %89 = load i64, ptr %v3, align 8, !dbg !449
  %90 = load i64, ptr %v0, align 8, !dbg !449
  %add57 = add i64 %90, %89, !dbg !449
  store i64 %add57, ptr %v0, align 8, !dbg !449
  %91 = load i64, ptr %v3, align 8, !dbg !449
  %call58 = call i64 @rol64(i64 noundef %91, i32 noundef 21) #5, !dbg !449
  store i64 %call58, ptr %v3, align 8, !dbg !449
  %92 = load i64, ptr %v0, align 8, !dbg !449
  %93 = load i64, ptr %v3, align 8, !dbg !449
  %xor59 = xor i64 %93, %92, !dbg !449
  store i64 %xor59, ptr %v3, align 8, !dbg !449
  %94 = load i64, ptr %v1, align 8, !dbg !449
  %95 = load i64, ptr %v2, align 8, !dbg !449
  %add60 = add i64 %95, %94, !dbg !449
  store i64 %add60, ptr %v2, align 8, !dbg !449
  %96 = load i64, ptr %v1, align 8, !dbg !449
  %call61 = call i64 @rol64(i64 noundef %96, i32 noundef 17) #5, !dbg !449
  store i64 %call61, ptr %v1, align 8, !dbg !449
  %97 = load i64, ptr %v2, align 8, !dbg !449
  %98 = load i64, ptr %v1, align 8, !dbg !449
  %xor62 = xor i64 %98, %97, !dbg !449
  store i64 %xor62, ptr %v1, align 8, !dbg !449
  %99 = load i64, ptr %v2, align 8, !dbg !449
  %call63 = call i64 @rol64(i64 noundef %99, i32 noundef 32) #5, !dbg !449
  store i64 %call63, ptr %v2, align 8, !dbg !449
  %100 = load i64, ptr %v1, align 8, !dbg !449
  %101 = load i64, ptr %v0, align 8, !dbg !449
  %add64 = add i64 %101, %100, !dbg !449
  store i64 %add64, ptr %v0, align 8, !dbg !449
  %102 = load i64, ptr %v1, align 8, !dbg !449
  %call65 = call i64 @rol64(i64 noundef %102, i32 noundef 13) #5, !dbg !449
  store i64 %call65, ptr %v1, align 8, !dbg !449
  %103 = load i64, ptr %v0, align 8, !dbg !449
  %104 = load i64, ptr %v1, align 8, !dbg !449
  %xor66 = xor i64 %104, %103, !dbg !449
  store i64 %xor66, ptr %v1, align 8, !dbg !449
  %105 = load i64, ptr %v0, align 8, !dbg !449
  %call67 = call i64 @rol64(i64 noundef %105, i32 noundef 32) #5, !dbg !449
  store i64 %call67, ptr %v0, align 8, !dbg !449
  %106 = load i64, ptr %v3, align 8, !dbg !449
  %107 = load i64, ptr %v2, align 8, !dbg !449
  %add68 = add i64 %107, %106, !dbg !449
  store i64 %add68, ptr %v2, align 8, !dbg !449
  %108 = load i64, ptr %v3, align 8, !dbg !449
  %call69 = call i64 @rol64(i64 noundef %108, i32 noundef 16) #5, !dbg !449
  store i64 %call69, ptr %v3, align 8, !dbg !449
  %109 = load i64, ptr %v2, align 8, !dbg !449
  %110 = load i64, ptr %v3, align 8, !dbg !449
  %xor70 = xor i64 %110, %109, !dbg !449
  store i64 %xor70, ptr %v3, align 8, !dbg !449
  %111 = load i64, ptr %v3, align 8, !dbg !449
  %112 = load i64, ptr %v0, align 8, !dbg !449
  %add71 = add i64 %112, %111, !dbg !449
  store i64 %add71, ptr %v0, align 8, !dbg !449
  %113 = load i64, ptr %v3, align 8, !dbg !449
  %call72 = call i64 @rol64(i64 noundef %113, i32 noundef 21) #5, !dbg !449
  store i64 %call72, ptr %v3, align 8, !dbg !449
  %114 = load i64, ptr %v0, align 8, !dbg !449
  %115 = load i64, ptr %v3, align 8, !dbg !449
  %xor73 = xor i64 %115, %114, !dbg !449
  store i64 %xor73, ptr %v3, align 8, !dbg !449
  %116 = load i64, ptr %v1, align 8, !dbg !449
  %117 = load i64, ptr %v2, align 8, !dbg !449
  %add74 = add i64 %117, %116, !dbg !449
  store i64 %add74, ptr %v2, align 8, !dbg !449
  %118 = load i64, ptr %v1, align 8, !dbg !449
  %call75 = call i64 @rol64(i64 noundef %118, i32 noundef 17) #5, !dbg !449
  store i64 %call75, ptr %v1, align 8, !dbg !449
  %119 = load i64, ptr %v2, align 8, !dbg !449
  %120 = load i64, ptr %v1, align 8, !dbg !449
  %xor76 = xor i64 %120, %119, !dbg !449
  store i64 %xor76, ptr %v1, align 8, !dbg !449
  %121 = load i64, ptr %v2, align 8, !dbg !449
  %call77 = call i64 @rol64(i64 noundef %121, i32 noundef 32) #5, !dbg !449
  store i64 %call77, ptr %v2, align 8, !dbg !449
  %122 = load i64, ptr %v1, align 8, !dbg !449
  %123 = load i64, ptr %v0, align 8, !dbg !449
  %add78 = add i64 %123, %122, !dbg !449
  store i64 %add78, ptr %v0, align 8, !dbg !449
  %124 = load i64, ptr %v1, align 8, !dbg !449
  %call79 = call i64 @rol64(i64 noundef %124, i32 noundef 13) #5, !dbg !449
  store i64 %call79, ptr %v1, align 8, !dbg !449
  %125 = load i64, ptr %v0, align 8, !dbg !449
  %126 = load i64, ptr %v1, align 8, !dbg !449
  %xor80 = xor i64 %126, %125, !dbg !449
  store i64 %xor80, ptr %v1, align 8, !dbg !449
  %127 = load i64, ptr %v0, align 8, !dbg !449
  %call81 = call i64 @rol64(i64 noundef %127, i32 noundef 32) #5, !dbg !449
  store i64 %call81, ptr %v0, align 8, !dbg !449
  %128 = load i64, ptr %v3, align 8, !dbg !449
  %129 = load i64, ptr %v2, align 8, !dbg !449
  %add82 = add i64 %129, %128, !dbg !449
  store i64 %add82, ptr %v2, align 8, !dbg !449
  %130 = load i64, ptr %v3, align 8, !dbg !449
  %call83 = call i64 @rol64(i64 noundef %130, i32 noundef 16) #5, !dbg !449
  store i64 %call83, ptr %v3, align 8, !dbg !449
  %131 = load i64, ptr %v2, align 8, !dbg !449
  %132 = load i64, ptr %v3, align 8, !dbg !449
  %xor84 = xor i64 %132, %131, !dbg !449
  store i64 %xor84, ptr %v3, align 8, !dbg !449
  %133 = load i64, ptr %v3, align 8, !dbg !449
  %134 = load i64, ptr %v0, align 8, !dbg !449
  %add85 = add i64 %134, %133, !dbg !449
  store i64 %add85, ptr %v0, align 8, !dbg !449
  %135 = load i64, ptr %v3, align 8, !dbg !449
  %call86 = call i64 @rol64(i64 noundef %135, i32 noundef 21) #5, !dbg !449
  store i64 %call86, ptr %v3, align 8, !dbg !449
  %136 = load i64, ptr %v0, align 8, !dbg !449
  %137 = load i64, ptr %v3, align 8, !dbg !449
  %xor87 = xor i64 %137, %136, !dbg !449
  store i64 %xor87, ptr %v3, align 8, !dbg !449
  %138 = load i64, ptr %v1, align 8, !dbg !449
  %139 = load i64, ptr %v2, align 8, !dbg !449
  %add88 = add i64 %139, %138, !dbg !449
  store i64 %add88, ptr %v2, align 8, !dbg !449
  %140 = load i64, ptr %v1, align 8, !dbg !449
  %call89 = call i64 @rol64(i64 noundef %140, i32 noundef 17) #5, !dbg !449
  store i64 %call89, ptr %v1, align 8, !dbg !449
  %141 = load i64, ptr %v2, align 8, !dbg !449
  %142 = load i64, ptr %v1, align 8, !dbg !449
  %xor90 = xor i64 %142, %141, !dbg !449
  store i64 %xor90, ptr %v1, align 8, !dbg !449
  %143 = load i64, ptr %v2, align 8, !dbg !449
  %call91 = call i64 @rol64(i64 noundef %143, i32 noundef 32) #5, !dbg !449
  store i64 %call91, ptr %v2, align 8, !dbg !449
  %144 = load i64, ptr %v0, align 8, !dbg !449
  %145 = load i64, ptr %v1, align 8, !dbg !449
  %xor92 = xor i64 %144, %145, !dbg !449
  %146 = load i64, ptr %v2, align 8, !dbg !449
  %147 = load i64, ptr %v3, align 8, !dbg !449
  %xor93 = xor i64 %146, %147, !dbg !449
  %xor94 = xor i64 %xor92, %xor93, !dbg !449
  %conv95 = trunc i64 %xor94 to i32, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 1, ptr %left) #4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !450
  ret i32 %conv95, !dbg !449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsiphash_1u32(i32 noundef %first, ptr noundef %key) #0 align 16 !dbg !451 {
entry:
  %first.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !455, metadata !DIExpression()), !dbg !462
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !456, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !457, metadata !DIExpression()), !dbg !464
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !458, metadata !DIExpression()), !dbg !464
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !459, metadata !DIExpression()), !dbg !464
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !460, metadata !DIExpression()), !dbg !464
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !464
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %b, metadata !461, metadata !DIExpression()), !dbg !464
  store i64 288230376151711744, ptr %b, align 8, !dbg !464
  %0 = load ptr, ptr %key.addr, align 8, !dbg !464
  %key1 = getelementptr inbounds %struct.hsiphash_key_t, ptr %0, i32 0, i32 0, !dbg !464
  %arrayidx = getelementptr [2 x i64], ptr %key1, i64 0, i64 1, !dbg !464
  %1 = load i64, ptr %arrayidx, align 8, !dbg !464
  %2 = load i64, ptr %v3, align 8, !dbg !464
  %xor = xor i64 %2, %1, !dbg !464
  store i64 %xor, ptr %v3, align 8, !dbg !464
  %3 = load ptr, ptr %key.addr, align 8, !dbg !464
  %key2 = getelementptr inbounds %struct.hsiphash_key_t, ptr %3, i32 0, i32 0, !dbg !464
  %arrayidx3 = getelementptr [2 x i64], ptr %key2, i64 0, i64 0, !dbg !464
  %4 = load i64, ptr %arrayidx3, align 8, !dbg !464
  %5 = load i64, ptr %v2, align 8, !dbg !464
  %xor4 = xor i64 %5, %4, !dbg !464
  store i64 %xor4, ptr %v2, align 8, !dbg !464
  %6 = load ptr, ptr %key.addr, align 8, !dbg !464
  %key5 = getelementptr inbounds %struct.hsiphash_key_t, ptr %6, i32 0, i32 0, !dbg !464
  %arrayidx6 = getelementptr [2 x i64], ptr %key5, i64 0, i64 1, !dbg !464
  %7 = load i64, ptr %arrayidx6, align 8, !dbg !464
  %8 = load i64, ptr %v1, align 8, !dbg !464
  %xor7 = xor i64 %8, %7, !dbg !464
  store i64 %xor7, ptr %v1, align 8, !dbg !464
  %9 = load ptr, ptr %key.addr, align 8, !dbg !464
  %key8 = getelementptr inbounds %struct.hsiphash_key_t, ptr %9, i32 0, i32 0, !dbg !464
  %arrayidx9 = getelementptr [2 x i64], ptr %key8, i64 0, i64 0, !dbg !464
  %10 = load i64, ptr %arrayidx9, align 8, !dbg !464
  %11 = load i64, ptr %v0, align 8, !dbg !464
  %xor10 = xor i64 %11, %10, !dbg !464
  store i64 %xor10, ptr %v0, align 8, !dbg !464
  %12 = load i32, ptr %first.addr, align 4, !dbg !465
  %conv = zext i32 %12 to i64, !dbg !465
  %13 = load i64, ptr %b, align 8, !dbg !466
  %or = or i64 %13, %conv, !dbg !466
  store i64 %or, ptr %b, align 8, !dbg !466
  %14 = load i64, ptr %b, align 8, !dbg !467
  %15 = load i64, ptr %v3, align 8, !dbg !467
  %xor11 = xor i64 %15, %14, !dbg !467
  store i64 %xor11, ptr %v3, align 8, !dbg !467
  %16 = load i64, ptr %v1, align 8, !dbg !467
  %17 = load i64, ptr %v0, align 8, !dbg !467
  %add = add i64 %17, %16, !dbg !467
  store i64 %add, ptr %v0, align 8, !dbg !467
  %18 = load i64, ptr %v1, align 8, !dbg !467
  %call = call i64 @rol64(i64 noundef %18, i32 noundef 13) #5, !dbg !467
  store i64 %call, ptr %v1, align 8, !dbg !467
  %19 = load i64, ptr %v0, align 8, !dbg !467
  %20 = load i64, ptr %v1, align 8, !dbg !467
  %xor12 = xor i64 %20, %19, !dbg !467
  store i64 %xor12, ptr %v1, align 8, !dbg !467
  %21 = load i64, ptr %v0, align 8, !dbg !467
  %call13 = call i64 @rol64(i64 noundef %21, i32 noundef 32) #5, !dbg !467
  store i64 %call13, ptr %v0, align 8, !dbg !467
  %22 = load i64, ptr %v3, align 8, !dbg !467
  %23 = load i64, ptr %v2, align 8, !dbg !467
  %add14 = add i64 %23, %22, !dbg !467
  store i64 %add14, ptr %v2, align 8, !dbg !467
  %24 = load i64, ptr %v3, align 8, !dbg !467
  %call15 = call i64 @rol64(i64 noundef %24, i32 noundef 16) #5, !dbg !467
  store i64 %call15, ptr %v3, align 8, !dbg !467
  %25 = load i64, ptr %v2, align 8, !dbg !467
  %26 = load i64, ptr %v3, align 8, !dbg !467
  %xor16 = xor i64 %26, %25, !dbg !467
  store i64 %xor16, ptr %v3, align 8, !dbg !467
  %27 = load i64, ptr %v3, align 8, !dbg !467
  %28 = load i64, ptr %v0, align 8, !dbg !467
  %add17 = add i64 %28, %27, !dbg !467
  store i64 %add17, ptr %v0, align 8, !dbg !467
  %29 = load i64, ptr %v3, align 8, !dbg !467
  %call18 = call i64 @rol64(i64 noundef %29, i32 noundef 21) #5, !dbg !467
  store i64 %call18, ptr %v3, align 8, !dbg !467
  %30 = load i64, ptr %v0, align 8, !dbg !467
  %31 = load i64, ptr %v3, align 8, !dbg !467
  %xor19 = xor i64 %31, %30, !dbg !467
  store i64 %xor19, ptr %v3, align 8, !dbg !467
  %32 = load i64, ptr %v1, align 8, !dbg !467
  %33 = load i64, ptr %v2, align 8, !dbg !467
  %add20 = add i64 %33, %32, !dbg !467
  store i64 %add20, ptr %v2, align 8, !dbg !467
  %34 = load i64, ptr %v1, align 8, !dbg !467
  %call21 = call i64 @rol64(i64 noundef %34, i32 noundef 17) #5, !dbg !467
  store i64 %call21, ptr %v1, align 8, !dbg !467
  %35 = load i64, ptr %v2, align 8, !dbg !467
  %36 = load i64, ptr %v1, align 8, !dbg !467
  %xor22 = xor i64 %36, %35, !dbg !467
  store i64 %xor22, ptr %v1, align 8, !dbg !467
  %37 = load i64, ptr %v2, align 8, !dbg !467
  %call23 = call i64 @rol64(i64 noundef %37, i32 noundef 32) #5, !dbg !467
  store i64 %call23, ptr %v2, align 8, !dbg !467
  %38 = load i64, ptr %b, align 8, !dbg !467
  %39 = load i64, ptr %v0, align 8, !dbg !467
  %xor24 = xor i64 %39, %38, !dbg !467
  store i64 %xor24, ptr %v0, align 8, !dbg !467
  %40 = load i64, ptr %v2, align 8, !dbg !467
  %xor25 = xor i64 %40, 255, !dbg !467
  store i64 %xor25, ptr %v2, align 8, !dbg !467
  %41 = load i64, ptr %v1, align 8, !dbg !467
  %42 = load i64, ptr %v0, align 8, !dbg !467
  %add26 = add i64 %42, %41, !dbg !467
  store i64 %add26, ptr %v0, align 8, !dbg !467
  %43 = load i64, ptr %v1, align 8, !dbg !467
  %call27 = call i64 @rol64(i64 noundef %43, i32 noundef 13) #5, !dbg !467
  store i64 %call27, ptr %v1, align 8, !dbg !467
  %44 = load i64, ptr %v0, align 8, !dbg !467
  %45 = load i64, ptr %v1, align 8, !dbg !467
  %xor28 = xor i64 %45, %44, !dbg !467
  store i64 %xor28, ptr %v1, align 8, !dbg !467
  %46 = load i64, ptr %v0, align 8, !dbg !467
  %call29 = call i64 @rol64(i64 noundef %46, i32 noundef 32) #5, !dbg !467
  store i64 %call29, ptr %v0, align 8, !dbg !467
  %47 = load i64, ptr %v3, align 8, !dbg !467
  %48 = load i64, ptr %v2, align 8, !dbg !467
  %add30 = add i64 %48, %47, !dbg !467
  store i64 %add30, ptr %v2, align 8, !dbg !467
  %49 = load i64, ptr %v3, align 8, !dbg !467
  %call31 = call i64 @rol64(i64 noundef %49, i32 noundef 16) #5, !dbg !467
  store i64 %call31, ptr %v3, align 8, !dbg !467
  %50 = load i64, ptr %v2, align 8, !dbg !467
  %51 = load i64, ptr %v3, align 8, !dbg !467
  %xor32 = xor i64 %51, %50, !dbg !467
  store i64 %xor32, ptr %v3, align 8, !dbg !467
  %52 = load i64, ptr %v3, align 8, !dbg !467
  %53 = load i64, ptr %v0, align 8, !dbg !467
  %add33 = add i64 %53, %52, !dbg !467
  store i64 %add33, ptr %v0, align 8, !dbg !467
  %54 = load i64, ptr %v3, align 8, !dbg !467
  %call34 = call i64 @rol64(i64 noundef %54, i32 noundef 21) #5, !dbg !467
  store i64 %call34, ptr %v3, align 8, !dbg !467
  %55 = load i64, ptr %v0, align 8, !dbg !467
  %56 = load i64, ptr %v3, align 8, !dbg !467
  %xor35 = xor i64 %56, %55, !dbg !467
  store i64 %xor35, ptr %v3, align 8, !dbg !467
  %57 = load i64, ptr %v1, align 8, !dbg !467
  %58 = load i64, ptr %v2, align 8, !dbg !467
  %add36 = add i64 %58, %57, !dbg !467
  store i64 %add36, ptr %v2, align 8, !dbg !467
  %59 = load i64, ptr %v1, align 8, !dbg !467
  %call37 = call i64 @rol64(i64 noundef %59, i32 noundef 17) #5, !dbg !467
  store i64 %call37, ptr %v1, align 8, !dbg !467
  %60 = load i64, ptr %v2, align 8, !dbg !467
  %61 = load i64, ptr %v1, align 8, !dbg !467
  %xor38 = xor i64 %61, %60, !dbg !467
  store i64 %xor38, ptr %v1, align 8, !dbg !467
  %62 = load i64, ptr %v2, align 8, !dbg !467
  %call39 = call i64 @rol64(i64 noundef %62, i32 noundef 32) #5, !dbg !467
  store i64 %call39, ptr %v2, align 8, !dbg !467
  %63 = load i64, ptr %v1, align 8, !dbg !467
  %64 = load i64, ptr %v0, align 8, !dbg !467
  %add40 = add i64 %64, %63, !dbg !467
  store i64 %add40, ptr %v0, align 8, !dbg !467
  %65 = load i64, ptr %v1, align 8, !dbg !467
  %call41 = call i64 @rol64(i64 noundef %65, i32 noundef 13) #5, !dbg !467
  store i64 %call41, ptr %v1, align 8, !dbg !467
  %66 = load i64, ptr %v0, align 8, !dbg !467
  %67 = load i64, ptr %v1, align 8, !dbg !467
  %xor42 = xor i64 %67, %66, !dbg !467
  store i64 %xor42, ptr %v1, align 8, !dbg !467
  %68 = load i64, ptr %v0, align 8, !dbg !467
  %call43 = call i64 @rol64(i64 noundef %68, i32 noundef 32) #5, !dbg !467
  store i64 %call43, ptr %v0, align 8, !dbg !467
  %69 = load i64, ptr %v3, align 8, !dbg !467
  %70 = load i64, ptr %v2, align 8, !dbg !467
  %add44 = add i64 %70, %69, !dbg !467
  store i64 %add44, ptr %v2, align 8, !dbg !467
  %71 = load i64, ptr %v3, align 8, !dbg !467
  %call45 = call i64 @rol64(i64 noundef %71, i32 noundef 16) #5, !dbg !467
  store i64 %call45, ptr %v3, align 8, !dbg !467
  %72 = load i64, ptr %v2, align 8, !dbg !467
  %73 = load i64, ptr %v3, align 8, !dbg !467
  %xor46 = xor i64 %73, %72, !dbg !467
  store i64 %xor46, ptr %v3, align 8, !dbg !467
  %74 = load i64, ptr %v3, align 8, !dbg !467
  %75 = load i64, ptr %v0, align 8, !dbg !467
  %add47 = add i64 %75, %74, !dbg !467
  store i64 %add47, ptr %v0, align 8, !dbg !467
  %76 = load i64, ptr %v3, align 8, !dbg !467
  %call48 = call i64 @rol64(i64 noundef %76, i32 noundef 21) #5, !dbg !467
  store i64 %call48, ptr %v3, align 8, !dbg !467
  %77 = load i64, ptr %v0, align 8, !dbg !467
  %78 = load i64, ptr %v3, align 8, !dbg !467
  %xor49 = xor i64 %78, %77, !dbg !467
  store i64 %xor49, ptr %v3, align 8, !dbg !467
  %79 = load i64, ptr %v1, align 8, !dbg !467
  %80 = load i64, ptr %v2, align 8, !dbg !467
  %add50 = add i64 %80, %79, !dbg !467
  store i64 %add50, ptr %v2, align 8, !dbg !467
  %81 = load i64, ptr %v1, align 8, !dbg !467
  %call51 = call i64 @rol64(i64 noundef %81, i32 noundef 17) #5, !dbg !467
  store i64 %call51, ptr %v1, align 8, !dbg !467
  %82 = load i64, ptr %v2, align 8, !dbg !467
  %83 = load i64, ptr %v1, align 8, !dbg !467
  %xor52 = xor i64 %83, %82, !dbg !467
  store i64 %xor52, ptr %v1, align 8, !dbg !467
  %84 = load i64, ptr %v2, align 8, !dbg !467
  %call53 = call i64 @rol64(i64 noundef %84, i32 noundef 32) #5, !dbg !467
  store i64 %call53, ptr %v2, align 8, !dbg !467
  %85 = load i64, ptr %v1, align 8, !dbg !467
  %86 = load i64, ptr %v0, align 8, !dbg !467
  %add54 = add i64 %86, %85, !dbg !467
  store i64 %add54, ptr %v0, align 8, !dbg !467
  %87 = load i64, ptr %v1, align 8, !dbg !467
  %call55 = call i64 @rol64(i64 noundef %87, i32 noundef 13) #5, !dbg !467
  store i64 %call55, ptr %v1, align 8, !dbg !467
  %88 = load i64, ptr %v0, align 8, !dbg !467
  %89 = load i64, ptr %v1, align 8, !dbg !467
  %xor56 = xor i64 %89, %88, !dbg !467
  store i64 %xor56, ptr %v1, align 8, !dbg !467
  %90 = load i64, ptr %v0, align 8, !dbg !467
  %call57 = call i64 @rol64(i64 noundef %90, i32 noundef 32) #5, !dbg !467
  store i64 %call57, ptr %v0, align 8, !dbg !467
  %91 = load i64, ptr %v3, align 8, !dbg !467
  %92 = load i64, ptr %v2, align 8, !dbg !467
  %add58 = add i64 %92, %91, !dbg !467
  store i64 %add58, ptr %v2, align 8, !dbg !467
  %93 = load i64, ptr %v3, align 8, !dbg !467
  %call59 = call i64 @rol64(i64 noundef %93, i32 noundef 16) #5, !dbg !467
  store i64 %call59, ptr %v3, align 8, !dbg !467
  %94 = load i64, ptr %v2, align 8, !dbg !467
  %95 = load i64, ptr %v3, align 8, !dbg !467
  %xor60 = xor i64 %95, %94, !dbg !467
  store i64 %xor60, ptr %v3, align 8, !dbg !467
  %96 = load i64, ptr %v3, align 8, !dbg !467
  %97 = load i64, ptr %v0, align 8, !dbg !467
  %add61 = add i64 %97, %96, !dbg !467
  store i64 %add61, ptr %v0, align 8, !dbg !467
  %98 = load i64, ptr %v3, align 8, !dbg !467
  %call62 = call i64 @rol64(i64 noundef %98, i32 noundef 21) #5, !dbg !467
  store i64 %call62, ptr %v3, align 8, !dbg !467
  %99 = load i64, ptr %v0, align 8, !dbg !467
  %100 = load i64, ptr %v3, align 8, !dbg !467
  %xor63 = xor i64 %100, %99, !dbg !467
  store i64 %xor63, ptr %v3, align 8, !dbg !467
  %101 = load i64, ptr %v1, align 8, !dbg !467
  %102 = load i64, ptr %v2, align 8, !dbg !467
  %add64 = add i64 %102, %101, !dbg !467
  store i64 %add64, ptr %v2, align 8, !dbg !467
  %103 = load i64, ptr %v1, align 8, !dbg !467
  %call65 = call i64 @rol64(i64 noundef %103, i32 noundef 17) #5, !dbg !467
  store i64 %call65, ptr %v1, align 8, !dbg !467
  %104 = load i64, ptr %v2, align 8, !dbg !467
  %105 = load i64, ptr %v1, align 8, !dbg !467
  %xor66 = xor i64 %105, %104, !dbg !467
  store i64 %xor66, ptr %v1, align 8, !dbg !467
  %106 = load i64, ptr %v2, align 8, !dbg !467
  %call67 = call i64 @rol64(i64 noundef %106, i32 noundef 32) #5, !dbg !467
  store i64 %call67, ptr %v2, align 8, !dbg !467
  %107 = load i64, ptr %v0, align 8, !dbg !467
  %108 = load i64, ptr %v1, align 8, !dbg !467
  %xor68 = xor i64 %107, %108, !dbg !467
  %109 = load i64, ptr %v2, align 8, !dbg !467
  %110 = load i64, ptr %v3, align 8, !dbg !467
  %xor69 = xor i64 %109, %110, !dbg !467
  %xor70 = xor i64 %xor68, %xor69, !dbg !467
  %conv71 = trunc i64 %xor70 to i32, !dbg !467
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !468
  ret i32 %conv71, !dbg !467
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsiphash_2u32(i32 noundef %first, i32 noundef %second, ptr noundef %key) #0 align 16 !dbg !469 {
entry:
  %first.addr = alloca i32, align 4
  %second.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %combined = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !473, metadata !DIExpression()), !dbg !482
  store i32 %second, ptr %second.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !474, metadata !DIExpression()), !dbg !483
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !475, metadata !DIExpression()), !dbg !484
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined) #4, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %combined, metadata !476, metadata !DIExpression()), !dbg !486
  %0 = load i32, ptr %second.addr, align 4, !dbg !487
  %conv = zext i32 %0 to i64, !dbg !488
  %shl = shl i64 %conv, 32, !dbg !489
  %1 = load i32, ptr %first.addr, align 4, !dbg !490
  %conv1 = zext i32 %1 to i64, !dbg !490
  %or = or i64 %shl, %conv1, !dbg !491
  store i64 %or, ptr %combined, align 8, !dbg !486
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !477, metadata !DIExpression()), !dbg !492
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !478, metadata !DIExpression()), !dbg !492
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !479, metadata !DIExpression()), !dbg !492
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !480, metadata !DIExpression()), !dbg !492
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !492
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %b, metadata !481, metadata !DIExpression()), !dbg !492
  store i64 576460752303423488, ptr %b, align 8, !dbg !492
  %2 = load ptr, ptr %key.addr, align 8, !dbg !492
  %key2 = getelementptr inbounds %struct.hsiphash_key_t, ptr %2, i32 0, i32 0, !dbg !492
  %arrayidx = getelementptr [2 x i64], ptr %key2, i64 0, i64 1, !dbg !492
  %3 = load i64, ptr %arrayidx, align 8, !dbg !492
  %4 = load i64, ptr %v3, align 8, !dbg !492
  %xor = xor i64 %4, %3, !dbg !492
  store i64 %xor, ptr %v3, align 8, !dbg !492
  %5 = load ptr, ptr %key.addr, align 8, !dbg !492
  %key3 = getelementptr inbounds %struct.hsiphash_key_t, ptr %5, i32 0, i32 0, !dbg !492
  %arrayidx4 = getelementptr [2 x i64], ptr %key3, i64 0, i64 0, !dbg !492
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !492
  %7 = load i64, ptr %v2, align 8, !dbg !492
  %xor5 = xor i64 %7, %6, !dbg !492
  store i64 %xor5, ptr %v2, align 8, !dbg !492
  %8 = load ptr, ptr %key.addr, align 8, !dbg !492
  %key6 = getelementptr inbounds %struct.hsiphash_key_t, ptr %8, i32 0, i32 0, !dbg !492
  %arrayidx7 = getelementptr [2 x i64], ptr %key6, i64 0, i64 1, !dbg !492
  %9 = load i64, ptr %arrayidx7, align 8, !dbg !492
  %10 = load i64, ptr %v1, align 8, !dbg !492
  %xor8 = xor i64 %10, %9, !dbg !492
  store i64 %xor8, ptr %v1, align 8, !dbg !492
  %11 = load ptr, ptr %key.addr, align 8, !dbg !492
  %key9 = getelementptr inbounds %struct.hsiphash_key_t, ptr %11, i32 0, i32 0, !dbg !492
  %arrayidx10 = getelementptr [2 x i64], ptr %key9, i64 0, i64 0, !dbg !492
  %12 = load i64, ptr %arrayidx10, align 8, !dbg !492
  %13 = load i64, ptr %v0, align 8, !dbg !492
  %xor11 = xor i64 %13, %12, !dbg !492
  store i64 %xor11, ptr %v0, align 8, !dbg !492
  %14 = load i64, ptr %combined, align 8, !dbg !493
  %15 = load i64, ptr %v3, align 8, !dbg !494
  %xor12 = xor i64 %15, %14, !dbg !494
  store i64 %xor12, ptr %v3, align 8, !dbg !494
  %16 = load i64, ptr %v1, align 8, !dbg !495
  %17 = load i64, ptr %v0, align 8, !dbg !495
  %add = add i64 %17, %16, !dbg !495
  store i64 %add, ptr %v0, align 8, !dbg !495
  %18 = load i64, ptr %v1, align 8, !dbg !495
  %call = call i64 @rol64(i64 noundef %18, i32 noundef 13) #5, !dbg !495
  store i64 %call, ptr %v1, align 8, !dbg !495
  %19 = load i64, ptr %v0, align 8, !dbg !495
  %20 = load i64, ptr %v1, align 8, !dbg !495
  %xor13 = xor i64 %20, %19, !dbg !495
  store i64 %xor13, ptr %v1, align 8, !dbg !495
  %21 = load i64, ptr %v0, align 8, !dbg !495
  %call14 = call i64 @rol64(i64 noundef %21, i32 noundef 32) #5, !dbg !495
  store i64 %call14, ptr %v0, align 8, !dbg !495
  %22 = load i64, ptr %v3, align 8, !dbg !495
  %23 = load i64, ptr %v2, align 8, !dbg !495
  %add15 = add i64 %23, %22, !dbg !495
  store i64 %add15, ptr %v2, align 8, !dbg !495
  %24 = load i64, ptr %v3, align 8, !dbg !495
  %call16 = call i64 @rol64(i64 noundef %24, i32 noundef 16) #5, !dbg !495
  store i64 %call16, ptr %v3, align 8, !dbg !495
  %25 = load i64, ptr %v2, align 8, !dbg !495
  %26 = load i64, ptr %v3, align 8, !dbg !495
  %xor17 = xor i64 %26, %25, !dbg !495
  store i64 %xor17, ptr %v3, align 8, !dbg !495
  %27 = load i64, ptr %v3, align 8, !dbg !495
  %28 = load i64, ptr %v0, align 8, !dbg !495
  %add18 = add i64 %28, %27, !dbg !495
  store i64 %add18, ptr %v0, align 8, !dbg !495
  %29 = load i64, ptr %v3, align 8, !dbg !495
  %call19 = call i64 @rol64(i64 noundef %29, i32 noundef 21) #5, !dbg !495
  store i64 %call19, ptr %v3, align 8, !dbg !495
  %30 = load i64, ptr %v0, align 8, !dbg !495
  %31 = load i64, ptr %v3, align 8, !dbg !495
  %xor20 = xor i64 %31, %30, !dbg !495
  store i64 %xor20, ptr %v3, align 8, !dbg !495
  %32 = load i64, ptr %v1, align 8, !dbg !495
  %33 = load i64, ptr %v2, align 8, !dbg !495
  %add21 = add i64 %33, %32, !dbg !495
  store i64 %add21, ptr %v2, align 8, !dbg !495
  %34 = load i64, ptr %v1, align 8, !dbg !495
  %call22 = call i64 @rol64(i64 noundef %34, i32 noundef 17) #5, !dbg !495
  store i64 %call22, ptr %v1, align 8, !dbg !495
  %35 = load i64, ptr %v2, align 8, !dbg !495
  %36 = load i64, ptr %v1, align 8, !dbg !495
  %xor23 = xor i64 %36, %35, !dbg !495
  store i64 %xor23, ptr %v1, align 8, !dbg !495
  %37 = load i64, ptr %v2, align 8, !dbg !495
  %call24 = call i64 @rol64(i64 noundef %37, i32 noundef 32) #5, !dbg !495
  store i64 %call24, ptr %v2, align 8, !dbg !495
  %38 = load i64, ptr %combined, align 8, !dbg !496
  %39 = load i64, ptr %v0, align 8, !dbg !497
  %xor25 = xor i64 %39, %38, !dbg !497
  store i64 %xor25, ptr %v0, align 8, !dbg !497
  %40 = load i64, ptr %b, align 8, !dbg !498
  %41 = load i64, ptr %v3, align 8, !dbg !498
  %xor26 = xor i64 %41, %40, !dbg !498
  store i64 %xor26, ptr %v3, align 8, !dbg !498
  %42 = load i64, ptr %v1, align 8, !dbg !498
  %43 = load i64, ptr %v0, align 8, !dbg !498
  %add27 = add i64 %43, %42, !dbg !498
  store i64 %add27, ptr %v0, align 8, !dbg !498
  %44 = load i64, ptr %v1, align 8, !dbg !498
  %call28 = call i64 @rol64(i64 noundef %44, i32 noundef 13) #5, !dbg !498
  store i64 %call28, ptr %v1, align 8, !dbg !498
  %45 = load i64, ptr %v0, align 8, !dbg !498
  %46 = load i64, ptr %v1, align 8, !dbg !498
  %xor29 = xor i64 %46, %45, !dbg !498
  store i64 %xor29, ptr %v1, align 8, !dbg !498
  %47 = load i64, ptr %v0, align 8, !dbg !498
  %call30 = call i64 @rol64(i64 noundef %47, i32 noundef 32) #5, !dbg !498
  store i64 %call30, ptr %v0, align 8, !dbg !498
  %48 = load i64, ptr %v3, align 8, !dbg !498
  %49 = load i64, ptr %v2, align 8, !dbg !498
  %add31 = add i64 %49, %48, !dbg !498
  store i64 %add31, ptr %v2, align 8, !dbg !498
  %50 = load i64, ptr %v3, align 8, !dbg !498
  %call32 = call i64 @rol64(i64 noundef %50, i32 noundef 16) #5, !dbg !498
  store i64 %call32, ptr %v3, align 8, !dbg !498
  %51 = load i64, ptr %v2, align 8, !dbg !498
  %52 = load i64, ptr %v3, align 8, !dbg !498
  %xor33 = xor i64 %52, %51, !dbg !498
  store i64 %xor33, ptr %v3, align 8, !dbg !498
  %53 = load i64, ptr %v3, align 8, !dbg !498
  %54 = load i64, ptr %v0, align 8, !dbg !498
  %add34 = add i64 %54, %53, !dbg !498
  store i64 %add34, ptr %v0, align 8, !dbg !498
  %55 = load i64, ptr %v3, align 8, !dbg !498
  %call35 = call i64 @rol64(i64 noundef %55, i32 noundef 21) #5, !dbg !498
  store i64 %call35, ptr %v3, align 8, !dbg !498
  %56 = load i64, ptr %v0, align 8, !dbg !498
  %57 = load i64, ptr %v3, align 8, !dbg !498
  %xor36 = xor i64 %57, %56, !dbg !498
  store i64 %xor36, ptr %v3, align 8, !dbg !498
  %58 = load i64, ptr %v1, align 8, !dbg !498
  %59 = load i64, ptr %v2, align 8, !dbg !498
  %add37 = add i64 %59, %58, !dbg !498
  store i64 %add37, ptr %v2, align 8, !dbg !498
  %60 = load i64, ptr %v1, align 8, !dbg !498
  %call38 = call i64 @rol64(i64 noundef %60, i32 noundef 17) #5, !dbg !498
  store i64 %call38, ptr %v1, align 8, !dbg !498
  %61 = load i64, ptr %v2, align 8, !dbg !498
  %62 = load i64, ptr %v1, align 8, !dbg !498
  %xor39 = xor i64 %62, %61, !dbg !498
  store i64 %xor39, ptr %v1, align 8, !dbg !498
  %63 = load i64, ptr %v2, align 8, !dbg !498
  %call40 = call i64 @rol64(i64 noundef %63, i32 noundef 32) #5, !dbg !498
  store i64 %call40, ptr %v2, align 8, !dbg !498
  %64 = load i64, ptr %b, align 8, !dbg !498
  %65 = load i64, ptr %v0, align 8, !dbg !498
  %xor41 = xor i64 %65, %64, !dbg !498
  store i64 %xor41, ptr %v0, align 8, !dbg !498
  %66 = load i64, ptr %v2, align 8, !dbg !498
  %xor42 = xor i64 %66, 255, !dbg !498
  store i64 %xor42, ptr %v2, align 8, !dbg !498
  %67 = load i64, ptr %v1, align 8, !dbg !498
  %68 = load i64, ptr %v0, align 8, !dbg !498
  %add43 = add i64 %68, %67, !dbg !498
  store i64 %add43, ptr %v0, align 8, !dbg !498
  %69 = load i64, ptr %v1, align 8, !dbg !498
  %call44 = call i64 @rol64(i64 noundef %69, i32 noundef 13) #5, !dbg !498
  store i64 %call44, ptr %v1, align 8, !dbg !498
  %70 = load i64, ptr %v0, align 8, !dbg !498
  %71 = load i64, ptr %v1, align 8, !dbg !498
  %xor45 = xor i64 %71, %70, !dbg !498
  store i64 %xor45, ptr %v1, align 8, !dbg !498
  %72 = load i64, ptr %v0, align 8, !dbg !498
  %call46 = call i64 @rol64(i64 noundef %72, i32 noundef 32) #5, !dbg !498
  store i64 %call46, ptr %v0, align 8, !dbg !498
  %73 = load i64, ptr %v3, align 8, !dbg !498
  %74 = load i64, ptr %v2, align 8, !dbg !498
  %add47 = add i64 %74, %73, !dbg !498
  store i64 %add47, ptr %v2, align 8, !dbg !498
  %75 = load i64, ptr %v3, align 8, !dbg !498
  %call48 = call i64 @rol64(i64 noundef %75, i32 noundef 16) #5, !dbg !498
  store i64 %call48, ptr %v3, align 8, !dbg !498
  %76 = load i64, ptr %v2, align 8, !dbg !498
  %77 = load i64, ptr %v3, align 8, !dbg !498
  %xor49 = xor i64 %77, %76, !dbg !498
  store i64 %xor49, ptr %v3, align 8, !dbg !498
  %78 = load i64, ptr %v3, align 8, !dbg !498
  %79 = load i64, ptr %v0, align 8, !dbg !498
  %add50 = add i64 %79, %78, !dbg !498
  store i64 %add50, ptr %v0, align 8, !dbg !498
  %80 = load i64, ptr %v3, align 8, !dbg !498
  %call51 = call i64 @rol64(i64 noundef %80, i32 noundef 21) #5, !dbg !498
  store i64 %call51, ptr %v3, align 8, !dbg !498
  %81 = load i64, ptr %v0, align 8, !dbg !498
  %82 = load i64, ptr %v3, align 8, !dbg !498
  %xor52 = xor i64 %82, %81, !dbg !498
  store i64 %xor52, ptr %v3, align 8, !dbg !498
  %83 = load i64, ptr %v1, align 8, !dbg !498
  %84 = load i64, ptr %v2, align 8, !dbg !498
  %add53 = add i64 %84, %83, !dbg !498
  store i64 %add53, ptr %v2, align 8, !dbg !498
  %85 = load i64, ptr %v1, align 8, !dbg !498
  %call54 = call i64 @rol64(i64 noundef %85, i32 noundef 17) #5, !dbg !498
  store i64 %call54, ptr %v1, align 8, !dbg !498
  %86 = load i64, ptr %v2, align 8, !dbg !498
  %87 = load i64, ptr %v1, align 8, !dbg !498
  %xor55 = xor i64 %87, %86, !dbg !498
  store i64 %xor55, ptr %v1, align 8, !dbg !498
  %88 = load i64, ptr %v2, align 8, !dbg !498
  %call56 = call i64 @rol64(i64 noundef %88, i32 noundef 32) #5, !dbg !498
  store i64 %call56, ptr %v2, align 8, !dbg !498
  %89 = load i64, ptr %v1, align 8, !dbg !498
  %90 = load i64, ptr %v0, align 8, !dbg !498
  %add57 = add i64 %90, %89, !dbg !498
  store i64 %add57, ptr %v0, align 8, !dbg !498
  %91 = load i64, ptr %v1, align 8, !dbg !498
  %call58 = call i64 @rol64(i64 noundef %91, i32 noundef 13) #5, !dbg !498
  store i64 %call58, ptr %v1, align 8, !dbg !498
  %92 = load i64, ptr %v0, align 8, !dbg !498
  %93 = load i64, ptr %v1, align 8, !dbg !498
  %xor59 = xor i64 %93, %92, !dbg !498
  store i64 %xor59, ptr %v1, align 8, !dbg !498
  %94 = load i64, ptr %v0, align 8, !dbg !498
  %call60 = call i64 @rol64(i64 noundef %94, i32 noundef 32) #5, !dbg !498
  store i64 %call60, ptr %v0, align 8, !dbg !498
  %95 = load i64, ptr %v3, align 8, !dbg !498
  %96 = load i64, ptr %v2, align 8, !dbg !498
  %add61 = add i64 %96, %95, !dbg !498
  store i64 %add61, ptr %v2, align 8, !dbg !498
  %97 = load i64, ptr %v3, align 8, !dbg !498
  %call62 = call i64 @rol64(i64 noundef %97, i32 noundef 16) #5, !dbg !498
  store i64 %call62, ptr %v3, align 8, !dbg !498
  %98 = load i64, ptr %v2, align 8, !dbg !498
  %99 = load i64, ptr %v3, align 8, !dbg !498
  %xor63 = xor i64 %99, %98, !dbg !498
  store i64 %xor63, ptr %v3, align 8, !dbg !498
  %100 = load i64, ptr %v3, align 8, !dbg !498
  %101 = load i64, ptr %v0, align 8, !dbg !498
  %add64 = add i64 %101, %100, !dbg !498
  store i64 %add64, ptr %v0, align 8, !dbg !498
  %102 = load i64, ptr %v3, align 8, !dbg !498
  %call65 = call i64 @rol64(i64 noundef %102, i32 noundef 21) #5, !dbg !498
  store i64 %call65, ptr %v3, align 8, !dbg !498
  %103 = load i64, ptr %v0, align 8, !dbg !498
  %104 = load i64, ptr %v3, align 8, !dbg !498
  %xor66 = xor i64 %104, %103, !dbg !498
  store i64 %xor66, ptr %v3, align 8, !dbg !498
  %105 = load i64, ptr %v1, align 8, !dbg !498
  %106 = load i64, ptr %v2, align 8, !dbg !498
  %add67 = add i64 %106, %105, !dbg !498
  store i64 %add67, ptr %v2, align 8, !dbg !498
  %107 = load i64, ptr %v1, align 8, !dbg !498
  %call68 = call i64 @rol64(i64 noundef %107, i32 noundef 17) #5, !dbg !498
  store i64 %call68, ptr %v1, align 8, !dbg !498
  %108 = load i64, ptr %v2, align 8, !dbg !498
  %109 = load i64, ptr %v1, align 8, !dbg !498
  %xor69 = xor i64 %109, %108, !dbg !498
  store i64 %xor69, ptr %v1, align 8, !dbg !498
  %110 = load i64, ptr %v2, align 8, !dbg !498
  %call70 = call i64 @rol64(i64 noundef %110, i32 noundef 32) #5, !dbg !498
  store i64 %call70, ptr %v2, align 8, !dbg !498
  %111 = load i64, ptr %v1, align 8, !dbg !498
  %112 = load i64, ptr %v0, align 8, !dbg !498
  %add71 = add i64 %112, %111, !dbg !498
  store i64 %add71, ptr %v0, align 8, !dbg !498
  %113 = load i64, ptr %v1, align 8, !dbg !498
  %call72 = call i64 @rol64(i64 noundef %113, i32 noundef 13) #5, !dbg !498
  store i64 %call72, ptr %v1, align 8, !dbg !498
  %114 = load i64, ptr %v0, align 8, !dbg !498
  %115 = load i64, ptr %v1, align 8, !dbg !498
  %xor73 = xor i64 %115, %114, !dbg !498
  store i64 %xor73, ptr %v1, align 8, !dbg !498
  %116 = load i64, ptr %v0, align 8, !dbg !498
  %call74 = call i64 @rol64(i64 noundef %116, i32 noundef 32) #5, !dbg !498
  store i64 %call74, ptr %v0, align 8, !dbg !498
  %117 = load i64, ptr %v3, align 8, !dbg !498
  %118 = load i64, ptr %v2, align 8, !dbg !498
  %add75 = add i64 %118, %117, !dbg !498
  store i64 %add75, ptr %v2, align 8, !dbg !498
  %119 = load i64, ptr %v3, align 8, !dbg !498
  %call76 = call i64 @rol64(i64 noundef %119, i32 noundef 16) #5, !dbg !498
  store i64 %call76, ptr %v3, align 8, !dbg !498
  %120 = load i64, ptr %v2, align 8, !dbg !498
  %121 = load i64, ptr %v3, align 8, !dbg !498
  %xor77 = xor i64 %121, %120, !dbg !498
  store i64 %xor77, ptr %v3, align 8, !dbg !498
  %122 = load i64, ptr %v3, align 8, !dbg !498
  %123 = load i64, ptr %v0, align 8, !dbg !498
  %add78 = add i64 %123, %122, !dbg !498
  store i64 %add78, ptr %v0, align 8, !dbg !498
  %124 = load i64, ptr %v3, align 8, !dbg !498
  %call79 = call i64 @rol64(i64 noundef %124, i32 noundef 21) #5, !dbg !498
  store i64 %call79, ptr %v3, align 8, !dbg !498
  %125 = load i64, ptr %v0, align 8, !dbg !498
  %126 = load i64, ptr %v3, align 8, !dbg !498
  %xor80 = xor i64 %126, %125, !dbg !498
  store i64 %xor80, ptr %v3, align 8, !dbg !498
  %127 = load i64, ptr %v1, align 8, !dbg !498
  %128 = load i64, ptr %v2, align 8, !dbg !498
  %add81 = add i64 %128, %127, !dbg !498
  store i64 %add81, ptr %v2, align 8, !dbg !498
  %129 = load i64, ptr %v1, align 8, !dbg !498
  %call82 = call i64 @rol64(i64 noundef %129, i32 noundef 17) #5, !dbg !498
  store i64 %call82, ptr %v1, align 8, !dbg !498
  %130 = load i64, ptr %v2, align 8, !dbg !498
  %131 = load i64, ptr %v1, align 8, !dbg !498
  %xor83 = xor i64 %131, %130, !dbg !498
  store i64 %xor83, ptr %v1, align 8, !dbg !498
  %132 = load i64, ptr %v2, align 8, !dbg !498
  %call84 = call i64 @rol64(i64 noundef %132, i32 noundef 32) #5, !dbg !498
  store i64 %call84, ptr %v2, align 8, !dbg !498
  %133 = load i64, ptr %v0, align 8, !dbg !498
  %134 = load i64, ptr %v1, align 8, !dbg !498
  %xor85 = xor i64 %133, %134, !dbg !498
  %135 = load i64, ptr %v2, align 8, !dbg !498
  %136 = load i64, ptr %v3, align 8, !dbg !498
  %xor86 = xor i64 %135, %136, !dbg !498
  %xor87 = xor i64 %xor85, %xor86, !dbg !498
  %conv88 = trunc i64 %xor87 to i32, !dbg !498
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined) #4, !dbg !499
  ret i32 %conv88, !dbg !498
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsiphash_3u32(i32 noundef %first, i32 noundef %second, i32 noundef %third, ptr noundef %key) #0 align 16 !dbg !500 {
entry:
  %first.addr = alloca i32, align 4
  %second.addr = alloca i32, align 4
  %third.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %combined = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !504, metadata !DIExpression()), !dbg !514
  store i32 %second, ptr %second.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !505, metadata !DIExpression()), !dbg !515
  store i32 %third, ptr %third.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !506, metadata !DIExpression()), !dbg !516
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !507, metadata !DIExpression()), !dbg !517
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined) #4, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %combined, metadata !508, metadata !DIExpression()), !dbg !519
  %0 = load i32, ptr %second.addr, align 4, !dbg !520
  %conv = zext i32 %0 to i64, !dbg !521
  %shl = shl i64 %conv, 32, !dbg !522
  %1 = load i32, ptr %first.addr, align 4, !dbg !523
  %conv1 = zext i32 %1 to i64, !dbg !523
  %or = or i64 %shl, %conv1, !dbg !524
  store i64 %or, ptr %combined, align 8, !dbg !519
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !509, metadata !DIExpression()), !dbg !525
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !510, metadata !DIExpression()), !dbg !525
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !511, metadata !DIExpression()), !dbg !525
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !512, metadata !DIExpression()), !dbg !525
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !525
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %b, metadata !513, metadata !DIExpression()), !dbg !525
  store i64 864691128455135232, ptr %b, align 8, !dbg !525
  %2 = load ptr, ptr %key.addr, align 8, !dbg !525
  %key2 = getelementptr inbounds %struct.hsiphash_key_t, ptr %2, i32 0, i32 0, !dbg !525
  %arrayidx = getelementptr [2 x i64], ptr %key2, i64 0, i64 1, !dbg !525
  %3 = load i64, ptr %arrayidx, align 8, !dbg !525
  %4 = load i64, ptr %v3, align 8, !dbg !525
  %xor = xor i64 %4, %3, !dbg !525
  store i64 %xor, ptr %v3, align 8, !dbg !525
  %5 = load ptr, ptr %key.addr, align 8, !dbg !525
  %key3 = getelementptr inbounds %struct.hsiphash_key_t, ptr %5, i32 0, i32 0, !dbg !525
  %arrayidx4 = getelementptr [2 x i64], ptr %key3, i64 0, i64 0, !dbg !525
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !525
  %7 = load i64, ptr %v2, align 8, !dbg !525
  %xor5 = xor i64 %7, %6, !dbg !525
  store i64 %xor5, ptr %v2, align 8, !dbg !525
  %8 = load ptr, ptr %key.addr, align 8, !dbg !525
  %key6 = getelementptr inbounds %struct.hsiphash_key_t, ptr %8, i32 0, i32 0, !dbg !525
  %arrayidx7 = getelementptr [2 x i64], ptr %key6, i64 0, i64 1, !dbg !525
  %9 = load i64, ptr %arrayidx7, align 8, !dbg !525
  %10 = load i64, ptr %v1, align 8, !dbg !525
  %xor8 = xor i64 %10, %9, !dbg !525
  store i64 %xor8, ptr %v1, align 8, !dbg !525
  %11 = load ptr, ptr %key.addr, align 8, !dbg !525
  %key9 = getelementptr inbounds %struct.hsiphash_key_t, ptr %11, i32 0, i32 0, !dbg !525
  %arrayidx10 = getelementptr [2 x i64], ptr %key9, i64 0, i64 0, !dbg !525
  %12 = load i64, ptr %arrayidx10, align 8, !dbg !525
  %13 = load i64, ptr %v0, align 8, !dbg !525
  %xor11 = xor i64 %13, %12, !dbg !525
  store i64 %xor11, ptr %v0, align 8, !dbg !525
  %14 = load i64, ptr %combined, align 8, !dbg !526
  %15 = load i64, ptr %v3, align 8, !dbg !527
  %xor12 = xor i64 %15, %14, !dbg !527
  store i64 %xor12, ptr %v3, align 8, !dbg !527
  %16 = load i64, ptr %v1, align 8, !dbg !528
  %17 = load i64, ptr %v0, align 8, !dbg !528
  %add = add i64 %17, %16, !dbg !528
  store i64 %add, ptr %v0, align 8, !dbg !528
  %18 = load i64, ptr %v1, align 8, !dbg !528
  %call = call i64 @rol64(i64 noundef %18, i32 noundef 13) #5, !dbg !528
  store i64 %call, ptr %v1, align 8, !dbg !528
  %19 = load i64, ptr %v0, align 8, !dbg !528
  %20 = load i64, ptr %v1, align 8, !dbg !528
  %xor13 = xor i64 %20, %19, !dbg !528
  store i64 %xor13, ptr %v1, align 8, !dbg !528
  %21 = load i64, ptr %v0, align 8, !dbg !528
  %call14 = call i64 @rol64(i64 noundef %21, i32 noundef 32) #5, !dbg !528
  store i64 %call14, ptr %v0, align 8, !dbg !528
  %22 = load i64, ptr %v3, align 8, !dbg !528
  %23 = load i64, ptr %v2, align 8, !dbg !528
  %add15 = add i64 %23, %22, !dbg !528
  store i64 %add15, ptr %v2, align 8, !dbg !528
  %24 = load i64, ptr %v3, align 8, !dbg !528
  %call16 = call i64 @rol64(i64 noundef %24, i32 noundef 16) #5, !dbg !528
  store i64 %call16, ptr %v3, align 8, !dbg !528
  %25 = load i64, ptr %v2, align 8, !dbg !528
  %26 = load i64, ptr %v3, align 8, !dbg !528
  %xor17 = xor i64 %26, %25, !dbg !528
  store i64 %xor17, ptr %v3, align 8, !dbg !528
  %27 = load i64, ptr %v3, align 8, !dbg !528
  %28 = load i64, ptr %v0, align 8, !dbg !528
  %add18 = add i64 %28, %27, !dbg !528
  store i64 %add18, ptr %v0, align 8, !dbg !528
  %29 = load i64, ptr %v3, align 8, !dbg !528
  %call19 = call i64 @rol64(i64 noundef %29, i32 noundef 21) #5, !dbg !528
  store i64 %call19, ptr %v3, align 8, !dbg !528
  %30 = load i64, ptr %v0, align 8, !dbg !528
  %31 = load i64, ptr %v3, align 8, !dbg !528
  %xor20 = xor i64 %31, %30, !dbg !528
  store i64 %xor20, ptr %v3, align 8, !dbg !528
  %32 = load i64, ptr %v1, align 8, !dbg !528
  %33 = load i64, ptr %v2, align 8, !dbg !528
  %add21 = add i64 %33, %32, !dbg !528
  store i64 %add21, ptr %v2, align 8, !dbg !528
  %34 = load i64, ptr %v1, align 8, !dbg !528
  %call22 = call i64 @rol64(i64 noundef %34, i32 noundef 17) #5, !dbg !528
  store i64 %call22, ptr %v1, align 8, !dbg !528
  %35 = load i64, ptr %v2, align 8, !dbg !528
  %36 = load i64, ptr %v1, align 8, !dbg !528
  %xor23 = xor i64 %36, %35, !dbg !528
  store i64 %xor23, ptr %v1, align 8, !dbg !528
  %37 = load i64, ptr %v2, align 8, !dbg !528
  %call24 = call i64 @rol64(i64 noundef %37, i32 noundef 32) #5, !dbg !528
  store i64 %call24, ptr %v2, align 8, !dbg !528
  %38 = load i64, ptr %combined, align 8, !dbg !529
  %39 = load i64, ptr %v0, align 8, !dbg !530
  %xor25 = xor i64 %39, %38, !dbg !530
  store i64 %xor25, ptr %v0, align 8, !dbg !530
  %40 = load i32, ptr %third.addr, align 4, !dbg !531
  %conv26 = zext i32 %40 to i64, !dbg !531
  %41 = load i64, ptr %b, align 8, !dbg !532
  %or27 = or i64 %41, %conv26, !dbg !532
  store i64 %or27, ptr %b, align 8, !dbg !532
  %42 = load i64, ptr %b, align 8, !dbg !533
  %43 = load i64, ptr %v3, align 8, !dbg !533
  %xor28 = xor i64 %43, %42, !dbg !533
  store i64 %xor28, ptr %v3, align 8, !dbg !533
  %44 = load i64, ptr %v1, align 8, !dbg !533
  %45 = load i64, ptr %v0, align 8, !dbg !533
  %add29 = add i64 %45, %44, !dbg !533
  store i64 %add29, ptr %v0, align 8, !dbg !533
  %46 = load i64, ptr %v1, align 8, !dbg !533
  %call30 = call i64 @rol64(i64 noundef %46, i32 noundef 13) #5, !dbg !533
  store i64 %call30, ptr %v1, align 8, !dbg !533
  %47 = load i64, ptr %v0, align 8, !dbg !533
  %48 = load i64, ptr %v1, align 8, !dbg !533
  %xor31 = xor i64 %48, %47, !dbg !533
  store i64 %xor31, ptr %v1, align 8, !dbg !533
  %49 = load i64, ptr %v0, align 8, !dbg !533
  %call32 = call i64 @rol64(i64 noundef %49, i32 noundef 32) #5, !dbg !533
  store i64 %call32, ptr %v0, align 8, !dbg !533
  %50 = load i64, ptr %v3, align 8, !dbg !533
  %51 = load i64, ptr %v2, align 8, !dbg !533
  %add33 = add i64 %51, %50, !dbg !533
  store i64 %add33, ptr %v2, align 8, !dbg !533
  %52 = load i64, ptr %v3, align 8, !dbg !533
  %call34 = call i64 @rol64(i64 noundef %52, i32 noundef 16) #5, !dbg !533
  store i64 %call34, ptr %v3, align 8, !dbg !533
  %53 = load i64, ptr %v2, align 8, !dbg !533
  %54 = load i64, ptr %v3, align 8, !dbg !533
  %xor35 = xor i64 %54, %53, !dbg !533
  store i64 %xor35, ptr %v3, align 8, !dbg !533
  %55 = load i64, ptr %v3, align 8, !dbg !533
  %56 = load i64, ptr %v0, align 8, !dbg !533
  %add36 = add i64 %56, %55, !dbg !533
  store i64 %add36, ptr %v0, align 8, !dbg !533
  %57 = load i64, ptr %v3, align 8, !dbg !533
  %call37 = call i64 @rol64(i64 noundef %57, i32 noundef 21) #5, !dbg !533
  store i64 %call37, ptr %v3, align 8, !dbg !533
  %58 = load i64, ptr %v0, align 8, !dbg !533
  %59 = load i64, ptr %v3, align 8, !dbg !533
  %xor38 = xor i64 %59, %58, !dbg !533
  store i64 %xor38, ptr %v3, align 8, !dbg !533
  %60 = load i64, ptr %v1, align 8, !dbg !533
  %61 = load i64, ptr %v2, align 8, !dbg !533
  %add39 = add i64 %61, %60, !dbg !533
  store i64 %add39, ptr %v2, align 8, !dbg !533
  %62 = load i64, ptr %v1, align 8, !dbg !533
  %call40 = call i64 @rol64(i64 noundef %62, i32 noundef 17) #5, !dbg !533
  store i64 %call40, ptr %v1, align 8, !dbg !533
  %63 = load i64, ptr %v2, align 8, !dbg !533
  %64 = load i64, ptr %v1, align 8, !dbg !533
  %xor41 = xor i64 %64, %63, !dbg !533
  store i64 %xor41, ptr %v1, align 8, !dbg !533
  %65 = load i64, ptr %v2, align 8, !dbg !533
  %call42 = call i64 @rol64(i64 noundef %65, i32 noundef 32) #5, !dbg !533
  store i64 %call42, ptr %v2, align 8, !dbg !533
  %66 = load i64, ptr %b, align 8, !dbg !533
  %67 = load i64, ptr %v0, align 8, !dbg !533
  %xor43 = xor i64 %67, %66, !dbg !533
  store i64 %xor43, ptr %v0, align 8, !dbg !533
  %68 = load i64, ptr %v2, align 8, !dbg !533
  %xor44 = xor i64 %68, 255, !dbg !533
  store i64 %xor44, ptr %v2, align 8, !dbg !533
  %69 = load i64, ptr %v1, align 8, !dbg !533
  %70 = load i64, ptr %v0, align 8, !dbg !533
  %add45 = add i64 %70, %69, !dbg !533
  store i64 %add45, ptr %v0, align 8, !dbg !533
  %71 = load i64, ptr %v1, align 8, !dbg !533
  %call46 = call i64 @rol64(i64 noundef %71, i32 noundef 13) #5, !dbg !533
  store i64 %call46, ptr %v1, align 8, !dbg !533
  %72 = load i64, ptr %v0, align 8, !dbg !533
  %73 = load i64, ptr %v1, align 8, !dbg !533
  %xor47 = xor i64 %73, %72, !dbg !533
  store i64 %xor47, ptr %v1, align 8, !dbg !533
  %74 = load i64, ptr %v0, align 8, !dbg !533
  %call48 = call i64 @rol64(i64 noundef %74, i32 noundef 32) #5, !dbg !533
  store i64 %call48, ptr %v0, align 8, !dbg !533
  %75 = load i64, ptr %v3, align 8, !dbg !533
  %76 = load i64, ptr %v2, align 8, !dbg !533
  %add49 = add i64 %76, %75, !dbg !533
  store i64 %add49, ptr %v2, align 8, !dbg !533
  %77 = load i64, ptr %v3, align 8, !dbg !533
  %call50 = call i64 @rol64(i64 noundef %77, i32 noundef 16) #5, !dbg !533
  store i64 %call50, ptr %v3, align 8, !dbg !533
  %78 = load i64, ptr %v2, align 8, !dbg !533
  %79 = load i64, ptr %v3, align 8, !dbg !533
  %xor51 = xor i64 %79, %78, !dbg !533
  store i64 %xor51, ptr %v3, align 8, !dbg !533
  %80 = load i64, ptr %v3, align 8, !dbg !533
  %81 = load i64, ptr %v0, align 8, !dbg !533
  %add52 = add i64 %81, %80, !dbg !533
  store i64 %add52, ptr %v0, align 8, !dbg !533
  %82 = load i64, ptr %v3, align 8, !dbg !533
  %call53 = call i64 @rol64(i64 noundef %82, i32 noundef 21) #5, !dbg !533
  store i64 %call53, ptr %v3, align 8, !dbg !533
  %83 = load i64, ptr %v0, align 8, !dbg !533
  %84 = load i64, ptr %v3, align 8, !dbg !533
  %xor54 = xor i64 %84, %83, !dbg !533
  store i64 %xor54, ptr %v3, align 8, !dbg !533
  %85 = load i64, ptr %v1, align 8, !dbg !533
  %86 = load i64, ptr %v2, align 8, !dbg !533
  %add55 = add i64 %86, %85, !dbg !533
  store i64 %add55, ptr %v2, align 8, !dbg !533
  %87 = load i64, ptr %v1, align 8, !dbg !533
  %call56 = call i64 @rol64(i64 noundef %87, i32 noundef 17) #5, !dbg !533
  store i64 %call56, ptr %v1, align 8, !dbg !533
  %88 = load i64, ptr %v2, align 8, !dbg !533
  %89 = load i64, ptr %v1, align 8, !dbg !533
  %xor57 = xor i64 %89, %88, !dbg !533
  store i64 %xor57, ptr %v1, align 8, !dbg !533
  %90 = load i64, ptr %v2, align 8, !dbg !533
  %call58 = call i64 @rol64(i64 noundef %90, i32 noundef 32) #5, !dbg !533
  store i64 %call58, ptr %v2, align 8, !dbg !533
  %91 = load i64, ptr %v1, align 8, !dbg !533
  %92 = load i64, ptr %v0, align 8, !dbg !533
  %add59 = add i64 %92, %91, !dbg !533
  store i64 %add59, ptr %v0, align 8, !dbg !533
  %93 = load i64, ptr %v1, align 8, !dbg !533
  %call60 = call i64 @rol64(i64 noundef %93, i32 noundef 13) #5, !dbg !533
  store i64 %call60, ptr %v1, align 8, !dbg !533
  %94 = load i64, ptr %v0, align 8, !dbg !533
  %95 = load i64, ptr %v1, align 8, !dbg !533
  %xor61 = xor i64 %95, %94, !dbg !533
  store i64 %xor61, ptr %v1, align 8, !dbg !533
  %96 = load i64, ptr %v0, align 8, !dbg !533
  %call62 = call i64 @rol64(i64 noundef %96, i32 noundef 32) #5, !dbg !533
  store i64 %call62, ptr %v0, align 8, !dbg !533
  %97 = load i64, ptr %v3, align 8, !dbg !533
  %98 = load i64, ptr %v2, align 8, !dbg !533
  %add63 = add i64 %98, %97, !dbg !533
  store i64 %add63, ptr %v2, align 8, !dbg !533
  %99 = load i64, ptr %v3, align 8, !dbg !533
  %call64 = call i64 @rol64(i64 noundef %99, i32 noundef 16) #5, !dbg !533
  store i64 %call64, ptr %v3, align 8, !dbg !533
  %100 = load i64, ptr %v2, align 8, !dbg !533
  %101 = load i64, ptr %v3, align 8, !dbg !533
  %xor65 = xor i64 %101, %100, !dbg !533
  store i64 %xor65, ptr %v3, align 8, !dbg !533
  %102 = load i64, ptr %v3, align 8, !dbg !533
  %103 = load i64, ptr %v0, align 8, !dbg !533
  %add66 = add i64 %103, %102, !dbg !533
  store i64 %add66, ptr %v0, align 8, !dbg !533
  %104 = load i64, ptr %v3, align 8, !dbg !533
  %call67 = call i64 @rol64(i64 noundef %104, i32 noundef 21) #5, !dbg !533
  store i64 %call67, ptr %v3, align 8, !dbg !533
  %105 = load i64, ptr %v0, align 8, !dbg !533
  %106 = load i64, ptr %v3, align 8, !dbg !533
  %xor68 = xor i64 %106, %105, !dbg !533
  store i64 %xor68, ptr %v3, align 8, !dbg !533
  %107 = load i64, ptr %v1, align 8, !dbg !533
  %108 = load i64, ptr %v2, align 8, !dbg !533
  %add69 = add i64 %108, %107, !dbg !533
  store i64 %add69, ptr %v2, align 8, !dbg !533
  %109 = load i64, ptr %v1, align 8, !dbg !533
  %call70 = call i64 @rol64(i64 noundef %109, i32 noundef 17) #5, !dbg !533
  store i64 %call70, ptr %v1, align 8, !dbg !533
  %110 = load i64, ptr %v2, align 8, !dbg !533
  %111 = load i64, ptr %v1, align 8, !dbg !533
  %xor71 = xor i64 %111, %110, !dbg !533
  store i64 %xor71, ptr %v1, align 8, !dbg !533
  %112 = load i64, ptr %v2, align 8, !dbg !533
  %call72 = call i64 @rol64(i64 noundef %112, i32 noundef 32) #5, !dbg !533
  store i64 %call72, ptr %v2, align 8, !dbg !533
  %113 = load i64, ptr %v1, align 8, !dbg !533
  %114 = load i64, ptr %v0, align 8, !dbg !533
  %add73 = add i64 %114, %113, !dbg !533
  store i64 %add73, ptr %v0, align 8, !dbg !533
  %115 = load i64, ptr %v1, align 8, !dbg !533
  %call74 = call i64 @rol64(i64 noundef %115, i32 noundef 13) #5, !dbg !533
  store i64 %call74, ptr %v1, align 8, !dbg !533
  %116 = load i64, ptr %v0, align 8, !dbg !533
  %117 = load i64, ptr %v1, align 8, !dbg !533
  %xor75 = xor i64 %117, %116, !dbg !533
  store i64 %xor75, ptr %v1, align 8, !dbg !533
  %118 = load i64, ptr %v0, align 8, !dbg !533
  %call76 = call i64 @rol64(i64 noundef %118, i32 noundef 32) #5, !dbg !533
  store i64 %call76, ptr %v0, align 8, !dbg !533
  %119 = load i64, ptr %v3, align 8, !dbg !533
  %120 = load i64, ptr %v2, align 8, !dbg !533
  %add77 = add i64 %120, %119, !dbg !533
  store i64 %add77, ptr %v2, align 8, !dbg !533
  %121 = load i64, ptr %v3, align 8, !dbg !533
  %call78 = call i64 @rol64(i64 noundef %121, i32 noundef 16) #5, !dbg !533
  store i64 %call78, ptr %v3, align 8, !dbg !533
  %122 = load i64, ptr %v2, align 8, !dbg !533
  %123 = load i64, ptr %v3, align 8, !dbg !533
  %xor79 = xor i64 %123, %122, !dbg !533
  store i64 %xor79, ptr %v3, align 8, !dbg !533
  %124 = load i64, ptr %v3, align 8, !dbg !533
  %125 = load i64, ptr %v0, align 8, !dbg !533
  %add80 = add i64 %125, %124, !dbg !533
  store i64 %add80, ptr %v0, align 8, !dbg !533
  %126 = load i64, ptr %v3, align 8, !dbg !533
  %call81 = call i64 @rol64(i64 noundef %126, i32 noundef 21) #5, !dbg !533
  store i64 %call81, ptr %v3, align 8, !dbg !533
  %127 = load i64, ptr %v0, align 8, !dbg !533
  %128 = load i64, ptr %v3, align 8, !dbg !533
  %xor82 = xor i64 %128, %127, !dbg !533
  store i64 %xor82, ptr %v3, align 8, !dbg !533
  %129 = load i64, ptr %v1, align 8, !dbg !533
  %130 = load i64, ptr %v2, align 8, !dbg !533
  %add83 = add i64 %130, %129, !dbg !533
  store i64 %add83, ptr %v2, align 8, !dbg !533
  %131 = load i64, ptr %v1, align 8, !dbg !533
  %call84 = call i64 @rol64(i64 noundef %131, i32 noundef 17) #5, !dbg !533
  store i64 %call84, ptr %v1, align 8, !dbg !533
  %132 = load i64, ptr %v2, align 8, !dbg !533
  %133 = load i64, ptr %v1, align 8, !dbg !533
  %xor85 = xor i64 %133, %132, !dbg !533
  store i64 %xor85, ptr %v1, align 8, !dbg !533
  %134 = load i64, ptr %v2, align 8, !dbg !533
  %call86 = call i64 @rol64(i64 noundef %134, i32 noundef 32) #5, !dbg !533
  store i64 %call86, ptr %v2, align 8, !dbg !533
  %135 = load i64, ptr %v0, align 8, !dbg !533
  %136 = load i64, ptr %v1, align 8, !dbg !533
  %xor87 = xor i64 %135, %136, !dbg !533
  %137 = load i64, ptr %v2, align 8, !dbg !533
  %138 = load i64, ptr %v3, align 8, !dbg !533
  %xor88 = xor i64 %137, %138, !dbg !533
  %xor89 = xor i64 %xor87, %xor88, !dbg !533
  %conv90 = trunc i64 %xor89 to i32, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined) #4, !dbg !534
  ret i32 %conv90, !dbg !533
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @hsiphash_4u32(i32 noundef %first, i32 noundef %second, i32 noundef %third, i32 noundef %forth, ptr noundef %key) #0 align 16 !dbg !535 {
entry:
  %first.addr = alloca i32, align 4
  %second.addr = alloca i32, align 4
  %third.addr = alloca i32, align 4
  %forth.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %combined = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %b = alloca i64, align 8
  store i32 %first, ptr %first.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %first.addr, metadata !539, metadata !DIExpression()), !dbg !550
  store i32 %second, ptr %second.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %second.addr, metadata !540, metadata !DIExpression()), !dbg !551
  store i32 %third, ptr %third.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %third.addr, metadata !541, metadata !DIExpression()), !dbg !552
  store i32 %forth, ptr %forth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %forth.addr, metadata !542, metadata !DIExpression()), !dbg !553
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !543, metadata !DIExpression()), !dbg !554
  call void @llvm.lifetime.start.p0(i64 8, ptr %combined) #4, !dbg !555
  call void @llvm.dbg.declare(metadata ptr %combined, metadata !544, metadata !DIExpression()), !dbg !556
  %0 = load i32, ptr %second.addr, align 4, !dbg !557
  %conv = zext i32 %0 to i64, !dbg !558
  %shl = shl i64 %conv, 32, !dbg !559
  %1 = load i32, ptr %first.addr, align 4, !dbg !560
  %conv1 = zext i32 %1 to i64, !dbg !560
  %or = or i64 %shl, %conv1, !dbg !561
  store i64 %or, ptr %combined, align 8, !dbg !556
  call void @llvm.lifetime.start.p0(i64 8, ptr %v0) #4, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %v0, metadata !545, metadata !DIExpression()), !dbg !562
  store i64 8317987319222330741, ptr %v0, align 8, !dbg !562
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !546, metadata !DIExpression()), !dbg !562
  store i64 7237128888997146477, ptr %v1, align 8, !dbg !562
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !547, metadata !DIExpression()), !dbg !562
  store i64 7816392313619706465, ptr %v2, align 8, !dbg !562
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !548, metadata !DIExpression()), !dbg !562
  store i64 8387220255154660723, ptr %v3, align 8, !dbg !562
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #4, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %b, metadata !549, metadata !DIExpression()), !dbg !562
  store i64 1152921504606846976, ptr %b, align 8, !dbg !562
  %2 = load ptr, ptr %key.addr, align 8, !dbg !562
  %key2 = getelementptr inbounds %struct.hsiphash_key_t, ptr %2, i32 0, i32 0, !dbg !562
  %arrayidx = getelementptr [2 x i64], ptr %key2, i64 0, i64 1, !dbg !562
  %3 = load i64, ptr %arrayidx, align 8, !dbg !562
  %4 = load i64, ptr %v3, align 8, !dbg !562
  %xor = xor i64 %4, %3, !dbg !562
  store i64 %xor, ptr %v3, align 8, !dbg !562
  %5 = load ptr, ptr %key.addr, align 8, !dbg !562
  %key3 = getelementptr inbounds %struct.hsiphash_key_t, ptr %5, i32 0, i32 0, !dbg !562
  %arrayidx4 = getelementptr [2 x i64], ptr %key3, i64 0, i64 0, !dbg !562
  %6 = load i64, ptr %arrayidx4, align 8, !dbg !562
  %7 = load i64, ptr %v2, align 8, !dbg !562
  %xor5 = xor i64 %7, %6, !dbg !562
  store i64 %xor5, ptr %v2, align 8, !dbg !562
  %8 = load ptr, ptr %key.addr, align 8, !dbg !562
  %key6 = getelementptr inbounds %struct.hsiphash_key_t, ptr %8, i32 0, i32 0, !dbg !562
  %arrayidx7 = getelementptr [2 x i64], ptr %key6, i64 0, i64 1, !dbg !562
  %9 = load i64, ptr %arrayidx7, align 8, !dbg !562
  %10 = load i64, ptr %v1, align 8, !dbg !562
  %xor8 = xor i64 %10, %9, !dbg !562
  store i64 %xor8, ptr %v1, align 8, !dbg !562
  %11 = load ptr, ptr %key.addr, align 8, !dbg !562
  %key9 = getelementptr inbounds %struct.hsiphash_key_t, ptr %11, i32 0, i32 0, !dbg !562
  %arrayidx10 = getelementptr [2 x i64], ptr %key9, i64 0, i64 0, !dbg !562
  %12 = load i64, ptr %arrayidx10, align 8, !dbg !562
  %13 = load i64, ptr %v0, align 8, !dbg !562
  %xor11 = xor i64 %13, %12, !dbg !562
  store i64 %xor11, ptr %v0, align 8, !dbg !562
  %14 = load i64, ptr %combined, align 8, !dbg !563
  %15 = load i64, ptr %v3, align 8, !dbg !564
  %xor12 = xor i64 %15, %14, !dbg !564
  store i64 %xor12, ptr %v3, align 8, !dbg !564
  %16 = load i64, ptr %v1, align 8, !dbg !565
  %17 = load i64, ptr %v0, align 8, !dbg !565
  %add = add i64 %17, %16, !dbg !565
  store i64 %add, ptr %v0, align 8, !dbg !565
  %18 = load i64, ptr %v1, align 8, !dbg !565
  %call = call i64 @rol64(i64 noundef %18, i32 noundef 13) #5, !dbg !565
  store i64 %call, ptr %v1, align 8, !dbg !565
  %19 = load i64, ptr %v0, align 8, !dbg !565
  %20 = load i64, ptr %v1, align 8, !dbg !565
  %xor13 = xor i64 %20, %19, !dbg !565
  store i64 %xor13, ptr %v1, align 8, !dbg !565
  %21 = load i64, ptr %v0, align 8, !dbg !565
  %call14 = call i64 @rol64(i64 noundef %21, i32 noundef 32) #5, !dbg !565
  store i64 %call14, ptr %v0, align 8, !dbg !565
  %22 = load i64, ptr %v3, align 8, !dbg !565
  %23 = load i64, ptr %v2, align 8, !dbg !565
  %add15 = add i64 %23, %22, !dbg !565
  store i64 %add15, ptr %v2, align 8, !dbg !565
  %24 = load i64, ptr %v3, align 8, !dbg !565
  %call16 = call i64 @rol64(i64 noundef %24, i32 noundef 16) #5, !dbg !565
  store i64 %call16, ptr %v3, align 8, !dbg !565
  %25 = load i64, ptr %v2, align 8, !dbg !565
  %26 = load i64, ptr %v3, align 8, !dbg !565
  %xor17 = xor i64 %26, %25, !dbg !565
  store i64 %xor17, ptr %v3, align 8, !dbg !565
  %27 = load i64, ptr %v3, align 8, !dbg !565
  %28 = load i64, ptr %v0, align 8, !dbg !565
  %add18 = add i64 %28, %27, !dbg !565
  store i64 %add18, ptr %v0, align 8, !dbg !565
  %29 = load i64, ptr %v3, align 8, !dbg !565
  %call19 = call i64 @rol64(i64 noundef %29, i32 noundef 21) #5, !dbg !565
  store i64 %call19, ptr %v3, align 8, !dbg !565
  %30 = load i64, ptr %v0, align 8, !dbg !565
  %31 = load i64, ptr %v3, align 8, !dbg !565
  %xor20 = xor i64 %31, %30, !dbg !565
  store i64 %xor20, ptr %v3, align 8, !dbg !565
  %32 = load i64, ptr %v1, align 8, !dbg !565
  %33 = load i64, ptr %v2, align 8, !dbg !565
  %add21 = add i64 %33, %32, !dbg !565
  store i64 %add21, ptr %v2, align 8, !dbg !565
  %34 = load i64, ptr %v1, align 8, !dbg !565
  %call22 = call i64 @rol64(i64 noundef %34, i32 noundef 17) #5, !dbg !565
  store i64 %call22, ptr %v1, align 8, !dbg !565
  %35 = load i64, ptr %v2, align 8, !dbg !565
  %36 = load i64, ptr %v1, align 8, !dbg !565
  %xor23 = xor i64 %36, %35, !dbg !565
  store i64 %xor23, ptr %v1, align 8, !dbg !565
  %37 = load i64, ptr %v2, align 8, !dbg !565
  %call24 = call i64 @rol64(i64 noundef %37, i32 noundef 32) #5, !dbg !565
  store i64 %call24, ptr %v2, align 8, !dbg !565
  %38 = load i64, ptr %combined, align 8, !dbg !566
  %39 = load i64, ptr %v0, align 8, !dbg !567
  %xor25 = xor i64 %39, %38, !dbg !567
  store i64 %xor25, ptr %v0, align 8, !dbg !567
  %40 = load i32, ptr %forth.addr, align 4, !dbg !568
  %conv26 = zext i32 %40 to i64, !dbg !569
  %shl27 = shl i64 %conv26, 32, !dbg !570
  %41 = load i32, ptr %third.addr, align 4, !dbg !571
  %conv28 = zext i32 %41 to i64, !dbg !571
  %or29 = or i64 %shl27, %conv28, !dbg !572
  store i64 %or29, ptr %combined, align 8, !dbg !573
  %42 = load i64, ptr %combined, align 8, !dbg !574
  %43 = load i64, ptr %v3, align 8, !dbg !575
  %xor30 = xor i64 %43, %42, !dbg !575
  store i64 %xor30, ptr %v3, align 8, !dbg !575
  %44 = load i64, ptr %v1, align 8, !dbg !576
  %45 = load i64, ptr %v0, align 8, !dbg !576
  %add31 = add i64 %45, %44, !dbg !576
  store i64 %add31, ptr %v0, align 8, !dbg !576
  %46 = load i64, ptr %v1, align 8, !dbg !576
  %call32 = call i64 @rol64(i64 noundef %46, i32 noundef 13) #5, !dbg !576
  store i64 %call32, ptr %v1, align 8, !dbg !576
  %47 = load i64, ptr %v0, align 8, !dbg !576
  %48 = load i64, ptr %v1, align 8, !dbg !576
  %xor33 = xor i64 %48, %47, !dbg !576
  store i64 %xor33, ptr %v1, align 8, !dbg !576
  %49 = load i64, ptr %v0, align 8, !dbg !576
  %call34 = call i64 @rol64(i64 noundef %49, i32 noundef 32) #5, !dbg !576
  store i64 %call34, ptr %v0, align 8, !dbg !576
  %50 = load i64, ptr %v3, align 8, !dbg !576
  %51 = load i64, ptr %v2, align 8, !dbg !576
  %add35 = add i64 %51, %50, !dbg !576
  store i64 %add35, ptr %v2, align 8, !dbg !576
  %52 = load i64, ptr %v3, align 8, !dbg !576
  %call36 = call i64 @rol64(i64 noundef %52, i32 noundef 16) #5, !dbg !576
  store i64 %call36, ptr %v3, align 8, !dbg !576
  %53 = load i64, ptr %v2, align 8, !dbg !576
  %54 = load i64, ptr %v3, align 8, !dbg !576
  %xor37 = xor i64 %54, %53, !dbg !576
  store i64 %xor37, ptr %v3, align 8, !dbg !576
  %55 = load i64, ptr %v3, align 8, !dbg !576
  %56 = load i64, ptr %v0, align 8, !dbg !576
  %add38 = add i64 %56, %55, !dbg !576
  store i64 %add38, ptr %v0, align 8, !dbg !576
  %57 = load i64, ptr %v3, align 8, !dbg !576
  %call39 = call i64 @rol64(i64 noundef %57, i32 noundef 21) #5, !dbg !576
  store i64 %call39, ptr %v3, align 8, !dbg !576
  %58 = load i64, ptr %v0, align 8, !dbg !576
  %59 = load i64, ptr %v3, align 8, !dbg !576
  %xor40 = xor i64 %59, %58, !dbg !576
  store i64 %xor40, ptr %v3, align 8, !dbg !576
  %60 = load i64, ptr %v1, align 8, !dbg !576
  %61 = load i64, ptr %v2, align 8, !dbg !576
  %add41 = add i64 %61, %60, !dbg !576
  store i64 %add41, ptr %v2, align 8, !dbg !576
  %62 = load i64, ptr %v1, align 8, !dbg !576
  %call42 = call i64 @rol64(i64 noundef %62, i32 noundef 17) #5, !dbg !576
  store i64 %call42, ptr %v1, align 8, !dbg !576
  %63 = load i64, ptr %v2, align 8, !dbg !576
  %64 = load i64, ptr %v1, align 8, !dbg !576
  %xor43 = xor i64 %64, %63, !dbg !576
  store i64 %xor43, ptr %v1, align 8, !dbg !576
  %65 = load i64, ptr %v2, align 8, !dbg !576
  %call44 = call i64 @rol64(i64 noundef %65, i32 noundef 32) #5, !dbg !576
  store i64 %call44, ptr %v2, align 8, !dbg !576
  %66 = load i64, ptr %combined, align 8, !dbg !577
  %67 = load i64, ptr %v0, align 8, !dbg !578
  %xor45 = xor i64 %67, %66, !dbg !578
  store i64 %xor45, ptr %v0, align 8, !dbg !578
  %68 = load i64, ptr %b, align 8, !dbg !579
  %69 = load i64, ptr %v3, align 8, !dbg !579
  %xor46 = xor i64 %69, %68, !dbg !579
  store i64 %xor46, ptr %v3, align 8, !dbg !579
  %70 = load i64, ptr %v1, align 8, !dbg !579
  %71 = load i64, ptr %v0, align 8, !dbg !579
  %add47 = add i64 %71, %70, !dbg !579
  store i64 %add47, ptr %v0, align 8, !dbg !579
  %72 = load i64, ptr %v1, align 8, !dbg !579
  %call48 = call i64 @rol64(i64 noundef %72, i32 noundef 13) #5, !dbg !579
  store i64 %call48, ptr %v1, align 8, !dbg !579
  %73 = load i64, ptr %v0, align 8, !dbg !579
  %74 = load i64, ptr %v1, align 8, !dbg !579
  %xor49 = xor i64 %74, %73, !dbg !579
  store i64 %xor49, ptr %v1, align 8, !dbg !579
  %75 = load i64, ptr %v0, align 8, !dbg !579
  %call50 = call i64 @rol64(i64 noundef %75, i32 noundef 32) #5, !dbg !579
  store i64 %call50, ptr %v0, align 8, !dbg !579
  %76 = load i64, ptr %v3, align 8, !dbg !579
  %77 = load i64, ptr %v2, align 8, !dbg !579
  %add51 = add i64 %77, %76, !dbg !579
  store i64 %add51, ptr %v2, align 8, !dbg !579
  %78 = load i64, ptr %v3, align 8, !dbg !579
  %call52 = call i64 @rol64(i64 noundef %78, i32 noundef 16) #5, !dbg !579
  store i64 %call52, ptr %v3, align 8, !dbg !579
  %79 = load i64, ptr %v2, align 8, !dbg !579
  %80 = load i64, ptr %v3, align 8, !dbg !579
  %xor53 = xor i64 %80, %79, !dbg !579
  store i64 %xor53, ptr %v3, align 8, !dbg !579
  %81 = load i64, ptr %v3, align 8, !dbg !579
  %82 = load i64, ptr %v0, align 8, !dbg !579
  %add54 = add i64 %82, %81, !dbg !579
  store i64 %add54, ptr %v0, align 8, !dbg !579
  %83 = load i64, ptr %v3, align 8, !dbg !579
  %call55 = call i64 @rol64(i64 noundef %83, i32 noundef 21) #5, !dbg !579
  store i64 %call55, ptr %v3, align 8, !dbg !579
  %84 = load i64, ptr %v0, align 8, !dbg !579
  %85 = load i64, ptr %v3, align 8, !dbg !579
  %xor56 = xor i64 %85, %84, !dbg !579
  store i64 %xor56, ptr %v3, align 8, !dbg !579
  %86 = load i64, ptr %v1, align 8, !dbg !579
  %87 = load i64, ptr %v2, align 8, !dbg !579
  %add57 = add i64 %87, %86, !dbg !579
  store i64 %add57, ptr %v2, align 8, !dbg !579
  %88 = load i64, ptr %v1, align 8, !dbg !579
  %call58 = call i64 @rol64(i64 noundef %88, i32 noundef 17) #5, !dbg !579
  store i64 %call58, ptr %v1, align 8, !dbg !579
  %89 = load i64, ptr %v2, align 8, !dbg !579
  %90 = load i64, ptr %v1, align 8, !dbg !579
  %xor59 = xor i64 %90, %89, !dbg !579
  store i64 %xor59, ptr %v1, align 8, !dbg !579
  %91 = load i64, ptr %v2, align 8, !dbg !579
  %call60 = call i64 @rol64(i64 noundef %91, i32 noundef 32) #5, !dbg !579
  store i64 %call60, ptr %v2, align 8, !dbg !579
  %92 = load i64, ptr %b, align 8, !dbg !579
  %93 = load i64, ptr %v0, align 8, !dbg !579
  %xor61 = xor i64 %93, %92, !dbg !579
  store i64 %xor61, ptr %v0, align 8, !dbg !579
  %94 = load i64, ptr %v2, align 8, !dbg !579
  %xor62 = xor i64 %94, 255, !dbg !579
  store i64 %xor62, ptr %v2, align 8, !dbg !579
  %95 = load i64, ptr %v1, align 8, !dbg !579
  %96 = load i64, ptr %v0, align 8, !dbg !579
  %add63 = add i64 %96, %95, !dbg !579
  store i64 %add63, ptr %v0, align 8, !dbg !579
  %97 = load i64, ptr %v1, align 8, !dbg !579
  %call64 = call i64 @rol64(i64 noundef %97, i32 noundef 13) #5, !dbg !579
  store i64 %call64, ptr %v1, align 8, !dbg !579
  %98 = load i64, ptr %v0, align 8, !dbg !579
  %99 = load i64, ptr %v1, align 8, !dbg !579
  %xor65 = xor i64 %99, %98, !dbg !579
  store i64 %xor65, ptr %v1, align 8, !dbg !579
  %100 = load i64, ptr %v0, align 8, !dbg !579
  %call66 = call i64 @rol64(i64 noundef %100, i32 noundef 32) #5, !dbg !579
  store i64 %call66, ptr %v0, align 8, !dbg !579
  %101 = load i64, ptr %v3, align 8, !dbg !579
  %102 = load i64, ptr %v2, align 8, !dbg !579
  %add67 = add i64 %102, %101, !dbg !579
  store i64 %add67, ptr %v2, align 8, !dbg !579
  %103 = load i64, ptr %v3, align 8, !dbg !579
  %call68 = call i64 @rol64(i64 noundef %103, i32 noundef 16) #5, !dbg !579
  store i64 %call68, ptr %v3, align 8, !dbg !579
  %104 = load i64, ptr %v2, align 8, !dbg !579
  %105 = load i64, ptr %v3, align 8, !dbg !579
  %xor69 = xor i64 %105, %104, !dbg !579
  store i64 %xor69, ptr %v3, align 8, !dbg !579
  %106 = load i64, ptr %v3, align 8, !dbg !579
  %107 = load i64, ptr %v0, align 8, !dbg !579
  %add70 = add i64 %107, %106, !dbg !579
  store i64 %add70, ptr %v0, align 8, !dbg !579
  %108 = load i64, ptr %v3, align 8, !dbg !579
  %call71 = call i64 @rol64(i64 noundef %108, i32 noundef 21) #5, !dbg !579
  store i64 %call71, ptr %v3, align 8, !dbg !579
  %109 = load i64, ptr %v0, align 8, !dbg !579
  %110 = load i64, ptr %v3, align 8, !dbg !579
  %xor72 = xor i64 %110, %109, !dbg !579
  store i64 %xor72, ptr %v3, align 8, !dbg !579
  %111 = load i64, ptr %v1, align 8, !dbg !579
  %112 = load i64, ptr %v2, align 8, !dbg !579
  %add73 = add i64 %112, %111, !dbg !579
  store i64 %add73, ptr %v2, align 8, !dbg !579
  %113 = load i64, ptr %v1, align 8, !dbg !579
  %call74 = call i64 @rol64(i64 noundef %113, i32 noundef 17) #5, !dbg !579
  store i64 %call74, ptr %v1, align 8, !dbg !579
  %114 = load i64, ptr %v2, align 8, !dbg !579
  %115 = load i64, ptr %v1, align 8, !dbg !579
  %xor75 = xor i64 %115, %114, !dbg !579
  store i64 %xor75, ptr %v1, align 8, !dbg !579
  %116 = load i64, ptr %v2, align 8, !dbg !579
  %call76 = call i64 @rol64(i64 noundef %116, i32 noundef 32) #5, !dbg !579
  store i64 %call76, ptr %v2, align 8, !dbg !579
  %117 = load i64, ptr %v1, align 8, !dbg !579
  %118 = load i64, ptr %v0, align 8, !dbg !579
  %add77 = add i64 %118, %117, !dbg !579
  store i64 %add77, ptr %v0, align 8, !dbg !579
  %119 = load i64, ptr %v1, align 8, !dbg !579
  %call78 = call i64 @rol64(i64 noundef %119, i32 noundef 13) #5, !dbg !579
  store i64 %call78, ptr %v1, align 8, !dbg !579
  %120 = load i64, ptr %v0, align 8, !dbg !579
  %121 = load i64, ptr %v1, align 8, !dbg !579
  %xor79 = xor i64 %121, %120, !dbg !579
  store i64 %xor79, ptr %v1, align 8, !dbg !579
  %122 = load i64, ptr %v0, align 8, !dbg !579
  %call80 = call i64 @rol64(i64 noundef %122, i32 noundef 32) #5, !dbg !579
  store i64 %call80, ptr %v0, align 8, !dbg !579
  %123 = load i64, ptr %v3, align 8, !dbg !579
  %124 = load i64, ptr %v2, align 8, !dbg !579
  %add81 = add i64 %124, %123, !dbg !579
  store i64 %add81, ptr %v2, align 8, !dbg !579
  %125 = load i64, ptr %v3, align 8, !dbg !579
  %call82 = call i64 @rol64(i64 noundef %125, i32 noundef 16) #5, !dbg !579
  store i64 %call82, ptr %v3, align 8, !dbg !579
  %126 = load i64, ptr %v2, align 8, !dbg !579
  %127 = load i64, ptr %v3, align 8, !dbg !579
  %xor83 = xor i64 %127, %126, !dbg !579
  store i64 %xor83, ptr %v3, align 8, !dbg !579
  %128 = load i64, ptr %v3, align 8, !dbg !579
  %129 = load i64, ptr %v0, align 8, !dbg !579
  %add84 = add i64 %129, %128, !dbg !579
  store i64 %add84, ptr %v0, align 8, !dbg !579
  %130 = load i64, ptr %v3, align 8, !dbg !579
  %call85 = call i64 @rol64(i64 noundef %130, i32 noundef 21) #5, !dbg !579
  store i64 %call85, ptr %v3, align 8, !dbg !579
  %131 = load i64, ptr %v0, align 8, !dbg !579
  %132 = load i64, ptr %v3, align 8, !dbg !579
  %xor86 = xor i64 %132, %131, !dbg !579
  store i64 %xor86, ptr %v3, align 8, !dbg !579
  %133 = load i64, ptr %v1, align 8, !dbg !579
  %134 = load i64, ptr %v2, align 8, !dbg !579
  %add87 = add i64 %134, %133, !dbg !579
  store i64 %add87, ptr %v2, align 8, !dbg !579
  %135 = load i64, ptr %v1, align 8, !dbg !579
  %call88 = call i64 @rol64(i64 noundef %135, i32 noundef 17) #5, !dbg !579
  store i64 %call88, ptr %v1, align 8, !dbg !579
  %136 = load i64, ptr %v2, align 8, !dbg !579
  %137 = load i64, ptr %v1, align 8, !dbg !579
  %xor89 = xor i64 %137, %136, !dbg !579
  store i64 %xor89, ptr %v1, align 8, !dbg !579
  %138 = load i64, ptr %v2, align 8, !dbg !579
  %call90 = call i64 @rol64(i64 noundef %138, i32 noundef 32) #5, !dbg !579
  store i64 %call90, ptr %v2, align 8, !dbg !579
  %139 = load i64, ptr %v1, align 8, !dbg !579
  %140 = load i64, ptr %v0, align 8, !dbg !579
  %add91 = add i64 %140, %139, !dbg !579
  store i64 %add91, ptr %v0, align 8, !dbg !579
  %141 = load i64, ptr %v1, align 8, !dbg !579
  %call92 = call i64 @rol64(i64 noundef %141, i32 noundef 13) #5, !dbg !579
  store i64 %call92, ptr %v1, align 8, !dbg !579
  %142 = load i64, ptr %v0, align 8, !dbg !579
  %143 = load i64, ptr %v1, align 8, !dbg !579
  %xor93 = xor i64 %143, %142, !dbg !579
  store i64 %xor93, ptr %v1, align 8, !dbg !579
  %144 = load i64, ptr %v0, align 8, !dbg !579
  %call94 = call i64 @rol64(i64 noundef %144, i32 noundef 32) #5, !dbg !579
  store i64 %call94, ptr %v0, align 8, !dbg !579
  %145 = load i64, ptr %v3, align 8, !dbg !579
  %146 = load i64, ptr %v2, align 8, !dbg !579
  %add95 = add i64 %146, %145, !dbg !579
  store i64 %add95, ptr %v2, align 8, !dbg !579
  %147 = load i64, ptr %v3, align 8, !dbg !579
  %call96 = call i64 @rol64(i64 noundef %147, i32 noundef 16) #5, !dbg !579
  store i64 %call96, ptr %v3, align 8, !dbg !579
  %148 = load i64, ptr %v2, align 8, !dbg !579
  %149 = load i64, ptr %v3, align 8, !dbg !579
  %xor97 = xor i64 %149, %148, !dbg !579
  store i64 %xor97, ptr %v3, align 8, !dbg !579
  %150 = load i64, ptr %v3, align 8, !dbg !579
  %151 = load i64, ptr %v0, align 8, !dbg !579
  %add98 = add i64 %151, %150, !dbg !579
  store i64 %add98, ptr %v0, align 8, !dbg !579
  %152 = load i64, ptr %v3, align 8, !dbg !579
  %call99 = call i64 @rol64(i64 noundef %152, i32 noundef 21) #5, !dbg !579
  store i64 %call99, ptr %v3, align 8, !dbg !579
  %153 = load i64, ptr %v0, align 8, !dbg !579
  %154 = load i64, ptr %v3, align 8, !dbg !579
  %xor100 = xor i64 %154, %153, !dbg !579
  store i64 %xor100, ptr %v3, align 8, !dbg !579
  %155 = load i64, ptr %v1, align 8, !dbg !579
  %156 = load i64, ptr %v2, align 8, !dbg !579
  %add101 = add i64 %156, %155, !dbg !579
  store i64 %add101, ptr %v2, align 8, !dbg !579
  %157 = load i64, ptr %v1, align 8, !dbg !579
  %call102 = call i64 @rol64(i64 noundef %157, i32 noundef 17) #5, !dbg !579
  store i64 %call102, ptr %v1, align 8, !dbg !579
  %158 = load i64, ptr %v2, align 8, !dbg !579
  %159 = load i64, ptr %v1, align 8, !dbg !579
  %xor103 = xor i64 %159, %158, !dbg !579
  store i64 %xor103, ptr %v1, align 8, !dbg !579
  %160 = load i64, ptr %v2, align 8, !dbg !579
  %call104 = call i64 @rol64(i64 noundef %160, i32 noundef 32) #5, !dbg !579
  store i64 %call104, ptr %v2, align 8, !dbg !579
  %161 = load i64, ptr %v0, align 8, !dbg !579
  %162 = load i64, ptr %v1, align 8, !dbg !579
  %xor105 = xor i64 %161, %162, !dbg !579
  %163 = load i64, ptr %v2, align 8, !dbg !579
  %164 = load i64, ptr %v3, align 8, !dbg !579
  %xor106 = xor i64 %163, %164, !dbg !579
  %xor107 = xor i64 %xor105, %xor106, !dbg !579
  %conv108 = trunc i64 %xor107 to i32, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #4, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %v0) #4, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %combined) #4, !dbg !580
  ret i32 %conv108, !dbg !579
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___siphash_unaligned135", scope: !2, file: !3, line: 109, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.siphash.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/siphash\22 -D KBUILD_BASENAME=\22siphash\22 -D KBUILD_MODNAME=\22siphash\22 -D __KBUILD_MODNAME=kmod_siphash -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/siphash.ll lib/siphash.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/siphash.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7a758de0a646e378fb5d9cee110c58ea")
!4 = !{!5, !7, !10, !12, !13, !28}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !11, line: 40, baseType: !7)
!11 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !16, line: 37, size: 64, elements: !26)
!16 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!17 = distinct !DISubprogram(name: "get_unaligned_le64", scope: !16, file: !16, line: 35, type: !18, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!18 = !DISubroutineType(types: !19)
!19 = !{!5, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "p", arg: 1, scope: !17, file: !16, line: 35, type: !20)
!24 = !DILocalVariable(name: "__pptr", scope: !25, file: !16, line: 37, type: !13)
!25 = distinct !DILexicalBlock(scope: !17, file: !16, line: 37, column: 9)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !15, file: !16, line: 37, baseType: !10, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!0, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_siphash_1u64136", scope: !2, file: !3, line: 125, type: !12, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_siphash_2u64137", scope: !2, file: !3, line: 146, type: !12, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_siphash_3u64138", scope: !2, file: !3, line: 173, type: !12, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_siphash_4u64139", scope: !2, file: !3, line: 205, type: !12, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_siphash_1u32140", scope: !2, file: !3, line: 213, type: !12, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_siphash_3u32141", scope: !2, file: !3, line: 227, type: !12, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___hsiphash_unaligned142", scope: !2, file: !3, line: 309, type: !12, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsiphash_1u32143", scope: !2, file: !3, line: 322, type: !12, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsiphash_2u32144", scope: !2, file: !3, line: 339, type: !12, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsiphash_3u32145", scope: !2, file: !3, line: 359, type: !12, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hsiphash_4u32146", scope: !2, file: !3, line: 383, type: !12, isLocal: true, isDefinition: true)
!53 = !{i32 7, !"Dwarf Version", i32 5}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 8, !"cf-protection-branch", i32 1}
!57 = !{i32 4, !"function_return_thunk_extern", i32 1}
!58 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!59 = !{i32 1, !"Code Model", i32 2}
!60 = !{i32 1, !"override-stack-alignment", i32 8}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "__siphash_unaligned", scope: !3, file: !3, line: 79, type: !63, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !80)
!63 = !DISubroutineType(types: !64)
!64 = !{!5, !20, !65, !70}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 61, baseType: !67)
!66 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !68, line: 72, baseType: !69)
!68 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !68, line: 16, baseType: !29)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "siphash_key_t", file: !73, line: 21, baseType: !74)
!73 = !DIFile(filename: "./include/linux/siphash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d57c3335a3ba0d593037d2e9c3d8f6e3")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 19, size: 128, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !74, file: !73, line: 20, baseType: !77, size: 128)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 2)
!80 = !{!81, !82, !83, !84, !90, !91, !92, !93, !94, !95, !96}
!81 = !DILocalVariable(name: "data", arg: 1, scope: !62, file: !3, line: 79, type: !20)
!82 = !DILocalVariable(name: "len", arg: 2, scope: !62, file: !3, line: 79, type: !65)
!83 = !DILocalVariable(name: "key", arg: 3, scope: !62, file: !3, line: 79, type: !70)
!84 = !DILocalVariable(name: "end", scope: !62, file: !3, line: 81, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !89)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DILocalVariable(name: "left", scope: !62, file: !3, line: 82, type: !86)
!91 = !DILocalVariable(name: "m", scope: !62, file: !3, line: 83, type: !5)
!92 = !DILocalVariable(name: "v0", scope: !62, file: !3, line: 84, type: !5)
!93 = !DILocalVariable(name: "v1", scope: !62, file: !3, line: 84, type: !5)
!94 = !DILocalVariable(name: "v2", scope: !62, file: !3, line: 84, type: !5)
!95 = !DILocalVariable(name: "v3", scope: !62, file: !3, line: 84, type: !5)
!96 = !DILocalVariable(name: "b", scope: !62, file: !3, line: 84, type: !5)
!97 = !DILocation(line: 79, column: 37, scope: !62)
!98 = !DILocation(line: 79, column: 50, scope: !62)
!99 = !DILocation(line: 79, column: 76, scope: !62)
!100 = !DILocation(line: 81, column: 2, scope: !62)
!101 = !DILocation(line: 81, column: 12, scope: !62)
!102 = !DILocation(line: 81, column: 18, scope: !62)
!103 = !DILocation(line: 81, column: 25, scope: !62)
!104 = !DILocation(line: 81, column: 23, scope: !62)
!105 = !DILocation(line: 81, column: 32, scope: !62)
!106 = !DILocation(line: 81, column: 36, scope: !62)
!107 = !DILocation(line: 81, column: 29, scope: !62)
!108 = !DILocation(line: 82, column: 2, scope: !62)
!109 = !DILocation(line: 82, column: 11, scope: !62)
!110 = !DILocation(line: 82, column: 18, scope: !62)
!111 = !DILocation(line: 82, column: 22, scope: !62)
!112 = !DILocation(line: 83, column: 2, scope: !62)
!113 = !DILocation(line: 83, column: 6, scope: !62)
!114 = !DILocation(line: 84, column: 2, scope: !62)
!115 = !DILocation(line: 85, column: 2, scope: !62)
!116 = !DILocation(line: 85, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 85, column: 2)
!118 = distinct !DILexicalBlock(scope: !62, file: !3, line: 85, column: 2)
!119 = !DILocation(line: 85, column: 17, scope: !117)
!120 = !DILocation(line: 85, column: 14, scope: !117)
!121 = !DILocation(line: 85, column: 2, scope: !118)
!122 = !DILocation(line: 86, column: 26, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !3, line: 85, column: 43)
!124 = !DILocation(line: 86, column: 7, scope: !123)
!125 = !DILocation(line: 86, column: 5, scope: !123)
!126 = !DILocation(line: 87, column: 9, scope: !123)
!127 = !DILocation(line: 87, column: 6, scope: !123)
!128 = !DILocation(line: 88, column: 3, scope: !123)
!129 = !DILocation(line: 89, column: 3, scope: !123)
!130 = !DILocation(line: 90, column: 9, scope: !123)
!131 = !DILocation(line: 90, column: 6, scope: !123)
!132 = !DILocation(line: 91, column: 2, scope: !123)
!133 = !DILocation(line: 85, column: 27, scope: !117)
!134 = !DILocation(line: 85, column: 2, scope: !117)
!135 = distinct !{!135, !121, !136, !137, !138}
!136 = !DILocation(line: 91, column: 2, scope: !118)
!137 = !{!"llvm.loop.mustprogress"}
!138 = !{!"llvm.loop.unroll.disable"}
!139 = !DILocation(line: 93, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !62, file: !3, line: 93, column: 6)
!141 = !DILocation(line: 93, column: 6, scope: !62)
!142 = !DILocation(line: 94, column: 8, scope: !140)
!143 = !DILocation(line: 94, column: 5, scope: !140)
!144 = !DILocation(line: 94, column: 3, scope: !140)
!145 = !DILocation(line: 107, column: 2, scope: !62)
!146 = !DILocation(line: 108, column: 1, scope: !62)
!147 = !DILocation(line: 35, column: 50, scope: !17)
!148 = !DILocation(line: 37, column: 9, scope: !25)
!149 = !DILocation(line: 37, column: 9, scope: !17)
!150 = !DILocation(line: 37, column: 2, scope: !17)
!151 = distinct !DISubprogram(name: "rol64", scope: !152, file: !152, line: 105, type: !153, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!152 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!153 = !DISubroutineType(types: !154)
!154 = !{!7, !7, !155}
!155 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "word", arg: 1, scope: !151, file: !152, line: 105, type: !7)
!158 = !DILocalVariable(name: "shift", arg: 2, scope: !151, file: !152, line: 105, type: !155)
!159 = !DILocation(line: 105, column: 33, scope: !151)
!160 = !DILocation(line: 105, column: 52, scope: !151)
!161 = !DILocation(line: 107, column: 10, scope: !151)
!162 = !DILocation(line: 107, column: 19, scope: !151)
!163 = !DILocation(line: 107, column: 25, scope: !151)
!164 = !DILocation(line: 107, column: 15, scope: !151)
!165 = !DILocation(line: 107, column: 35, scope: !151)
!166 = !DILocation(line: 107, column: 46, scope: !151)
!167 = !DILocation(line: 107, column: 45, scope: !151)
!168 = !DILocation(line: 107, column: 53, scope: !151)
!169 = !DILocation(line: 107, column: 40, scope: !151)
!170 = !DILocation(line: 107, column: 32, scope: !151)
!171 = !DILocation(line: 107, column: 2, scope: !151)
!172 = distinct !DISubprogram(name: "load_unaligned_zeropad", scope: !173, file: !173, line: 80, type: !174, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!173 = !DIFile(filename: "./arch/x86/include/asm/word-at-a-time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9ff3ba13b74d134be400adb436d72b7")
!174 = !DISubroutineType(types: !175)
!175 = !{!29, !20}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "addr", arg: 1, scope: !172, file: !173, line: 80, type: !20)
!178 = !DILocalVariable(name: "ret", scope: !172, file: !173, line: 82, type: !29)
!179 = !DILocation(line: 80, column: 64, scope: !172)
!180 = !DILocation(line: 82, column: 2, scope: !172)
!181 = !DILocation(line: 82, column: 16, scope: !172)
!182 = !DILocation(line: 89, column: 34, scope: !172)
!183 = !DILocation(line: 84, column: 2, scope: !172)
!184 = !{i64 2785494, i64 2785523, i64 2150270328, i64 2150270372, i64 2150270395, i64 2150270428, i64 2150270459, i64 2150270498}
!185 = !DILocation(line: 91, column: 9, scope: !172)
!186 = !DILocation(line: 92, column: 1, scope: !172)
!187 = !DILocation(line: 91, column: 2, scope: !172)
!188 = distinct !DISubprogram(name: "siphash_1u64", scope: !3, file: !3, line: 116, type: !189, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!189 = !DISubroutineType(types: !190)
!190 = !{!5, !191, !70}
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!192 = !{!193, !194, !195, !196, !197, !198, !199}
!193 = !DILocalVariable(name: "first", arg: 1, scope: !188, file: !3, line: 116, type: !191)
!194 = !DILocalVariable(name: "key", arg: 2, scope: !188, file: !3, line: 116, type: !70)
!195 = !DILocalVariable(name: "v0", scope: !188, file: !3, line: 118, type: !5)
!196 = !DILocalVariable(name: "v1", scope: !188, file: !3, line: 118, type: !5)
!197 = !DILocalVariable(name: "v2", scope: !188, file: !3, line: 118, type: !5)
!198 = !DILocalVariable(name: "v3", scope: !188, file: !3, line: 118, type: !5)
!199 = !DILocalVariable(name: "b", scope: !188, file: !3, line: 118, type: !5)
!200 = !DILocation(line: 116, column: 28, scope: !188)
!201 = !DILocation(line: 116, column: 56, scope: !188)
!202 = !DILocation(line: 118, column: 2, scope: !188)
!203 = !DILocation(line: 119, column: 8, scope: !188)
!204 = !DILocation(line: 119, column: 5, scope: !188)
!205 = !DILocation(line: 120, column: 2, scope: !188)
!206 = !DILocation(line: 121, column: 2, scope: !188)
!207 = !DILocation(line: 122, column: 8, scope: !188)
!208 = !DILocation(line: 122, column: 5, scope: !188)
!209 = !DILocation(line: 123, column: 2, scope: !188)
!210 = !DILocation(line: 124, column: 1, scope: !188)
!211 = distinct !DISubprogram(name: "siphash_2u64", scope: !3, file: !3, line: 133, type: !212, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!5, !191, !191, !70}
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222}
!215 = !DILocalVariable(name: "first", arg: 1, scope: !211, file: !3, line: 133, type: !191)
!216 = !DILocalVariable(name: "second", arg: 2, scope: !211, file: !3, line: 133, type: !191)
!217 = !DILocalVariable(name: "key", arg: 3, scope: !211, file: !3, line: 133, type: !70)
!218 = !DILocalVariable(name: "v0", scope: !211, file: !3, line: 135, type: !5)
!219 = !DILocalVariable(name: "v1", scope: !211, file: !3, line: 135, type: !5)
!220 = !DILocalVariable(name: "v2", scope: !211, file: !3, line: 135, type: !5)
!221 = !DILocalVariable(name: "v3", scope: !211, file: !3, line: 135, type: !5)
!222 = !DILocalVariable(name: "b", scope: !211, file: !3, line: 135, type: !5)
!223 = !DILocation(line: 133, column: 28, scope: !211)
!224 = !DILocation(line: 133, column: 45, scope: !211)
!225 = !DILocation(line: 133, column: 74, scope: !211)
!226 = !DILocation(line: 135, column: 2, scope: !211)
!227 = !DILocation(line: 136, column: 8, scope: !211)
!228 = !DILocation(line: 136, column: 5, scope: !211)
!229 = !DILocation(line: 137, column: 2, scope: !211)
!230 = !DILocation(line: 138, column: 2, scope: !211)
!231 = !DILocation(line: 139, column: 8, scope: !211)
!232 = !DILocation(line: 139, column: 5, scope: !211)
!233 = !DILocation(line: 140, column: 8, scope: !211)
!234 = !DILocation(line: 140, column: 5, scope: !211)
!235 = !DILocation(line: 141, column: 2, scope: !211)
!236 = !DILocation(line: 142, column: 2, scope: !211)
!237 = !DILocation(line: 143, column: 8, scope: !211)
!238 = !DILocation(line: 143, column: 5, scope: !211)
!239 = !DILocation(line: 144, column: 2, scope: !211)
!240 = !DILocation(line: 145, column: 1, scope: !211)
!241 = distinct !DISubprogram(name: "siphash_3u64", scope: !3, file: !3, line: 155, type: !242, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!5, !191, !191, !191, !70}
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253}
!245 = !DILocalVariable(name: "first", arg: 1, scope: !241, file: !3, line: 155, type: !191)
!246 = !DILocalVariable(name: "second", arg: 2, scope: !241, file: !3, line: 155, type: !191)
!247 = !DILocalVariable(name: "third", arg: 3, scope: !241, file: !3, line: 155, type: !191)
!248 = !DILocalVariable(name: "key", arg: 4, scope: !241, file: !3, line: 156, type: !70)
!249 = !DILocalVariable(name: "v0", scope: !241, file: !3, line: 158, type: !5)
!250 = !DILocalVariable(name: "v1", scope: !241, file: !3, line: 158, type: !5)
!251 = !DILocalVariable(name: "v2", scope: !241, file: !3, line: 158, type: !5)
!252 = !DILocalVariable(name: "v3", scope: !241, file: !3, line: 158, type: !5)
!253 = !DILocalVariable(name: "b", scope: !241, file: !3, line: 158, type: !5)
!254 = !DILocation(line: 155, column: 28, scope: !241)
!255 = !DILocation(line: 155, column: 45, scope: !241)
!256 = !DILocation(line: 155, column: 63, scope: !241)
!257 = !DILocation(line: 156, column: 25, scope: !241)
!258 = !DILocation(line: 158, column: 2, scope: !241)
!259 = !DILocation(line: 159, column: 8, scope: !241)
!260 = !DILocation(line: 159, column: 5, scope: !241)
!261 = !DILocation(line: 160, column: 2, scope: !241)
!262 = !DILocation(line: 161, column: 2, scope: !241)
!263 = !DILocation(line: 162, column: 8, scope: !241)
!264 = !DILocation(line: 162, column: 5, scope: !241)
!265 = !DILocation(line: 163, column: 8, scope: !241)
!266 = !DILocation(line: 163, column: 5, scope: !241)
!267 = !DILocation(line: 164, column: 2, scope: !241)
!268 = !DILocation(line: 165, column: 2, scope: !241)
!269 = !DILocation(line: 166, column: 8, scope: !241)
!270 = !DILocation(line: 166, column: 5, scope: !241)
!271 = !DILocation(line: 167, column: 8, scope: !241)
!272 = !DILocation(line: 167, column: 5, scope: !241)
!273 = !DILocation(line: 168, column: 2, scope: !241)
!274 = !DILocation(line: 169, column: 2, scope: !241)
!275 = !DILocation(line: 170, column: 8, scope: !241)
!276 = !DILocation(line: 170, column: 5, scope: !241)
!277 = !DILocation(line: 171, column: 2, scope: !241)
!278 = !DILocation(line: 172, column: 1, scope: !241)
!279 = distinct !DISubprogram(name: "siphash_4u64", scope: !3, file: !3, line: 183, type: !280, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!5, !191, !191, !191, !191, !70}
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!283 = !DILocalVariable(name: "first", arg: 1, scope: !279, file: !3, line: 183, type: !191)
!284 = !DILocalVariable(name: "second", arg: 2, scope: !279, file: !3, line: 183, type: !191)
!285 = !DILocalVariable(name: "third", arg: 3, scope: !279, file: !3, line: 183, type: !191)
!286 = !DILocalVariable(name: "forth", arg: 4, scope: !279, file: !3, line: 184, type: !191)
!287 = !DILocalVariable(name: "key", arg: 5, scope: !279, file: !3, line: 184, type: !70)
!288 = !DILocalVariable(name: "v0", scope: !279, file: !3, line: 186, type: !5)
!289 = !DILocalVariable(name: "v1", scope: !279, file: !3, line: 186, type: !5)
!290 = !DILocalVariable(name: "v2", scope: !279, file: !3, line: 186, type: !5)
!291 = !DILocalVariable(name: "v3", scope: !279, file: !3, line: 186, type: !5)
!292 = !DILocalVariable(name: "b", scope: !279, file: !3, line: 186, type: !5)
!293 = !DILocation(line: 183, column: 28, scope: !279)
!294 = !DILocation(line: 183, column: 45, scope: !279)
!295 = !DILocation(line: 183, column: 63, scope: !279)
!296 = !DILocation(line: 184, column: 14, scope: !279)
!297 = !DILocation(line: 184, column: 42, scope: !279)
!298 = !DILocation(line: 186, column: 2, scope: !279)
!299 = !DILocation(line: 187, column: 8, scope: !279)
!300 = !DILocation(line: 187, column: 5, scope: !279)
!301 = !DILocation(line: 188, column: 2, scope: !279)
!302 = !DILocation(line: 189, column: 2, scope: !279)
!303 = !DILocation(line: 190, column: 8, scope: !279)
!304 = !DILocation(line: 190, column: 5, scope: !279)
!305 = !DILocation(line: 191, column: 8, scope: !279)
!306 = !DILocation(line: 191, column: 5, scope: !279)
!307 = !DILocation(line: 192, column: 2, scope: !279)
!308 = !DILocation(line: 193, column: 2, scope: !279)
!309 = !DILocation(line: 194, column: 8, scope: !279)
!310 = !DILocation(line: 194, column: 5, scope: !279)
!311 = !DILocation(line: 195, column: 8, scope: !279)
!312 = !DILocation(line: 195, column: 5, scope: !279)
!313 = !DILocation(line: 196, column: 2, scope: !279)
!314 = !DILocation(line: 197, column: 2, scope: !279)
!315 = !DILocation(line: 198, column: 8, scope: !279)
!316 = !DILocation(line: 198, column: 5, scope: !279)
!317 = !DILocation(line: 199, column: 8, scope: !279)
!318 = !DILocation(line: 199, column: 5, scope: !279)
!319 = !DILocation(line: 200, column: 2, scope: !279)
!320 = !DILocation(line: 201, column: 2, scope: !279)
!321 = !DILocation(line: 202, column: 8, scope: !279)
!322 = !DILocation(line: 202, column: 5, scope: !279)
!323 = !DILocation(line: 203, column: 2, scope: !279)
!324 = !DILocation(line: 204, column: 1, scope: !279)
!325 = distinct !DISubprogram(name: "siphash_1u32", scope: !3, file: !3, line: 207, type: !326, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!326 = !DISubroutineType(types: !327)
!327 = !{!5, !328, !70}
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !155)
!331 = !{!332, !333, !334, !335, !336, !337, !338}
!332 = !DILocalVariable(name: "first", arg: 1, scope: !325, file: !3, line: 207, type: !328)
!333 = !DILocalVariable(name: "key", arg: 2, scope: !325, file: !3, line: 207, type: !70)
!334 = !DILocalVariable(name: "v0", scope: !325, file: !3, line: 209, type: !5)
!335 = !DILocalVariable(name: "v1", scope: !325, file: !3, line: 209, type: !5)
!336 = !DILocalVariable(name: "v2", scope: !325, file: !3, line: 209, type: !5)
!337 = !DILocalVariable(name: "v3", scope: !325, file: !3, line: 209, type: !5)
!338 = !DILocalVariable(name: "b", scope: !325, file: !3, line: 209, type: !5)
!339 = !DILocation(line: 207, column: 28, scope: !325)
!340 = !DILocation(line: 207, column: 56, scope: !325)
!341 = !DILocation(line: 209, column: 2, scope: !325)
!342 = !DILocation(line: 210, column: 7, scope: !325)
!343 = !DILocation(line: 210, column: 4, scope: !325)
!344 = !DILocation(line: 211, column: 2, scope: !325)
!345 = !DILocation(line: 212, column: 1, scope: !325)
!346 = distinct !DISubprogram(name: "siphash_3u32", scope: !3, file: !3, line: 215, type: !347, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!5, !328, !328, !328, !70}
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!350 = !DILocalVariable(name: "first", arg: 1, scope: !346, file: !3, line: 215, type: !328)
!351 = !DILocalVariable(name: "second", arg: 2, scope: !346, file: !3, line: 215, type: !328)
!352 = !DILocalVariable(name: "third", arg: 3, scope: !346, file: !3, line: 215, type: !328)
!353 = !DILocalVariable(name: "key", arg: 4, scope: !346, file: !3, line: 216, type: !70)
!354 = !DILocalVariable(name: "combined", scope: !346, file: !3, line: 218, type: !5)
!355 = !DILocalVariable(name: "v0", scope: !346, file: !3, line: 219, type: !5)
!356 = !DILocalVariable(name: "v1", scope: !346, file: !3, line: 219, type: !5)
!357 = !DILocalVariable(name: "v2", scope: !346, file: !3, line: 219, type: !5)
!358 = !DILocalVariable(name: "v3", scope: !346, file: !3, line: 219, type: !5)
!359 = !DILocalVariable(name: "b", scope: !346, file: !3, line: 219, type: !5)
!360 = !DILocation(line: 215, column: 28, scope: !346)
!361 = !DILocation(line: 215, column: 45, scope: !346)
!362 = !DILocation(line: 215, column: 63, scope: !346)
!363 = !DILocation(line: 216, column: 25, scope: !346)
!364 = !DILocation(line: 218, column: 2, scope: !346)
!365 = !DILocation(line: 218, column: 6, scope: !346)
!366 = !DILocation(line: 218, column: 22, scope: !346)
!367 = !DILocation(line: 218, column: 17, scope: !346)
!368 = !DILocation(line: 218, column: 29, scope: !346)
!369 = !DILocation(line: 218, column: 37, scope: !346)
!370 = !DILocation(line: 218, column: 35, scope: !346)
!371 = !DILocation(line: 219, column: 2, scope: !346)
!372 = !DILocation(line: 220, column: 8, scope: !346)
!373 = !DILocation(line: 220, column: 5, scope: !346)
!374 = !DILocation(line: 221, column: 2, scope: !346)
!375 = !DILocation(line: 222, column: 2, scope: !346)
!376 = !DILocation(line: 223, column: 8, scope: !346)
!377 = !DILocation(line: 223, column: 5, scope: !346)
!378 = !DILocation(line: 224, column: 7, scope: !346)
!379 = !DILocation(line: 224, column: 4, scope: !346)
!380 = !DILocation(line: 225, column: 2, scope: !346)
!381 = !DILocation(line: 226, column: 1, scope: !346)
!382 = distinct !DISubprogram(name: "__hsiphash_unaligned", scope: !3, file: !3, line: 279, type: !383, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!383 = !DISubroutineType(types: !384)
!384 = !{!329, !20, !65, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "hsiphash_key_t", file: !73, line: 93, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !73, line: 91, size: 128, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !388, file: !73, line: 92, baseType: !391, size: 128)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !78)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!393 = !DILocalVariable(name: "data", arg: 1, scope: !382, file: !3, line: 279, type: !20)
!394 = !DILocalVariable(name: "len", arg: 2, scope: !382, file: !3, line: 279, type: !65)
!395 = !DILocalVariable(name: "key", arg: 3, scope: !382, file: !3, line: 280, type: !385)
!396 = !DILocalVariable(name: "end", scope: !382, file: !3, line: 282, type: !85)
!397 = !DILocalVariable(name: "left", scope: !382, file: !3, line: 283, type: !86)
!398 = !DILocalVariable(name: "m", scope: !382, file: !3, line: 284, type: !5)
!399 = !DILocalVariable(name: "v0", scope: !382, file: !3, line: 285, type: !5)
!400 = !DILocalVariable(name: "v1", scope: !382, file: !3, line: 285, type: !5)
!401 = !DILocalVariable(name: "v2", scope: !382, file: !3, line: 285, type: !5)
!402 = !DILocalVariable(name: "v3", scope: !382, file: !3, line: 285, type: !5)
!403 = !DILocalVariable(name: "b", scope: !382, file: !3, line: 285, type: !5)
!404 = !DILocation(line: 279, column: 38, scope: !382)
!405 = !DILocation(line: 279, column: 51, scope: !382)
!406 = !DILocation(line: 280, column: 27, scope: !382)
!407 = !DILocation(line: 282, column: 2, scope: !382)
!408 = !DILocation(line: 282, column: 12, scope: !382)
!409 = !DILocation(line: 282, column: 18, scope: !382)
!410 = !DILocation(line: 282, column: 25, scope: !382)
!411 = !DILocation(line: 282, column: 23, scope: !382)
!412 = !DILocation(line: 282, column: 32, scope: !382)
!413 = !DILocation(line: 282, column: 36, scope: !382)
!414 = !DILocation(line: 282, column: 29, scope: !382)
!415 = !DILocation(line: 283, column: 2, scope: !382)
!416 = !DILocation(line: 283, column: 11, scope: !382)
!417 = !DILocation(line: 283, column: 18, scope: !382)
!418 = !DILocation(line: 283, column: 22, scope: !382)
!419 = !DILocation(line: 284, column: 2, scope: !382)
!420 = !DILocation(line: 284, column: 6, scope: !382)
!421 = !DILocation(line: 285, column: 2, scope: !382)
!422 = !DILocation(line: 286, column: 2, scope: !382)
!423 = !DILocation(line: 286, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 286, column: 2)
!425 = distinct !DILexicalBlock(scope: !382, file: !3, line: 286, column: 2)
!426 = !DILocation(line: 286, column: 17, scope: !424)
!427 = !DILocation(line: 286, column: 14, scope: !424)
!428 = !DILocation(line: 286, column: 2, scope: !425)
!429 = !DILocation(line: 287, column: 26, scope: !430)
!430 = distinct !DILexicalBlock(scope: !424, file: !3, line: 286, column: 43)
!431 = !DILocation(line: 287, column: 7, scope: !430)
!432 = !DILocation(line: 287, column: 5, scope: !430)
!433 = !DILocation(line: 288, column: 9, scope: !430)
!434 = !DILocation(line: 288, column: 6, scope: !430)
!435 = !DILocation(line: 289, column: 3, scope: !430)
!436 = !DILocation(line: 290, column: 9, scope: !430)
!437 = !DILocation(line: 290, column: 6, scope: !430)
!438 = !DILocation(line: 291, column: 2, scope: !430)
!439 = !DILocation(line: 286, column: 27, scope: !424)
!440 = !DILocation(line: 286, column: 2, scope: !424)
!441 = distinct !{!441, !428, !442, !137, !138}
!442 = !DILocation(line: 291, column: 2, scope: !425)
!443 = !DILocation(line: 293, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !382, file: !3, line: 293, column: 6)
!445 = !DILocation(line: 293, column: 6, scope: !382)
!446 = !DILocation(line: 294, column: 8, scope: !444)
!447 = !DILocation(line: 294, column: 5, scope: !444)
!448 = !DILocation(line: 294, column: 3, scope: !444)
!449 = !DILocation(line: 307, column: 2, scope: !382)
!450 = !DILocation(line: 308, column: 1, scope: !382)
!451 = distinct !DISubprogram(name: "hsiphash_1u32", scope: !3, file: !3, line: 316, type: !452, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!452 = !DISubroutineType(types: !453)
!453 = !{!329, !328, !385}
!454 = !{!455, !456, !457, !458, !459, !460, !461}
!455 = !DILocalVariable(name: "first", arg: 1, scope: !451, file: !3, line: 316, type: !328)
!456 = !DILocalVariable(name: "key", arg: 2, scope: !451, file: !3, line: 316, type: !385)
!457 = !DILocalVariable(name: "v0", scope: !451, file: !3, line: 318, type: !5)
!458 = !DILocalVariable(name: "v1", scope: !451, file: !3, line: 318, type: !5)
!459 = !DILocalVariable(name: "v2", scope: !451, file: !3, line: 318, type: !5)
!460 = !DILocalVariable(name: "v3", scope: !451, file: !3, line: 318, type: !5)
!461 = !DILocalVariable(name: "b", scope: !451, file: !3, line: 318, type: !5)
!462 = !DILocation(line: 316, column: 29, scope: !451)
!463 = !DILocation(line: 316, column: 58, scope: !451)
!464 = !DILocation(line: 318, column: 2, scope: !451)
!465 = !DILocation(line: 319, column: 7, scope: !451)
!466 = !DILocation(line: 319, column: 4, scope: !451)
!467 = !DILocation(line: 320, column: 2, scope: !451)
!468 = !DILocation(line: 321, column: 1, scope: !451)
!469 = distinct !DISubprogram(name: "hsiphash_2u32", scope: !3, file: !3, line: 330, type: !470, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!329, !328, !328, !385}
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481}
!473 = !DILocalVariable(name: "first", arg: 1, scope: !469, file: !3, line: 330, type: !328)
!474 = !DILocalVariable(name: "second", arg: 2, scope: !469, file: !3, line: 330, type: !328)
!475 = !DILocalVariable(name: "key", arg: 3, scope: !469, file: !3, line: 330, type: !385)
!476 = !DILocalVariable(name: "combined", scope: !469, file: !3, line: 332, type: !5)
!477 = !DILocalVariable(name: "v0", scope: !469, file: !3, line: 333, type: !5)
!478 = !DILocalVariable(name: "v1", scope: !469, file: !3, line: 333, type: !5)
!479 = !DILocalVariable(name: "v2", scope: !469, file: !3, line: 333, type: !5)
!480 = !DILocalVariable(name: "v3", scope: !469, file: !3, line: 333, type: !5)
!481 = !DILocalVariable(name: "b", scope: !469, file: !3, line: 333, type: !5)
!482 = !DILocation(line: 330, column: 29, scope: !469)
!483 = !DILocation(line: 330, column: 46, scope: !469)
!484 = !DILocation(line: 330, column: 76, scope: !469)
!485 = !DILocation(line: 332, column: 2, scope: !469)
!486 = !DILocation(line: 332, column: 6, scope: !469)
!487 = !DILocation(line: 332, column: 22, scope: !469)
!488 = !DILocation(line: 332, column: 17, scope: !469)
!489 = !DILocation(line: 332, column: 29, scope: !469)
!490 = !DILocation(line: 332, column: 37, scope: !469)
!491 = !DILocation(line: 332, column: 35, scope: !469)
!492 = !DILocation(line: 333, column: 2, scope: !469)
!493 = !DILocation(line: 334, column: 8, scope: !469)
!494 = !DILocation(line: 334, column: 5, scope: !469)
!495 = !DILocation(line: 335, column: 2, scope: !469)
!496 = !DILocation(line: 336, column: 8, scope: !469)
!497 = !DILocation(line: 336, column: 5, scope: !469)
!498 = !DILocation(line: 337, column: 2, scope: !469)
!499 = !DILocation(line: 338, column: 1, scope: !469)
!500 = distinct !DISubprogram(name: "hsiphash_3u32", scope: !3, file: !3, line: 348, type: !501, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!329, !328, !328, !328, !385}
!503 = !{!504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!504 = !DILocalVariable(name: "first", arg: 1, scope: !500, file: !3, line: 348, type: !328)
!505 = !DILocalVariable(name: "second", arg: 2, scope: !500, file: !3, line: 348, type: !328)
!506 = !DILocalVariable(name: "third", arg: 3, scope: !500, file: !3, line: 348, type: !328)
!507 = !DILocalVariable(name: "key", arg: 4, scope: !500, file: !3, line: 349, type: !385)
!508 = !DILocalVariable(name: "combined", scope: !500, file: !3, line: 351, type: !5)
!509 = !DILocalVariable(name: "v0", scope: !500, file: !3, line: 352, type: !5)
!510 = !DILocalVariable(name: "v1", scope: !500, file: !3, line: 352, type: !5)
!511 = !DILocalVariable(name: "v2", scope: !500, file: !3, line: 352, type: !5)
!512 = !DILocalVariable(name: "v3", scope: !500, file: !3, line: 352, type: !5)
!513 = !DILocalVariable(name: "b", scope: !500, file: !3, line: 352, type: !5)
!514 = !DILocation(line: 348, column: 29, scope: !500)
!515 = !DILocation(line: 348, column: 46, scope: !500)
!516 = !DILocation(line: 348, column: 64, scope: !500)
!517 = !DILocation(line: 349, column: 27, scope: !500)
!518 = !DILocation(line: 351, column: 2, scope: !500)
!519 = !DILocation(line: 351, column: 6, scope: !500)
!520 = !DILocation(line: 351, column: 22, scope: !500)
!521 = !DILocation(line: 351, column: 17, scope: !500)
!522 = !DILocation(line: 351, column: 29, scope: !500)
!523 = !DILocation(line: 351, column: 37, scope: !500)
!524 = !DILocation(line: 351, column: 35, scope: !500)
!525 = !DILocation(line: 352, column: 2, scope: !500)
!526 = !DILocation(line: 353, column: 8, scope: !500)
!527 = !DILocation(line: 353, column: 5, scope: !500)
!528 = !DILocation(line: 354, column: 2, scope: !500)
!529 = !DILocation(line: 355, column: 8, scope: !500)
!530 = !DILocation(line: 355, column: 5, scope: !500)
!531 = !DILocation(line: 356, column: 7, scope: !500)
!532 = !DILocation(line: 356, column: 4, scope: !500)
!533 = !DILocation(line: 357, column: 2, scope: !500)
!534 = !DILocation(line: 358, column: 1, scope: !500)
!535 = distinct !DISubprogram(name: "hsiphash_4u32", scope: !3, file: !3, line: 369, type: !536, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{!329, !328, !328, !328, !328, !385}
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!539 = !DILocalVariable(name: "first", arg: 1, scope: !535, file: !3, line: 369, type: !328)
!540 = !DILocalVariable(name: "second", arg: 2, scope: !535, file: !3, line: 369, type: !328)
!541 = !DILocalVariable(name: "third", arg: 3, scope: !535, file: !3, line: 369, type: !328)
!542 = !DILocalVariable(name: "forth", arg: 4, scope: !535, file: !3, line: 370, type: !328)
!543 = !DILocalVariable(name: "key", arg: 5, scope: !535, file: !3, line: 370, type: !385)
!544 = !DILocalVariable(name: "combined", scope: !535, file: !3, line: 372, type: !5)
!545 = !DILocalVariable(name: "v0", scope: !535, file: !3, line: 373, type: !5)
!546 = !DILocalVariable(name: "v1", scope: !535, file: !3, line: 373, type: !5)
!547 = !DILocalVariable(name: "v2", scope: !535, file: !3, line: 373, type: !5)
!548 = !DILocalVariable(name: "v3", scope: !535, file: !3, line: 373, type: !5)
!549 = !DILocalVariable(name: "b", scope: !535, file: !3, line: 373, type: !5)
!550 = !DILocation(line: 369, column: 29, scope: !535)
!551 = !DILocation(line: 369, column: 46, scope: !535)
!552 = !DILocation(line: 369, column: 64, scope: !535)
!553 = !DILocation(line: 370, column: 15, scope: !535)
!554 = !DILocation(line: 370, column: 44, scope: !535)
!555 = !DILocation(line: 372, column: 2, scope: !535)
!556 = !DILocation(line: 372, column: 6, scope: !535)
!557 = !DILocation(line: 372, column: 22, scope: !535)
!558 = !DILocation(line: 372, column: 17, scope: !535)
!559 = !DILocation(line: 372, column: 29, scope: !535)
!560 = !DILocation(line: 372, column: 37, scope: !535)
!561 = !DILocation(line: 372, column: 35, scope: !535)
!562 = !DILocation(line: 373, column: 2, scope: !535)
!563 = !DILocation(line: 374, column: 8, scope: !535)
!564 = !DILocation(line: 374, column: 5, scope: !535)
!565 = !DILocation(line: 375, column: 2, scope: !535)
!566 = !DILocation(line: 376, column: 8, scope: !535)
!567 = !DILocation(line: 376, column: 5, scope: !535)
!568 = !DILocation(line: 377, column: 18, scope: !535)
!569 = !DILocation(line: 377, column: 13, scope: !535)
!570 = !DILocation(line: 377, column: 24, scope: !535)
!571 = !DILocation(line: 377, column: 32, scope: !535)
!572 = !DILocation(line: 377, column: 30, scope: !535)
!573 = !DILocation(line: 377, column: 11, scope: !535)
!574 = !DILocation(line: 378, column: 8, scope: !535)
!575 = !DILocation(line: 378, column: 5, scope: !535)
!576 = !DILocation(line: 379, column: 2, scope: !535)
!577 = !DILocation(line: 380, column: 8, scope: !535)
!578 = !DILocation(line: 380, column: 5, scope: !535)
!579 = !DILocation(line: 381, column: 2, scope: !535)
!580 = !DILocation(line: 382, column: 1, scope: !535)
