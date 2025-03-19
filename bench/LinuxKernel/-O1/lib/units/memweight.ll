; ModuleID = 'lib/memweight.c'
source_filename = "lib/memweight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memweight: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad memweight ; .previous"

@.str = private unnamed_addr constant [16 x i8] c"lib/memweight.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_memweight2 = internal global ptr @memweight, section ".discard.addressable", align 8, !dbg !7
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_memweight2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @memweight(ptr noundef %ptr, i64 noundef %bytes) #0 align 16 !dbg !29 {
entry:
  %ptr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  %longs = alloca i64, align 8
  %bitmap = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !40, metadata !DIExpression()), !dbg !48
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !41, metadata !DIExpression()), !dbg !49
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #8, !dbg !50
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !42, metadata !DIExpression()), !dbg !51
  store i64 0, ptr %ret, align 8, !dbg !51
  call void @llvm.lifetime.start.p0(i64 8, ptr %longs) #8, !dbg !52
  call void @llvm.dbg.declare(metadata ptr %longs, metadata !43, metadata !DIExpression()), !dbg !53
  call void @llvm.lifetime.start.p0(i64 8, ptr %bitmap) #8, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %bitmap, metadata !44, metadata !DIExpression()), !dbg !55
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !56
  store ptr %0, ptr %bitmap, align 8, !dbg !55
  br label %for.cond, !dbg !57

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !58
  %cmp = icmp ugt i64 %1, 0, !dbg !61
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !62

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %bitmap, align 8, !dbg !63
  %3 = ptrtoint ptr %2 to i64, !dbg !64
  %rem = urem i64 %3, 8, !dbg !65
  %tobool = icmp ne i64 %rem, 0, !dbg !62
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !66
  br i1 %4, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %land.end
  %5 = load ptr, ptr %bitmap, align 8, !dbg !68
  %6 = load i8, ptr %5, align 1, !dbg !68
  %7 = call i1 @llvm.is.constant.i8(i8 %6), !dbg !68
  br i1 %7, label %cond.true, label %cond.false, !dbg !68

cond.true:                                        ; preds = %for.body
  %8 = load ptr, ptr %bitmap, align 8, !dbg !68
  %9 = load i8, ptr %8, align 1, !dbg !68
  %conv = zext i8 %9 to i64, !dbg !68
  %and = and i64 %conv, 1, !dbg !68
  %tobool1 = icmp ne i64 %and, 0, !dbg !68
  %lnot = xor i1 %tobool1, true, !dbg !68
  %lnot2 = xor i1 %lnot, true, !dbg !68
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !68
  %10 = load ptr, ptr %bitmap, align 8, !dbg !68
  %11 = load i8, ptr %10, align 1, !dbg !68
  %conv3 = zext i8 %11 to i64, !dbg !68
  %and4 = and i64 %conv3, 2, !dbg !68
  %tobool5 = icmp ne i64 %and4, 0, !dbg !68
  %lnot6 = xor i1 %tobool5, true, !dbg !68
  %lnot8 = xor i1 %lnot6, true, !dbg !68
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !68
  %add = add i32 %lnot.ext, %lnot.ext9, !dbg !68
  %12 = load ptr, ptr %bitmap, align 8, !dbg !68
  %13 = load i8, ptr %12, align 1, !dbg !68
  %conv10 = zext i8 %13 to i64, !dbg !68
  %and11 = and i64 %conv10, 4, !dbg !68
  %tobool12 = icmp ne i64 %and11, 0, !dbg !68
  %lnot13 = xor i1 %tobool12, true, !dbg !68
  %lnot15 = xor i1 %lnot13, true, !dbg !68
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !68
  %add17 = add i32 %add, %lnot.ext16, !dbg !68
  %14 = load ptr, ptr %bitmap, align 8, !dbg !68
  %15 = load i8, ptr %14, align 1, !dbg !68
  %conv18 = zext i8 %15 to i64, !dbg !68
  %and19 = and i64 %conv18, 8, !dbg !68
  %tobool20 = icmp ne i64 %and19, 0, !dbg !68
  %lnot21 = xor i1 %tobool20, true, !dbg !68
  %lnot23 = xor i1 %lnot21, true, !dbg !68
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !68
  %add25 = add i32 %add17, %lnot.ext24, !dbg !68
  %16 = load ptr, ptr %bitmap, align 8, !dbg !68
  %17 = load i8, ptr %16, align 1, !dbg !68
  %conv26 = zext i8 %17 to i64, !dbg !68
  %and27 = and i64 %conv26, 16, !dbg !68
  %tobool28 = icmp ne i64 %and27, 0, !dbg !68
  %lnot29 = xor i1 %tobool28, true, !dbg !68
  %lnot31 = xor i1 %lnot29, true, !dbg !68
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !68
  %add33 = add i32 %add25, %lnot.ext32, !dbg !68
  %18 = load ptr, ptr %bitmap, align 8, !dbg !68
  %19 = load i8, ptr %18, align 1, !dbg !68
  %conv34 = zext i8 %19 to i64, !dbg !68
  %and35 = and i64 %conv34, 32, !dbg !68
  %tobool36 = icmp ne i64 %and35, 0, !dbg !68
  %lnot37 = xor i1 %tobool36, true, !dbg !68
  %lnot39 = xor i1 %lnot37, true, !dbg !68
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !68
  %add41 = add i32 %add33, %lnot.ext40, !dbg !68
  %20 = load ptr, ptr %bitmap, align 8, !dbg !68
  %21 = load i8, ptr %20, align 1, !dbg !68
  %conv42 = zext i8 %21 to i64, !dbg !68
  %and43 = and i64 %conv42, 64, !dbg !68
  %tobool44 = icmp ne i64 %and43, 0, !dbg !68
  %lnot45 = xor i1 %tobool44, true, !dbg !68
  %lnot47 = xor i1 %lnot45, true, !dbg !68
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !68
  %add49 = add i32 %add41, %lnot.ext48, !dbg !68
  %22 = load ptr, ptr %bitmap, align 8, !dbg !68
  %23 = load i8, ptr %22, align 1, !dbg !68
  %conv50 = zext i8 %23 to i64, !dbg !68
  %and51 = and i64 %conv50, 128, !dbg !68
  %tobool52 = icmp ne i64 %and51, 0, !dbg !68
  %lnot53 = xor i1 %tobool52, true, !dbg !68
  %lnot55 = xor i1 %lnot53, true, !dbg !68
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !68
  %add57 = add i32 %add49, %lnot.ext56, !dbg !68
  br label %cond.end, !dbg !68

cond.false:                                       ; preds = %for.body
  %24 = load ptr, ptr %bitmap, align 8, !dbg !68
  %25 = load i8, ptr %24, align 1, !dbg !68
  %conv58 = zext i8 %25 to i32, !dbg !68
  %call = call i32 @__arch_hweight8(i32 noundef %conv58) #9, !dbg !68
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add57, %cond.true ], [ %call, %cond.false ], !dbg !68
  %conv59 = zext i32 %cond to i64, !dbg !68
  %26 = load i64, ptr %ret, align 8, !dbg !69
  %add60 = add i64 %26, %conv59, !dbg !69
  store i64 %add60, ptr %ret, align 8, !dbg !69
  br label %for.inc, !dbg !70

for.inc:                                          ; preds = %cond.end
  %27 = load i64, ptr %bytes.addr, align 8, !dbg !71
  %dec = add i64 %27, -1, !dbg !71
  store i64 %dec, ptr %bytes.addr, align 8, !dbg !71
  %28 = load ptr, ptr %bitmap, align 8, !dbg !72
  %incdec.ptr = getelementptr i8, ptr %28, i32 1, !dbg !72
  store ptr %incdec.ptr, ptr %bitmap, align 8, !dbg !72
  br label %for.cond, !dbg !73, !llvm.loop !74

for.end:                                          ; preds = %land.end
  %29 = load i64, ptr %bytes.addr, align 8, !dbg !78
  %div = udiv i64 %29, 8, !dbg !79
  store i64 %div, ptr %longs, align 8, !dbg !80
  %30 = load i64, ptr %longs, align 8, !dbg !81
  %tobool61 = icmp ne i64 %30, 0, !dbg !81
  br i1 %tobool61, label %if.then, label %if.end86, !dbg !83

if.then:                                          ; preds = %for.end
  br label %do.body, !dbg !84

do.body:                                          ; preds = %if.then
  %31 = load i64, ptr %longs, align 8, !dbg !86
  %cmp62 = icmp uge i64 %31, 33554431, !dbg !86
  %lnot64 = xor i1 %cmp62, true, !dbg !86
  %lnot66 = xor i1 %lnot64, true, !dbg !86
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !86
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !86
  %expval = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !86
  %tobool69 = icmp ne i64 %expval, 0, !dbg !86
  br i1 %tobool69, label %if.then70, label %if.end, !dbg !89

if.then70:                                        ; preds = %do.body
  br label %do.body71, !dbg !86

do.body71:                                        ; preds = %if.then70
  br label %do.body72, !dbg !90

do.body72:                                        ; preds = %do.body71
  br label %do.cond, !dbg !92

do.cond:                                          ; preds = %do.body72
  br label %do.end, !dbg !92

do.end:                                           ; preds = %do.cond
  br label %do.body73, !dbg !90

do.body73:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 23, i32 0, i64 12) #8, !dbg !94, !srcloc !96
  br label %do.cond74, !dbg !94

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !94

do.end75:                                         ; preds = %do.cond74
  unreachable, !dbg !90

do.cond76:                                        ; No predecessors!
  br label %do.end77, !dbg !90

do.end77:                                         ; preds = %do.cond76
  br label %if.end, !dbg !90

if.end:                                           ; preds = %do.end77, %do.body
  br label %do.cond78, !dbg !89

do.cond78:                                        ; preds = %if.end
  br label %do.end79, !dbg !89

do.end79:                                         ; preds = %do.cond78
  %32 = load ptr, ptr %bitmap, align 8, !dbg !97
  %33 = load i64, ptr %longs, align 8, !dbg !98
  %mul = mul i64 %33, 64, !dbg !99
  %conv80 = trunc i64 %mul to i32, !dbg !98
  %call81 = call i32 @bitmap_weight(ptr noundef %32, i32 noundef %conv80) #9, !dbg !100
  %conv82 = zext i32 %call81 to i64, !dbg !100
  %34 = load i64, ptr %ret, align 8, !dbg !101
  %add83 = add i64 %34, %conv82, !dbg !101
  store i64 %add83, ptr %ret, align 8, !dbg !101
  %35 = load i64, ptr %longs, align 8, !dbg !102
  %mul84 = mul i64 %35, 8, !dbg !103
  %36 = load i64, ptr %bytes.addr, align 8, !dbg !104
  %sub = sub i64 %36, %mul84, !dbg !104
  store i64 %sub, ptr %bytes.addr, align 8, !dbg !104
  %37 = load i64, ptr %longs, align 8, !dbg !105
  %mul85 = mul i64 %37, 8, !dbg !106
  %38 = load ptr, ptr %bitmap, align 8, !dbg !107
  %add.ptr = getelementptr i8, ptr %38, i64 %mul85, !dbg !107
  store ptr %add.ptr, ptr %bitmap, align 8, !dbg !107
  br label %if.end86, !dbg !108

if.end86:                                         ; preds = %do.end79, %for.end
  br label %for.cond87, !dbg !109

for.cond87:                                       ; preds = %for.inc162, %if.end86
  %39 = load i64, ptr %bytes.addr, align 8, !dbg !110
  %cmp88 = icmp ugt i64 %39, 0, !dbg !113
  br i1 %cmp88, label %for.body90, label %for.end165, !dbg !114

for.body90:                                       ; preds = %for.cond87
  %40 = load ptr, ptr %bitmap, align 8, !dbg !115
  %41 = load i8, ptr %40, align 1, !dbg !115
  %42 = call i1 @llvm.is.constant.i8(i8 %41), !dbg !115
  br i1 %42, label %cond.true91, label %cond.false155, !dbg !115

cond.true91:                                      ; preds = %for.body90
  %43 = load ptr, ptr %bitmap, align 8, !dbg !115
  %44 = load i8, ptr %43, align 1, !dbg !115
  %conv92 = zext i8 %44 to i64, !dbg !115
  %and93 = and i64 %conv92, 1, !dbg !115
  %tobool94 = icmp ne i64 %and93, 0, !dbg !115
  %lnot95 = xor i1 %tobool94, true, !dbg !115
  %lnot97 = xor i1 %lnot95, true, !dbg !115
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !115
  %45 = load ptr, ptr %bitmap, align 8, !dbg !115
  %46 = load i8, ptr %45, align 1, !dbg !115
  %conv99 = zext i8 %46 to i64, !dbg !115
  %and100 = and i64 %conv99, 2, !dbg !115
  %tobool101 = icmp ne i64 %and100, 0, !dbg !115
  %lnot102 = xor i1 %tobool101, true, !dbg !115
  %lnot104 = xor i1 %lnot102, true, !dbg !115
  %lnot.ext105 = zext i1 %lnot104 to i32, !dbg !115
  %add106 = add i32 %lnot.ext98, %lnot.ext105, !dbg !115
  %47 = load ptr, ptr %bitmap, align 8, !dbg !115
  %48 = load i8, ptr %47, align 1, !dbg !115
  %conv107 = zext i8 %48 to i64, !dbg !115
  %and108 = and i64 %conv107, 4, !dbg !115
  %tobool109 = icmp ne i64 %and108, 0, !dbg !115
  %lnot110 = xor i1 %tobool109, true, !dbg !115
  %lnot112 = xor i1 %lnot110, true, !dbg !115
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !115
  %add114 = add i32 %add106, %lnot.ext113, !dbg !115
  %49 = load ptr, ptr %bitmap, align 8, !dbg !115
  %50 = load i8, ptr %49, align 1, !dbg !115
  %conv115 = zext i8 %50 to i64, !dbg !115
  %and116 = and i64 %conv115, 8, !dbg !115
  %tobool117 = icmp ne i64 %and116, 0, !dbg !115
  %lnot118 = xor i1 %tobool117, true, !dbg !115
  %lnot120 = xor i1 %lnot118, true, !dbg !115
  %lnot.ext121 = zext i1 %lnot120 to i32, !dbg !115
  %add122 = add i32 %add114, %lnot.ext121, !dbg !115
  %51 = load ptr, ptr %bitmap, align 8, !dbg !115
  %52 = load i8, ptr %51, align 1, !dbg !115
  %conv123 = zext i8 %52 to i64, !dbg !115
  %and124 = and i64 %conv123, 16, !dbg !115
  %tobool125 = icmp ne i64 %and124, 0, !dbg !115
  %lnot126 = xor i1 %tobool125, true, !dbg !115
  %lnot128 = xor i1 %lnot126, true, !dbg !115
  %lnot.ext129 = zext i1 %lnot128 to i32, !dbg !115
  %add130 = add i32 %add122, %lnot.ext129, !dbg !115
  %53 = load ptr, ptr %bitmap, align 8, !dbg !115
  %54 = load i8, ptr %53, align 1, !dbg !115
  %conv131 = zext i8 %54 to i64, !dbg !115
  %and132 = and i64 %conv131, 32, !dbg !115
  %tobool133 = icmp ne i64 %and132, 0, !dbg !115
  %lnot134 = xor i1 %tobool133, true, !dbg !115
  %lnot136 = xor i1 %lnot134, true, !dbg !115
  %lnot.ext137 = zext i1 %lnot136 to i32, !dbg !115
  %add138 = add i32 %add130, %lnot.ext137, !dbg !115
  %55 = load ptr, ptr %bitmap, align 8, !dbg !115
  %56 = load i8, ptr %55, align 1, !dbg !115
  %conv139 = zext i8 %56 to i64, !dbg !115
  %and140 = and i64 %conv139, 64, !dbg !115
  %tobool141 = icmp ne i64 %and140, 0, !dbg !115
  %lnot142 = xor i1 %tobool141, true, !dbg !115
  %lnot144 = xor i1 %lnot142, true, !dbg !115
  %lnot.ext145 = zext i1 %lnot144 to i32, !dbg !115
  %add146 = add i32 %add138, %lnot.ext145, !dbg !115
  %57 = load ptr, ptr %bitmap, align 8, !dbg !115
  %58 = load i8, ptr %57, align 1, !dbg !115
  %conv147 = zext i8 %58 to i64, !dbg !115
  %and148 = and i64 %conv147, 128, !dbg !115
  %tobool149 = icmp ne i64 %and148, 0, !dbg !115
  %lnot150 = xor i1 %tobool149, true, !dbg !115
  %lnot152 = xor i1 %lnot150, true, !dbg !115
  %lnot.ext153 = zext i1 %lnot152 to i32, !dbg !115
  %add154 = add i32 %add146, %lnot.ext153, !dbg !115
  br label %cond.end158, !dbg !115

cond.false155:                                    ; preds = %for.body90
  %59 = load ptr, ptr %bitmap, align 8, !dbg !115
  %60 = load i8, ptr %59, align 1, !dbg !115
  %conv156 = zext i8 %60 to i32, !dbg !115
  %call157 = call i32 @__arch_hweight8(i32 noundef %conv156) #9, !dbg !115
  br label %cond.end158, !dbg !115

cond.end158:                                      ; preds = %cond.false155, %cond.true91
  %cond159 = phi i32 [ %add154, %cond.true91 ], [ %call157, %cond.false155 ], !dbg !115
  %conv160 = zext i32 %cond159 to i64, !dbg !115
  %61 = load i64, ptr %ret, align 8, !dbg !116
  %add161 = add i64 %61, %conv160, !dbg !116
  store i64 %add161, ptr %ret, align 8, !dbg !116
  br label %for.inc162, !dbg !117

for.inc162:                                       ; preds = %cond.end158
  %62 = load i64, ptr %bytes.addr, align 8, !dbg !118
  %dec163 = add i64 %62, -1, !dbg !118
  store i64 %dec163, ptr %bytes.addr, align 8, !dbg !118
  %63 = load ptr, ptr %bitmap, align 8, !dbg !119
  %incdec.ptr164 = getelementptr i8, ptr %63, i32 1, !dbg !119
  store ptr %incdec.ptr164, ptr %bitmap, align 8, !dbg !119
  br label %for.cond87, !dbg !120, !llvm.loop !121

for.end165:                                       ; preds = %for.cond87
  %64 = load i64, ptr %ret, align 8, !dbg !123
  call void @llvm.lifetime.end.p0(i64 8, ptr %bitmap) #8, !dbg !124
  call void @llvm.lifetime.end.p0(i64 8, ptr %longs) #8, !dbg !124
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #8, !dbg !124
  ret i64 %64, !dbg !125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i8(i8) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__arch_hweight8(i32 noundef %w) #4 align 16 !dbg !126 {
entry:
  %w.addr = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load i32, ptr %w.addr, align 4, !dbg !133
  %and = and i32 %0, 255, !dbg !134
  %call = call i32 @__arch_hweight32(i32 noundef %and) #9, !dbg !135
  ret i32 %call, !dbg !136
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #6 align 16 !dbg !137 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !144, metadata !DIExpression()), !dbg !146
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !145, metadata !DIExpression()), !dbg !147
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !148
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !148
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !148

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !148
  %cmp = icmp ule i32 %2, 64, !dbg !148
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !148

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !148
  %cmp2 = icmp ugt i32 %3, 0, !dbg !148
  br i1 %cmp2, label %if.then, label %if.end, !dbg !150

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !151
  %5 = load i64, ptr %4, align 8, !dbg !152
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !153
  %sub = sub i32 0, %6, !dbg !153
  %and = and i32 %sub, 63, !dbg !153
  %sh_prom = zext i32 %and to i64, !dbg !153
  %shr = lshr i64 -1, %sh_prom, !dbg !153
  %and3 = and i64 %5, %shr, !dbg !154
  %call = call i64 @hweight_long(i64 noundef %and3) #9, !dbg !155
  %conv = trunc i64 %call to i32, !dbg !155
  store i32 %conv, ptr %retval, align 4, !dbg !156
  br label %return, !dbg !156

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !157
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !158
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #9, !dbg !159
  store i32 %call4, ptr %retval, align 4, !dbg !160
  br label %return, !dbg !160

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !161
  ret i32 %9, !dbg !161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__arch_hweight32(i32 noundef %w) #6 align 16 !dbg !162 {
entry:
  %w.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #8, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %res, metadata !165, metadata !DIExpression()), !dbg !168
  %0 = load i32, ptr %w.addr, align 4, !dbg !169
  %1 = call i32 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight32\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntl $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i32 %0) #10, !dbg !170, !srcloc !171
  store i32 %1, ptr %res, align 4, !dbg !170
  %2 = load i32, ptr %res, align 4, !dbg !172
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #8, !dbg !173
  ret i32 %2, !dbg !174
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #6 align 16 !dbg !175 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = load i64, ptr %w.addr, align 8, !dbg !182
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !182
  br i1 %1, label %cond.true, label %cond.false, !dbg !182

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !182
  %and = and i64 %2, 1, !dbg !182
  %tobool = icmp ne i64 %and, 0, !dbg !182
  %lnot = xor i1 %tobool, true, !dbg !182
  %lnot1 = xor i1 %lnot, true, !dbg !182
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !182
  %3 = load i64, ptr %w.addr, align 8, !dbg !182
  %and2 = and i64 %3, 2, !dbg !182
  %tobool3 = icmp ne i64 %and2, 0, !dbg !182
  %lnot4 = xor i1 %tobool3, true, !dbg !182
  %lnot6 = xor i1 %lnot4, true, !dbg !182
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !182
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !182
  %4 = load i64, ptr %w.addr, align 8, !dbg !182
  %and8 = and i64 %4, 4, !dbg !182
  %tobool9 = icmp ne i64 %and8, 0, !dbg !182
  %lnot10 = xor i1 %tobool9, true, !dbg !182
  %lnot12 = xor i1 %lnot10, true, !dbg !182
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !182
  %add14 = add i32 %add, %lnot.ext13, !dbg !182
  %5 = load i64, ptr %w.addr, align 8, !dbg !182
  %and15 = and i64 %5, 8, !dbg !182
  %tobool16 = icmp ne i64 %and15, 0, !dbg !182
  %lnot17 = xor i1 %tobool16, true, !dbg !182
  %lnot19 = xor i1 %lnot17, true, !dbg !182
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !182
  %add21 = add i32 %add14, %lnot.ext20, !dbg !182
  %6 = load i64, ptr %w.addr, align 8, !dbg !182
  %and22 = and i64 %6, 16, !dbg !182
  %tobool23 = icmp ne i64 %and22, 0, !dbg !182
  %lnot24 = xor i1 %tobool23, true, !dbg !182
  %lnot26 = xor i1 %lnot24, true, !dbg !182
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !182
  %add28 = add i32 %add21, %lnot.ext27, !dbg !182
  %7 = load i64, ptr %w.addr, align 8, !dbg !182
  %and29 = and i64 %7, 32, !dbg !182
  %tobool30 = icmp ne i64 %and29, 0, !dbg !182
  %lnot31 = xor i1 %tobool30, true, !dbg !182
  %lnot33 = xor i1 %lnot31, true, !dbg !182
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !182
  %add35 = add i32 %add28, %lnot.ext34, !dbg !182
  %8 = load i64, ptr %w.addr, align 8, !dbg !182
  %and36 = and i64 %8, 64, !dbg !182
  %tobool37 = icmp ne i64 %and36, 0, !dbg !182
  %lnot38 = xor i1 %tobool37, true, !dbg !182
  %lnot40 = xor i1 %lnot38, true, !dbg !182
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !182
  %add42 = add i32 %add35, %lnot.ext41, !dbg !182
  %9 = load i64, ptr %w.addr, align 8, !dbg !182
  %and43 = and i64 %9, 128, !dbg !182
  %tobool44 = icmp ne i64 %and43, 0, !dbg !182
  %lnot45 = xor i1 %tobool44, true, !dbg !182
  %lnot47 = xor i1 %lnot45, true, !dbg !182
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !182
  %add49 = add i32 %add42, %lnot.ext48, !dbg !182
  %10 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr = lshr i64 %10, 8, !dbg !182
  %and50 = and i64 %shr, 1, !dbg !182
  %tobool51 = icmp ne i64 %and50, 0, !dbg !182
  %lnot52 = xor i1 %tobool51, true, !dbg !182
  %lnot54 = xor i1 %lnot52, true, !dbg !182
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !182
  %11 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr56 = lshr i64 %11, 8, !dbg !182
  %and57 = and i64 %shr56, 2, !dbg !182
  %tobool58 = icmp ne i64 %and57, 0, !dbg !182
  %lnot59 = xor i1 %tobool58, true, !dbg !182
  %lnot61 = xor i1 %lnot59, true, !dbg !182
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !182
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !182
  %12 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr64 = lshr i64 %12, 8, !dbg !182
  %and65 = and i64 %shr64, 4, !dbg !182
  %tobool66 = icmp ne i64 %and65, 0, !dbg !182
  %lnot67 = xor i1 %tobool66, true, !dbg !182
  %lnot69 = xor i1 %lnot67, true, !dbg !182
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !182
  %add71 = add i32 %add63, %lnot.ext70, !dbg !182
  %13 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr72 = lshr i64 %13, 8, !dbg !182
  %and73 = and i64 %shr72, 8, !dbg !182
  %tobool74 = icmp ne i64 %and73, 0, !dbg !182
  %lnot75 = xor i1 %tobool74, true, !dbg !182
  %lnot77 = xor i1 %lnot75, true, !dbg !182
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !182
  %add79 = add i32 %add71, %lnot.ext78, !dbg !182
  %14 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr80 = lshr i64 %14, 8, !dbg !182
  %and81 = and i64 %shr80, 16, !dbg !182
  %tobool82 = icmp ne i64 %and81, 0, !dbg !182
  %lnot83 = xor i1 %tobool82, true, !dbg !182
  %lnot85 = xor i1 %lnot83, true, !dbg !182
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !182
  %add87 = add i32 %add79, %lnot.ext86, !dbg !182
  %15 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr88 = lshr i64 %15, 8, !dbg !182
  %and89 = and i64 %shr88, 32, !dbg !182
  %tobool90 = icmp ne i64 %and89, 0, !dbg !182
  %lnot91 = xor i1 %tobool90, true, !dbg !182
  %lnot93 = xor i1 %lnot91, true, !dbg !182
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !182
  %add95 = add i32 %add87, %lnot.ext94, !dbg !182
  %16 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr96 = lshr i64 %16, 8, !dbg !182
  %and97 = and i64 %shr96, 64, !dbg !182
  %tobool98 = icmp ne i64 %and97, 0, !dbg !182
  %lnot99 = xor i1 %tobool98, true, !dbg !182
  %lnot101 = xor i1 %lnot99, true, !dbg !182
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !182
  %add103 = add i32 %add95, %lnot.ext102, !dbg !182
  %17 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr104 = lshr i64 %17, 8, !dbg !182
  %and105 = and i64 %shr104, 128, !dbg !182
  %tobool106 = icmp ne i64 %and105, 0, !dbg !182
  %lnot107 = xor i1 %tobool106, true, !dbg !182
  %lnot109 = xor i1 %lnot107, true, !dbg !182
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !182
  %add111 = add i32 %add103, %lnot.ext110, !dbg !182
  %add112 = add i32 %add49, %add111, !dbg !182
  %18 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr113 = lshr i64 %18, 16, !dbg !182
  %and114 = and i64 %shr113, 1, !dbg !182
  %tobool115 = icmp ne i64 %and114, 0, !dbg !182
  %lnot116 = xor i1 %tobool115, true, !dbg !182
  %lnot118 = xor i1 %lnot116, true, !dbg !182
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !182
  %19 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr120 = lshr i64 %19, 16, !dbg !182
  %and121 = and i64 %shr120, 2, !dbg !182
  %tobool122 = icmp ne i64 %and121, 0, !dbg !182
  %lnot123 = xor i1 %tobool122, true, !dbg !182
  %lnot125 = xor i1 %lnot123, true, !dbg !182
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !182
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !182
  %20 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr128 = lshr i64 %20, 16, !dbg !182
  %and129 = and i64 %shr128, 4, !dbg !182
  %tobool130 = icmp ne i64 %and129, 0, !dbg !182
  %lnot131 = xor i1 %tobool130, true, !dbg !182
  %lnot133 = xor i1 %lnot131, true, !dbg !182
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !182
  %add135 = add i32 %add127, %lnot.ext134, !dbg !182
  %21 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr136 = lshr i64 %21, 16, !dbg !182
  %and137 = and i64 %shr136, 8, !dbg !182
  %tobool138 = icmp ne i64 %and137, 0, !dbg !182
  %lnot139 = xor i1 %tobool138, true, !dbg !182
  %lnot141 = xor i1 %lnot139, true, !dbg !182
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !182
  %add143 = add i32 %add135, %lnot.ext142, !dbg !182
  %22 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr144 = lshr i64 %22, 16, !dbg !182
  %and145 = and i64 %shr144, 16, !dbg !182
  %tobool146 = icmp ne i64 %and145, 0, !dbg !182
  %lnot147 = xor i1 %tobool146, true, !dbg !182
  %lnot149 = xor i1 %lnot147, true, !dbg !182
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !182
  %add151 = add i32 %add143, %lnot.ext150, !dbg !182
  %23 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr152 = lshr i64 %23, 16, !dbg !182
  %and153 = and i64 %shr152, 32, !dbg !182
  %tobool154 = icmp ne i64 %and153, 0, !dbg !182
  %lnot155 = xor i1 %tobool154, true, !dbg !182
  %lnot157 = xor i1 %lnot155, true, !dbg !182
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !182
  %add159 = add i32 %add151, %lnot.ext158, !dbg !182
  %24 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr160 = lshr i64 %24, 16, !dbg !182
  %and161 = and i64 %shr160, 64, !dbg !182
  %tobool162 = icmp ne i64 %and161, 0, !dbg !182
  %lnot163 = xor i1 %tobool162, true, !dbg !182
  %lnot165 = xor i1 %lnot163, true, !dbg !182
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !182
  %add167 = add i32 %add159, %lnot.ext166, !dbg !182
  %25 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr168 = lshr i64 %25, 16, !dbg !182
  %and169 = and i64 %shr168, 128, !dbg !182
  %tobool170 = icmp ne i64 %and169, 0, !dbg !182
  %lnot171 = xor i1 %tobool170, true, !dbg !182
  %lnot173 = xor i1 %lnot171, true, !dbg !182
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !182
  %add175 = add i32 %add167, %lnot.ext174, !dbg !182
  %26 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr176 = lshr i64 %26, 16, !dbg !182
  %shr177 = lshr i64 %shr176, 8, !dbg !182
  %and178 = and i64 %shr177, 1, !dbg !182
  %tobool179 = icmp ne i64 %and178, 0, !dbg !182
  %lnot180 = xor i1 %tobool179, true, !dbg !182
  %lnot182 = xor i1 %lnot180, true, !dbg !182
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !182
  %27 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr184 = lshr i64 %27, 16, !dbg !182
  %shr185 = lshr i64 %shr184, 8, !dbg !182
  %and186 = and i64 %shr185, 2, !dbg !182
  %tobool187 = icmp ne i64 %and186, 0, !dbg !182
  %lnot188 = xor i1 %tobool187, true, !dbg !182
  %lnot190 = xor i1 %lnot188, true, !dbg !182
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !182
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !182
  %28 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr193 = lshr i64 %28, 16, !dbg !182
  %shr194 = lshr i64 %shr193, 8, !dbg !182
  %and195 = and i64 %shr194, 4, !dbg !182
  %tobool196 = icmp ne i64 %and195, 0, !dbg !182
  %lnot197 = xor i1 %tobool196, true, !dbg !182
  %lnot199 = xor i1 %lnot197, true, !dbg !182
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !182
  %add201 = add i32 %add192, %lnot.ext200, !dbg !182
  %29 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr202 = lshr i64 %29, 16, !dbg !182
  %shr203 = lshr i64 %shr202, 8, !dbg !182
  %and204 = and i64 %shr203, 8, !dbg !182
  %tobool205 = icmp ne i64 %and204, 0, !dbg !182
  %lnot206 = xor i1 %tobool205, true, !dbg !182
  %lnot208 = xor i1 %lnot206, true, !dbg !182
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !182
  %add210 = add i32 %add201, %lnot.ext209, !dbg !182
  %30 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr211 = lshr i64 %30, 16, !dbg !182
  %shr212 = lshr i64 %shr211, 8, !dbg !182
  %and213 = and i64 %shr212, 16, !dbg !182
  %tobool214 = icmp ne i64 %and213, 0, !dbg !182
  %lnot215 = xor i1 %tobool214, true, !dbg !182
  %lnot217 = xor i1 %lnot215, true, !dbg !182
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !182
  %add219 = add i32 %add210, %lnot.ext218, !dbg !182
  %31 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr220 = lshr i64 %31, 16, !dbg !182
  %shr221 = lshr i64 %shr220, 8, !dbg !182
  %and222 = and i64 %shr221, 32, !dbg !182
  %tobool223 = icmp ne i64 %and222, 0, !dbg !182
  %lnot224 = xor i1 %tobool223, true, !dbg !182
  %lnot226 = xor i1 %lnot224, true, !dbg !182
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !182
  %add228 = add i32 %add219, %lnot.ext227, !dbg !182
  %32 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr229 = lshr i64 %32, 16, !dbg !182
  %shr230 = lshr i64 %shr229, 8, !dbg !182
  %and231 = and i64 %shr230, 64, !dbg !182
  %tobool232 = icmp ne i64 %and231, 0, !dbg !182
  %lnot233 = xor i1 %tobool232, true, !dbg !182
  %lnot235 = xor i1 %lnot233, true, !dbg !182
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !182
  %add237 = add i32 %add228, %lnot.ext236, !dbg !182
  %33 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr238 = lshr i64 %33, 16, !dbg !182
  %shr239 = lshr i64 %shr238, 8, !dbg !182
  %and240 = and i64 %shr239, 128, !dbg !182
  %tobool241 = icmp ne i64 %and240, 0, !dbg !182
  %lnot242 = xor i1 %tobool241, true, !dbg !182
  %lnot244 = xor i1 %lnot242, true, !dbg !182
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !182
  %add246 = add i32 %add237, %lnot.ext245, !dbg !182
  %add247 = add i32 %add175, %add246, !dbg !182
  %add248 = add i32 %add112, %add247, !dbg !182
  %34 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr249 = lshr i64 %34, 32, !dbg !182
  %and250 = and i64 %shr249, 1, !dbg !182
  %tobool251 = icmp ne i64 %and250, 0, !dbg !182
  %lnot252 = xor i1 %tobool251, true, !dbg !182
  %lnot254 = xor i1 %lnot252, true, !dbg !182
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !182
  %35 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr256 = lshr i64 %35, 32, !dbg !182
  %and257 = and i64 %shr256, 2, !dbg !182
  %tobool258 = icmp ne i64 %and257, 0, !dbg !182
  %lnot259 = xor i1 %tobool258, true, !dbg !182
  %lnot261 = xor i1 %lnot259, true, !dbg !182
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !182
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !182
  %36 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr264 = lshr i64 %36, 32, !dbg !182
  %and265 = and i64 %shr264, 4, !dbg !182
  %tobool266 = icmp ne i64 %and265, 0, !dbg !182
  %lnot267 = xor i1 %tobool266, true, !dbg !182
  %lnot269 = xor i1 %lnot267, true, !dbg !182
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !182
  %add271 = add i32 %add263, %lnot.ext270, !dbg !182
  %37 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr272 = lshr i64 %37, 32, !dbg !182
  %and273 = and i64 %shr272, 8, !dbg !182
  %tobool274 = icmp ne i64 %and273, 0, !dbg !182
  %lnot275 = xor i1 %tobool274, true, !dbg !182
  %lnot277 = xor i1 %lnot275, true, !dbg !182
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !182
  %add279 = add i32 %add271, %lnot.ext278, !dbg !182
  %38 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr280 = lshr i64 %38, 32, !dbg !182
  %and281 = and i64 %shr280, 16, !dbg !182
  %tobool282 = icmp ne i64 %and281, 0, !dbg !182
  %lnot283 = xor i1 %tobool282, true, !dbg !182
  %lnot285 = xor i1 %lnot283, true, !dbg !182
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !182
  %add287 = add i32 %add279, %lnot.ext286, !dbg !182
  %39 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr288 = lshr i64 %39, 32, !dbg !182
  %and289 = and i64 %shr288, 32, !dbg !182
  %tobool290 = icmp ne i64 %and289, 0, !dbg !182
  %lnot291 = xor i1 %tobool290, true, !dbg !182
  %lnot293 = xor i1 %lnot291, true, !dbg !182
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !182
  %add295 = add i32 %add287, %lnot.ext294, !dbg !182
  %40 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr296 = lshr i64 %40, 32, !dbg !182
  %and297 = and i64 %shr296, 64, !dbg !182
  %tobool298 = icmp ne i64 %and297, 0, !dbg !182
  %lnot299 = xor i1 %tobool298, true, !dbg !182
  %lnot301 = xor i1 %lnot299, true, !dbg !182
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !182
  %add303 = add i32 %add295, %lnot.ext302, !dbg !182
  %41 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr304 = lshr i64 %41, 32, !dbg !182
  %and305 = and i64 %shr304, 128, !dbg !182
  %tobool306 = icmp ne i64 %and305, 0, !dbg !182
  %lnot307 = xor i1 %tobool306, true, !dbg !182
  %lnot309 = xor i1 %lnot307, true, !dbg !182
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !182
  %add311 = add i32 %add303, %lnot.ext310, !dbg !182
  %42 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr312 = lshr i64 %42, 32, !dbg !182
  %shr313 = lshr i64 %shr312, 8, !dbg !182
  %and314 = and i64 %shr313, 1, !dbg !182
  %tobool315 = icmp ne i64 %and314, 0, !dbg !182
  %lnot316 = xor i1 %tobool315, true, !dbg !182
  %lnot318 = xor i1 %lnot316, true, !dbg !182
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !182
  %43 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr320 = lshr i64 %43, 32, !dbg !182
  %shr321 = lshr i64 %shr320, 8, !dbg !182
  %and322 = and i64 %shr321, 2, !dbg !182
  %tobool323 = icmp ne i64 %and322, 0, !dbg !182
  %lnot324 = xor i1 %tobool323, true, !dbg !182
  %lnot326 = xor i1 %lnot324, true, !dbg !182
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !182
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !182
  %44 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr329 = lshr i64 %44, 32, !dbg !182
  %shr330 = lshr i64 %shr329, 8, !dbg !182
  %and331 = and i64 %shr330, 4, !dbg !182
  %tobool332 = icmp ne i64 %and331, 0, !dbg !182
  %lnot333 = xor i1 %tobool332, true, !dbg !182
  %lnot335 = xor i1 %lnot333, true, !dbg !182
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !182
  %add337 = add i32 %add328, %lnot.ext336, !dbg !182
  %45 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr338 = lshr i64 %45, 32, !dbg !182
  %shr339 = lshr i64 %shr338, 8, !dbg !182
  %and340 = and i64 %shr339, 8, !dbg !182
  %tobool341 = icmp ne i64 %and340, 0, !dbg !182
  %lnot342 = xor i1 %tobool341, true, !dbg !182
  %lnot344 = xor i1 %lnot342, true, !dbg !182
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !182
  %add346 = add i32 %add337, %lnot.ext345, !dbg !182
  %46 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr347 = lshr i64 %46, 32, !dbg !182
  %shr348 = lshr i64 %shr347, 8, !dbg !182
  %and349 = and i64 %shr348, 16, !dbg !182
  %tobool350 = icmp ne i64 %and349, 0, !dbg !182
  %lnot351 = xor i1 %tobool350, true, !dbg !182
  %lnot353 = xor i1 %lnot351, true, !dbg !182
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !182
  %add355 = add i32 %add346, %lnot.ext354, !dbg !182
  %47 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr356 = lshr i64 %47, 32, !dbg !182
  %shr357 = lshr i64 %shr356, 8, !dbg !182
  %and358 = and i64 %shr357, 32, !dbg !182
  %tobool359 = icmp ne i64 %and358, 0, !dbg !182
  %lnot360 = xor i1 %tobool359, true, !dbg !182
  %lnot362 = xor i1 %lnot360, true, !dbg !182
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !182
  %add364 = add i32 %add355, %lnot.ext363, !dbg !182
  %48 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr365 = lshr i64 %48, 32, !dbg !182
  %shr366 = lshr i64 %shr365, 8, !dbg !182
  %and367 = and i64 %shr366, 64, !dbg !182
  %tobool368 = icmp ne i64 %and367, 0, !dbg !182
  %lnot369 = xor i1 %tobool368, true, !dbg !182
  %lnot371 = xor i1 %lnot369, true, !dbg !182
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !182
  %add373 = add i32 %add364, %lnot.ext372, !dbg !182
  %49 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr374 = lshr i64 %49, 32, !dbg !182
  %shr375 = lshr i64 %shr374, 8, !dbg !182
  %and376 = and i64 %shr375, 128, !dbg !182
  %tobool377 = icmp ne i64 %and376, 0, !dbg !182
  %lnot378 = xor i1 %tobool377, true, !dbg !182
  %lnot380 = xor i1 %lnot378, true, !dbg !182
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !182
  %add382 = add i32 %add373, %lnot.ext381, !dbg !182
  %add383 = add i32 %add311, %add382, !dbg !182
  %50 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr384 = lshr i64 %50, 32, !dbg !182
  %shr385 = lshr i64 %shr384, 16, !dbg !182
  %and386 = and i64 %shr385, 1, !dbg !182
  %tobool387 = icmp ne i64 %and386, 0, !dbg !182
  %lnot388 = xor i1 %tobool387, true, !dbg !182
  %lnot390 = xor i1 %lnot388, true, !dbg !182
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !182
  %51 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr392 = lshr i64 %51, 32, !dbg !182
  %shr393 = lshr i64 %shr392, 16, !dbg !182
  %and394 = and i64 %shr393, 2, !dbg !182
  %tobool395 = icmp ne i64 %and394, 0, !dbg !182
  %lnot396 = xor i1 %tobool395, true, !dbg !182
  %lnot398 = xor i1 %lnot396, true, !dbg !182
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !182
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !182
  %52 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr401 = lshr i64 %52, 32, !dbg !182
  %shr402 = lshr i64 %shr401, 16, !dbg !182
  %and403 = and i64 %shr402, 4, !dbg !182
  %tobool404 = icmp ne i64 %and403, 0, !dbg !182
  %lnot405 = xor i1 %tobool404, true, !dbg !182
  %lnot407 = xor i1 %lnot405, true, !dbg !182
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !182
  %add409 = add i32 %add400, %lnot.ext408, !dbg !182
  %53 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr410 = lshr i64 %53, 32, !dbg !182
  %shr411 = lshr i64 %shr410, 16, !dbg !182
  %and412 = and i64 %shr411, 8, !dbg !182
  %tobool413 = icmp ne i64 %and412, 0, !dbg !182
  %lnot414 = xor i1 %tobool413, true, !dbg !182
  %lnot416 = xor i1 %lnot414, true, !dbg !182
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !182
  %add418 = add i32 %add409, %lnot.ext417, !dbg !182
  %54 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr419 = lshr i64 %54, 32, !dbg !182
  %shr420 = lshr i64 %shr419, 16, !dbg !182
  %and421 = and i64 %shr420, 16, !dbg !182
  %tobool422 = icmp ne i64 %and421, 0, !dbg !182
  %lnot423 = xor i1 %tobool422, true, !dbg !182
  %lnot425 = xor i1 %lnot423, true, !dbg !182
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !182
  %add427 = add i32 %add418, %lnot.ext426, !dbg !182
  %55 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr428 = lshr i64 %55, 32, !dbg !182
  %shr429 = lshr i64 %shr428, 16, !dbg !182
  %and430 = and i64 %shr429, 32, !dbg !182
  %tobool431 = icmp ne i64 %and430, 0, !dbg !182
  %lnot432 = xor i1 %tobool431, true, !dbg !182
  %lnot434 = xor i1 %lnot432, true, !dbg !182
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !182
  %add436 = add i32 %add427, %lnot.ext435, !dbg !182
  %56 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr437 = lshr i64 %56, 32, !dbg !182
  %shr438 = lshr i64 %shr437, 16, !dbg !182
  %and439 = and i64 %shr438, 64, !dbg !182
  %tobool440 = icmp ne i64 %and439, 0, !dbg !182
  %lnot441 = xor i1 %tobool440, true, !dbg !182
  %lnot443 = xor i1 %lnot441, true, !dbg !182
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !182
  %add445 = add i32 %add436, %lnot.ext444, !dbg !182
  %57 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr446 = lshr i64 %57, 32, !dbg !182
  %shr447 = lshr i64 %shr446, 16, !dbg !182
  %and448 = and i64 %shr447, 128, !dbg !182
  %tobool449 = icmp ne i64 %and448, 0, !dbg !182
  %lnot450 = xor i1 %tobool449, true, !dbg !182
  %lnot452 = xor i1 %lnot450, true, !dbg !182
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !182
  %add454 = add i32 %add445, %lnot.ext453, !dbg !182
  %58 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr455 = lshr i64 %58, 32, !dbg !182
  %shr456 = lshr i64 %shr455, 16, !dbg !182
  %shr457 = lshr i64 %shr456, 8, !dbg !182
  %and458 = and i64 %shr457, 1, !dbg !182
  %tobool459 = icmp ne i64 %and458, 0, !dbg !182
  %lnot460 = xor i1 %tobool459, true, !dbg !182
  %lnot462 = xor i1 %lnot460, true, !dbg !182
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !182
  %59 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr464 = lshr i64 %59, 32, !dbg !182
  %shr465 = lshr i64 %shr464, 16, !dbg !182
  %shr466 = lshr i64 %shr465, 8, !dbg !182
  %and467 = and i64 %shr466, 2, !dbg !182
  %tobool468 = icmp ne i64 %and467, 0, !dbg !182
  %lnot469 = xor i1 %tobool468, true, !dbg !182
  %lnot471 = xor i1 %lnot469, true, !dbg !182
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !182
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !182
  %60 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr474 = lshr i64 %60, 32, !dbg !182
  %shr475 = lshr i64 %shr474, 16, !dbg !182
  %shr476 = lshr i64 %shr475, 8, !dbg !182
  %and477 = and i64 %shr476, 4, !dbg !182
  %tobool478 = icmp ne i64 %and477, 0, !dbg !182
  %lnot479 = xor i1 %tobool478, true, !dbg !182
  %lnot481 = xor i1 %lnot479, true, !dbg !182
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !182
  %add483 = add i32 %add473, %lnot.ext482, !dbg !182
  %61 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr484 = lshr i64 %61, 32, !dbg !182
  %shr485 = lshr i64 %shr484, 16, !dbg !182
  %shr486 = lshr i64 %shr485, 8, !dbg !182
  %and487 = and i64 %shr486, 8, !dbg !182
  %tobool488 = icmp ne i64 %and487, 0, !dbg !182
  %lnot489 = xor i1 %tobool488, true, !dbg !182
  %lnot491 = xor i1 %lnot489, true, !dbg !182
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !182
  %add493 = add i32 %add483, %lnot.ext492, !dbg !182
  %62 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr494 = lshr i64 %62, 32, !dbg !182
  %shr495 = lshr i64 %shr494, 16, !dbg !182
  %shr496 = lshr i64 %shr495, 8, !dbg !182
  %and497 = and i64 %shr496, 16, !dbg !182
  %tobool498 = icmp ne i64 %and497, 0, !dbg !182
  %lnot499 = xor i1 %tobool498, true, !dbg !182
  %lnot501 = xor i1 %lnot499, true, !dbg !182
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !182
  %add503 = add i32 %add493, %lnot.ext502, !dbg !182
  %63 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr504 = lshr i64 %63, 32, !dbg !182
  %shr505 = lshr i64 %shr504, 16, !dbg !182
  %shr506 = lshr i64 %shr505, 8, !dbg !182
  %and507 = and i64 %shr506, 32, !dbg !182
  %tobool508 = icmp ne i64 %and507, 0, !dbg !182
  %lnot509 = xor i1 %tobool508, true, !dbg !182
  %lnot511 = xor i1 %lnot509, true, !dbg !182
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !182
  %add513 = add i32 %add503, %lnot.ext512, !dbg !182
  %64 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr514 = lshr i64 %64, 32, !dbg !182
  %shr515 = lshr i64 %shr514, 16, !dbg !182
  %shr516 = lshr i64 %shr515, 8, !dbg !182
  %and517 = and i64 %shr516, 64, !dbg !182
  %tobool518 = icmp ne i64 %and517, 0, !dbg !182
  %lnot519 = xor i1 %tobool518, true, !dbg !182
  %lnot521 = xor i1 %lnot519, true, !dbg !182
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !182
  %add523 = add i32 %add513, %lnot.ext522, !dbg !182
  %65 = load i64, ptr %w.addr, align 8, !dbg !182
  %shr524 = lshr i64 %65, 32, !dbg !182
  %shr525 = lshr i64 %shr524, 16, !dbg !182
  %shr526 = lshr i64 %shr525, 8, !dbg !182
  %and527 = and i64 %shr526, 128, !dbg !182
  %tobool528 = icmp ne i64 %and527, 0, !dbg !182
  %lnot529 = xor i1 %tobool528, true, !dbg !182
  %lnot531 = xor i1 %lnot529, true, !dbg !182
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !182
  %add533 = add i32 %add523, %lnot.ext532, !dbg !182
  %add534 = add i32 %add454, %add533, !dbg !182
  %add535 = add i32 %add383, %add534, !dbg !182
  %add536 = add i32 %add248, %add535, !dbg !182
  %conv = zext i32 %add536 to i64, !dbg !182
  br label %cond.end, !dbg !182

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !182
  %call = call i64 @__arch_hweight64(i64 noundef %66) #9, !dbg !182
  br label %cond.end, !dbg !182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !182
  ret i64 %cond, !dbg !183
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !184 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #6 align 16 !dbg !185 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !189, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #8, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %res, metadata !190, metadata !DIExpression()), !dbg !193
  %0 = load i64, ptr %w.addr, align 8, !dbg !194
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !195, !srcloc !196
  store i64 %1, ptr %res, align 8, !dbg !195
  %2 = load i64, ptr %res, align 8, !dbg !197
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #8, !dbg !198
  ret i64 %2, !dbg !199
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/memweight.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8013d075abf8dd1faf155cf2fb717c1d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memweight2", scope: !9, file: !2, line: 39, type: !15, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.memweight.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/memweight\22 -D KBUILD_BASENAME=\22memweight\22 -D KBUILD_MODNAME=\22memweight\22 -D __KBUILD_MODNAME=kmod_memweight -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/memweight.ll lib/memweight.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !19, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!19 = !{!0, !7}
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 8, !"cf-protection-branch", i32 1}
!24 = !{i32 4, !"function_return_thunk_extern", i32 1}
!25 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{i32 1, !"override-stack-alignment", i32 8}
!28 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!29 = distinct !DISubprogram(name: "memweight", scope: !2, file: !2, line: 11, type: !30, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !39)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !37, !32}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 61, baseType: !34)
!33 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !35, line: 72, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !35, line: 16, baseType: !11)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!39 = !{!40, !41, !42, !43, !44}
!40 = !DILocalVariable(name: "ptr", arg: 1, scope: !29, file: !2, line: 11, type: !37)
!41 = !DILocalVariable(name: "bytes", arg: 2, scope: !29, file: !2, line: 11, type: !32)
!42 = !DILocalVariable(name: "ret", scope: !29, file: !2, line: 13, type: !32)
!43 = !DILocalVariable(name: "longs", scope: !29, file: !2, line: 14, type: !32)
!44 = !DILocalVariable(name: "bitmap", scope: !29, file: !2, line: 15, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DILocation(line: 11, column: 30, scope: !29)
!49 = !DILocation(line: 11, column: 42, scope: !29)
!50 = !DILocation(line: 13, column: 2, scope: !29)
!51 = !DILocation(line: 13, column: 9, scope: !29)
!52 = !DILocation(line: 14, column: 2, scope: !29)
!53 = !DILocation(line: 14, column: 9, scope: !29)
!54 = !DILocation(line: 15, column: 2, scope: !29)
!55 = !DILocation(line: 15, column: 23, scope: !29)
!56 = !DILocation(line: 15, column: 32, scope: !29)
!57 = !DILocation(line: 17, column: 2, scope: !29)
!58 = !DILocation(line: 17, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !2, line: 17, column: 2)
!60 = distinct !DILexicalBlock(scope: !29, file: !2, line: 17, column: 2)
!61 = !DILocation(line: 17, column: 15, scope: !59)
!62 = !DILocation(line: 17, column: 19, scope: !59)
!63 = !DILocation(line: 17, column: 38, scope: !59)
!64 = !DILocation(line: 17, column: 23, scope: !59)
!65 = !DILocation(line: 17, column: 46, scope: !59)
!66 = !DILocation(line: 0, scope: !59)
!67 = !DILocation(line: 17, column: 2, scope: !60)
!68 = !DILocation(line: 19, column: 10, scope: !59)
!69 = !DILocation(line: 19, column: 7, scope: !59)
!70 = !DILocation(line: 19, column: 3, scope: !59)
!71 = !DILocation(line: 18, column: 9, scope: !59)
!72 = !DILocation(line: 18, column: 19, scope: !59)
!73 = !DILocation(line: 17, column: 2, scope: !59)
!74 = distinct !{!74, !67, !75, !76, !77}
!75 = !DILocation(line: 19, column: 10, scope: !60)
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !DILocation(line: 21, column: 10, scope: !29)
!79 = !DILocation(line: 21, column: 16, scope: !29)
!80 = !DILocation(line: 21, column: 8, scope: !29)
!81 = !DILocation(line: 22, column: 6, scope: !82)
!82 = distinct !DILexicalBlock(scope: !29, file: !2, line: 22, column: 6)
!83 = !DILocation(line: 22, column: 6, scope: !29)
!84 = !DILocation(line: 23, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !2, line: 22, column: 13)
!86 = !DILocation(line: 23, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 23, column: 3)
!88 = distinct !DILexicalBlock(scope: !85, file: !2, line: 23, column: 3)
!89 = !DILocation(line: 23, column: 3, scope: !88)
!90 = !DILocation(line: 23, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !2, line: 23, column: 3)
!92 = !DILocation(line: 23, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !91, file: !2, line: 23, column: 3)
!94 = !DILocation(line: 23, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !2, line: 23, column: 3)
!96 = !{i64 2148128983, i64 2148129012, i64 2148129058, i64 2148129116, i64 2148129170, i64 2148129224, i64 2148129279, i64 2148129310}
!97 = !DILocation(line: 24, column: 41, scope: !85)
!98 = !DILocation(line: 25, column: 5, scope: !85)
!99 = !DILocation(line: 25, column: 11, scope: !85)
!100 = !DILocation(line: 24, column: 10, scope: !85)
!101 = !DILocation(line: 24, column: 7, scope: !85)
!102 = !DILocation(line: 26, column: 12, scope: !85)
!103 = !DILocation(line: 26, column: 18, scope: !85)
!104 = !DILocation(line: 26, column: 9, scope: !85)
!105 = !DILocation(line: 27, column: 13, scope: !85)
!106 = !DILocation(line: 27, column: 19, scope: !85)
!107 = !DILocation(line: 27, column: 10, scope: !85)
!108 = !DILocation(line: 28, column: 2, scope: !85)
!109 = !DILocation(line: 34, column: 2, scope: !29)
!110 = !DILocation(line: 34, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 34, column: 2)
!112 = distinct !DILexicalBlock(scope: !29, file: !2, line: 34, column: 2)
!113 = !DILocation(line: 34, column: 15, scope: !111)
!114 = !DILocation(line: 34, column: 2, scope: !112)
!115 = !DILocation(line: 35, column: 10, scope: !111)
!116 = !DILocation(line: 35, column: 7, scope: !111)
!117 = !DILocation(line: 35, column: 3, scope: !111)
!118 = !DILocation(line: 34, column: 25, scope: !111)
!119 = !DILocation(line: 34, column: 35, scope: !111)
!120 = !DILocation(line: 34, column: 2, scope: !111)
!121 = distinct !{!121, !114, !122, !76, !77}
!122 = !DILocation(line: 35, column: 10, scope: !112)
!123 = !DILocation(line: 37, column: 9, scope: !29)
!124 = !DILocation(line: 38, column: 1, scope: !29)
!125 = !DILocation(line: 37, column: 2, scope: !29)
!126 = distinct !DISubprogram(name: "__arch_hweight8", scope: !127, file: !127, line: 31, type: !128, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !130)
!127 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!128 = !DISubroutineType(types: !129)
!129 = !{!12, !12}
!130 = !{!131}
!131 = !DILocalVariable(name: "w", arg: 1, scope: !126, file: !127, line: 31, type: !12)
!132 = !DILocation(line: 31, column: 57, scope: !126)
!133 = !DILocation(line: 33, column: 26, scope: !126)
!134 = !DILocation(line: 33, column: 28, scope: !126)
!135 = !DILocation(line: 33, column: 9, scope: !126)
!136 = !DILocation(line: 33, column: 2, scope: !126)
!137 = distinct !DISubprogram(name: "bitmap_weight", scope: !138, file: !138, line: 453, type: !139, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !143)
!138 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!139 = !DISubroutineType(types: !140)
!140 = !{!12, !141, !12}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!143 = !{!144, !145}
!144 = !DILocalVariable(name: "src", arg: 1, scope: !137, file: !138, line: 453, type: !141)
!145 = !DILocalVariable(name: "nbits", arg: 2, scope: !137, file: !138, line: 453, type: !12)
!146 = !DILocation(line: 453, column: 49, scope: !137)
!147 = !DILocation(line: 453, column: 67, scope: !137)
!148 = !DILocation(line: 455, column: 6, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !138, line: 455, column: 6)
!150 = !DILocation(line: 455, column: 6, scope: !137)
!151 = !DILocation(line: 456, column: 24, scope: !149)
!152 = !DILocation(line: 456, column: 23, scope: !149)
!153 = !DILocation(line: 456, column: 30, scope: !149)
!154 = !DILocation(line: 456, column: 28, scope: !149)
!155 = !DILocation(line: 456, column: 10, scope: !149)
!156 = !DILocation(line: 456, column: 3, scope: !149)
!157 = !DILocation(line: 457, column: 25, scope: !137)
!158 = !DILocation(line: 457, column: 30, scope: !137)
!159 = !DILocation(line: 457, column: 9, scope: !137)
!160 = !DILocation(line: 457, column: 2, scope: !137)
!161 = !DILocation(line: 458, column: 1, scope: !137)
!162 = distinct !DISubprogram(name: "__arch_hweight32", scope: !127, file: !127, line: 15, type: !128, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !163)
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "w", arg: 1, scope: !162, file: !127, line: 15, type: !12)
!165 = !DILocalVariable(name: "res", scope: !162, file: !127, line: 17, type: !12)
!166 = !DILocation(line: 15, column: 67, scope: !162)
!167 = !DILocation(line: 17, column: 2, scope: !162)
!168 = !DILocation(line: 17, column: 15, scope: !162)
!169 = !DILocation(line: 21, column: 15, scope: !162)
!170 = !DILocation(line: 19, column: 2, scope: !162)
!171 = !{i64 2147951937, i64 2147951965, i64 2147951971, i64 2147951987, i64 2147952003, i64 2147952030, i64 2147952363, i64 2147951663, i64 2147952369, i64 2147952417, i64 2147952481, i64 2147952545, i64 2147952602, i64 2147951744, i64 2147951769, i64 2147952809, i64 2147952939, i64 2147952870, i64 2147952953, i64 2147951861}
!172 = !DILocation(line: 23, column: 9, scope: !162)
!173 = !DILocation(line: 24, column: 1, scope: !162)
!174 = !DILocation(line: 23, column: 2, scope: !162)
!175 = distinct !DISubprogram(name: "hweight_long", scope: !176, file: !176, line: 95, type: !177, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !179)
!176 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!177 = !DISubroutineType(types: !178)
!178 = !{!11, !11}
!179 = !{!180}
!180 = !DILocalVariable(name: "w", arg: 1, scope: !175, file: !176, line: 95, type: !11)
!181 = !DILocation(line: 95, column: 65, scope: !175)
!182 = !DILocation(line: 97, column: 41, scope: !175)
!183 = !DILocation(line: 97, column: 2, scope: !175)
!184 = !DISubprogram(name: "__bitmap_weight", scope: !138, file: !138, line: 171, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = distinct !DISubprogram(name: "__arch_hweight64", scope: !127, file: !127, line: 43, type: !186, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!11, !16}
!188 = !{!189, !190}
!189 = !DILocalVariable(name: "w", arg: 1, scope: !185, file: !127, line: 43, type: !16)
!190 = !DILocalVariable(name: "res", scope: !185, file: !127, line: 45, type: !11)
!191 = !DILocation(line: 43, column: 61, scope: !185)
!192 = !DILocation(line: 45, column: 2, scope: !185)
!193 = !DILocation(line: 45, column: 16, scope: !185)
!194 = !DILocation(line: 49, column: 15, scope: !185)
!195 = !DILocation(line: 47, column: 2, scope: !185)
!196 = !{i64 2147953816, i64 2147953844, i64 2147953850, i64 2147953866, i64 2147953882, i64 2147953909, i64 2147954242, i64 2147953542, i64 2147954248, i64 2147954296, i64 2147954360, i64 2147954424, i64 2147954481, i64 2147953623, i64 2147953648, i64 2147954688, i64 2147954818, i64 2147954749, i64 2147954832, i64 2147953740}
!197 = !DILocation(line: 51, column: 9, scope: !185)
!198 = !DILocation(line: 52, column: 1, scope: !185)
!199 = !DILocation(line: 51, column: 2, scope: !185)
