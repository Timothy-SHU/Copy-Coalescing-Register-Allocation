; ModuleID = 'lib/crypto/mpi/mpih-div.c'
source_filename = "lib/crypto/mpi/mpih-div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mpihelp_mod_1(ptr noundef %dividend_ptr, i32 noundef %dividend_size, i64 noundef %divisor_limb) #0 align 16 !dbg !17 {
entry:
  %retval = alloca i64, align 8
  %dividend_ptr.addr = alloca ptr, align 8
  %dividend_size.addr = alloca i32, align 4
  %divisor_limb.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %n1 = alloca i64, align 8
  %n0 = alloca i64, align 8
  %r = alloca i64, align 8
  %dummy = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %normalization_steps = alloca i32, align 4
  %__d1 = alloca i64, align 8
  %__d0 = alloca i64, align 8
  %__q1 = alloca i64, align 8
  %__q0 = alloca i64, align 8
  %__r1 = alloca i64, align 8
  %__r0 = alloca i64, align 8
  %__m = alloca i64, align 8
  %__d159 = alloca i64, align 8
  %__d060 = alloca i64, align 8
  %__q161 = alloca i64, align 8
  %__q062 = alloca i64, align 8
  %__r163 = alloca i64, align 8
  %__r064 = alloca i64, align 8
  %__m65 = alloca i64, align 8
  %__d1132 = alloca i64, align 8
  %__d0133 = alloca i64, align 8
  %__q1134 = alloca i64, align 8
  %__q0135 = alloca i64, align 8
  %__r1136 = alloca i64, align 8
  %__r0137 = alloca i64, align 8
  %__m138 = alloca i64, align 8
  store ptr %dividend_ptr, ptr %dividend_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend_ptr.addr, metadata !25, metadata !DIExpression()), !dbg !70
  store i32 %dividend_size, ptr %dividend_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dividend_size.addr, metadata !26, metadata !DIExpression()), !dbg !71
  store i64 %divisor_limb, ptr %divisor_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor_limb.addr, metadata !27, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %i, metadata !28, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #6, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %n1, metadata !29, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 8, ptr %n0) #6, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %n0, metadata !30, metadata !DIExpression()), !dbg !77
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %r, metadata !31, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #6, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !32, metadata !DIExpression()), !dbg !80
  %0 = load i32, ptr %dividend_size.addr, align 4, !dbg !81
  %tobool = icmp ne i32 %0, 0, !dbg !81
  br i1 %tobool, label %if.end, label %if.then, !dbg !83

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !84
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188, !dbg !84

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %normalization_steps) #6, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %normalization_steps, metadata !33, metadata !DIExpression()), !dbg !86
  %1 = load i64, ptr %divisor_limb.addr, align 8, !dbg !87
  %call = call i32 @count_leading_zeros(i64 noundef %1) #7, !dbg !88
  store i32 %call, ptr %normalization_steps, align 4, !dbg !89
  %2 = load i32, ptr %normalization_steps, align 4, !dbg !90
  %tobool1 = icmp ne i32 %2, 0, !dbg !90
  br i1 %tobool1, label %if.then2, label %if.end118, !dbg !91

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %normalization_steps, align 4, !dbg !92
  %4 = load i64, ptr %divisor_limb.addr, align 8, !dbg !93
  %sh_prom = zext i32 %3 to i64, !dbg !93
  %shl = shl i64 %4, %sh_prom, !dbg !93
  store i64 %shl, ptr %divisor_limb.addr, align 8, !dbg !93
  %5 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !94
  %6 = load i32, ptr %dividend_size.addr, align 4, !dbg !95
  %sub = sub i32 %6, 1, !dbg !96
  %idxprom = sext i32 %sub to i64, !dbg !94
  %arrayidx = getelementptr i64, ptr %5, i64 %idxprom, !dbg !94
  %7 = load i64, ptr %arrayidx, align 8, !dbg !94
  store i64 %7, ptr %n1, align 8, !dbg !97
  %8 = load i64, ptr %n1, align 8, !dbg !98
  %9 = load i32, ptr %normalization_steps, align 4, !dbg !99
  %sub3 = sub i32 64, %9, !dbg !100
  %sh_prom4 = zext i32 %sub3 to i64, !dbg !101
  %shr = lshr i64 %8, %sh_prom4, !dbg !101
  store i64 %shr, ptr %r, align 8, !dbg !102
  %10 = load i32, ptr %dividend_size.addr, align 4, !dbg !103
  %sub5 = sub i32 %10, 2, !dbg !104
  store i32 %sub5, ptr %i, align 4, !dbg !105
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.then2
  %11 = load i32, ptr %i, align 4, !dbg !107
  %cmp = icmp sge i32 %11, 0, !dbg !108
  br i1 %cmp, label %for.body, label %for.end, !dbg !109

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !110
  %13 = load i32, ptr %i, align 4, !dbg !111
  %idxprom6 = sext i32 %13 to i64, !dbg !110
  %arrayidx7 = getelementptr i64, ptr %12, i64 %idxprom6, !dbg !110
  %14 = load i64, ptr %arrayidx7, align 8, !dbg !110
  store i64 %14, ptr %n0, align 8, !dbg !112
  br label %do.body, !dbg !113

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d1) #6, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__d1, metadata !38, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d0) #6, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__d0, metadata !45, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q1) #6, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__q1, metadata !46, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q0) #6, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__q0, metadata !47, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r1) #6, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__r1, metadata !48, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r0) #6, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__r0, metadata !49, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m) #6, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__m, metadata !50, metadata !DIExpression()), !dbg !114
  %15 = load i64, ptr %divisor_limb.addr, align 8, !dbg !114
  %shr8 = lshr i64 %15, 32, !dbg !114
  store i64 %shr8, ptr %__d1, align 8, !dbg !114
  %16 = load i64, ptr %divisor_limb.addr, align 8, !dbg !114
  %and = and i64 %16, 4294967295, !dbg !114
  store i64 %and, ptr %__d0, align 8, !dbg !114
  %17 = load i64, ptr %r, align 8, !dbg !114
  %18 = load i64, ptr %__d1, align 8, !dbg !114
  %rem = urem i64 %17, %18, !dbg !114
  store i64 %rem, ptr %__r1, align 8, !dbg !114
  %19 = load i64, ptr %r, align 8, !dbg !114
  %20 = load i64, ptr %__d1, align 8, !dbg !114
  %div = udiv i64 %19, %20, !dbg !114
  store i64 %div, ptr %__q1, align 8, !dbg !114
  %21 = load i64, ptr %__q1, align 8, !dbg !114
  %22 = load i64, ptr %__d0, align 8, !dbg !114
  %mul = mul i64 %21, %22, !dbg !114
  store i64 %mul, ptr %__m, align 8, !dbg !114
  %23 = load i64, ptr %__r1, align 8, !dbg !114
  %mul9 = mul i64 %23, 4294967296, !dbg !114
  %24 = load i64, ptr %n1, align 8, !dbg !114
  %25 = load i32, ptr %normalization_steps, align 4, !dbg !114
  %sh_prom10 = zext i32 %25 to i64, !dbg !114
  %shl11 = shl i64 %24, %sh_prom10, !dbg !114
  %26 = load i64, ptr %n0, align 8, !dbg !114
  %27 = load i32, ptr %normalization_steps, align 4, !dbg !114
  %sub12 = sub i32 64, %27, !dbg !114
  %sh_prom13 = zext i32 %sub12 to i64, !dbg !114
  %shr14 = lshr i64 %26, %sh_prom13, !dbg !114
  %or = or i64 %shl11, %shr14, !dbg !114
  %shr15 = lshr i64 %or, 32, !dbg !114
  %or16 = or i64 %mul9, %shr15, !dbg !114
  store i64 %or16, ptr %__r1, align 8, !dbg !114
  %28 = load i64, ptr %__r1, align 8, !dbg !115
  %29 = load i64, ptr %__m, align 8, !dbg !115
  %cmp17 = icmp ult i64 %28, %29, !dbg !115
  br i1 %cmp17, label %if.then18, label %if.end27, !dbg !114

if.then18:                                        ; preds = %do.body
  %30 = load i64, ptr %__q1, align 8, !dbg !117
  %dec = add i64 %30, -1, !dbg !117
  store i64 %dec, ptr %__q1, align 8, !dbg !117
  %31 = load i64, ptr %divisor_limb.addr, align 8, !dbg !117
  %32 = load i64, ptr %__r1, align 8, !dbg !117
  %add = add i64 %32, %31, !dbg !117
  store i64 %add, ptr %__r1, align 8, !dbg !117
  %33 = load i64, ptr %__r1, align 8, !dbg !119
  %34 = load i64, ptr %divisor_limb.addr, align 8, !dbg !119
  %cmp19 = icmp uge i64 %33, %34, !dbg !119
  br i1 %cmp19, label %if.then20, label %if.end26, !dbg !117

if.then20:                                        ; preds = %if.then18
  %35 = load i64, ptr %__r1, align 8, !dbg !121
  %36 = load i64, ptr %__m, align 8, !dbg !121
  %cmp21 = icmp ult i64 %35, %36, !dbg !121
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !119

if.then22:                                        ; preds = %if.then20
  %37 = load i64, ptr %__q1, align 8, !dbg !121
  %dec23 = add i64 %37, -1, !dbg !121
  store i64 %dec23, ptr %__q1, align 8, !dbg !121
  %38 = load i64, ptr %divisor_limb.addr, align 8, !dbg !121
  %39 = load i64, ptr %__r1, align 8, !dbg !121
  %add24 = add i64 %39, %38, !dbg !121
  store i64 %add24, ptr %__r1, align 8, !dbg !121
  br label %if.end25, !dbg !121

if.end25:                                         ; preds = %if.then22, %if.then20
  br label %if.end26, !dbg !121

if.end26:                                         ; preds = %if.end25, %if.then18
  br label %if.end27, !dbg !117

if.end27:                                         ; preds = %if.end26, %do.body
  %40 = load i64, ptr %__m, align 8, !dbg !114
  %41 = load i64, ptr %__r1, align 8, !dbg !114
  %sub28 = sub i64 %41, %40, !dbg !114
  store i64 %sub28, ptr %__r1, align 8, !dbg !114
  %42 = load i64, ptr %__r1, align 8, !dbg !114
  %43 = load i64, ptr %__d1, align 8, !dbg !114
  %rem29 = urem i64 %42, %43, !dbg !114
  store i64 %rem29, ptr %__r0, align 8, !dbg !114
  %44 = load i64, ptr %__r1, align 8, !dbg !114
  %45 = load i64, ptr %__d1, align 8, !dbg !114
  %div30 = udiv i64 %44, %45, !dbg !114
  store i64 %div30, ptr %__q0, align 8, !dbg !114
  %46 = load i64, ptr %__q0, align 8, !dbg !114
  %47 = load i64, ptr %__d0, align 8, !dbg !114
  %mul31 = mul i64 %46, %47, !dbg !114
  store i64 %mul31, ptr %__m, align 8, !dbg !114
  %48 = load i64, ptr %__r0, align 8, !dbg !114
  %mul32 = mul i64 %48, 4294967296, !dbg !114
  %49 = load i64, ptr %n1, align 8, !dbg !114
  %50 = load i32, ptr %normalization_steps, align 4, !dbg !114
  %sh_prom33 = zext i32 %50 to i64, !dbg !114
  %shl34 = shl i64 %49, %sh_prom33, !dbg !114
  %51 = load i64, ptr %n0, align 8, !dbg !114
  %52 = load i32, ptr %normalization_steps, align 4, !dbg !114
  %sub35 = sub i32 64, %52, !dbg !114
  %sh_prom36 = zext i32 %sub35 to i64, !dbg !114
  %shr37 = lshr i64 %51, %sh_prom36, !dbg !114
  %or38 = or i64 %shl34, %shr37, !dbg !114
  %and39 = and i64 %or38, 4294967295, !dbg !114
  %or40 = or i64 %mul32, %and39, !dbg !114
  store i64 %or40, ptr %__r0, align 8, !dbg !114
  %53 = load i64, ptr %__r0, align 8, !dbg !123
  %54 = load i64, ptr %__m, align 8, !dbg !123
  %cmp41 = icmp ult i64 %53, %54, !dbg !123
  br i1 %cmp41, label %if.then42, label %if.end53, !dbg !114

if.then42:                                        ; preds = %if.end27
  %55 = load i64, ptr %__q0, align 8, !dbg !125
  %dec43 = add i64 %55, -1, !dbg !125
  store i64 %dec43, ptr %__q0, align 8, !dbg !125
  %56 = load i64, ptr %divisor_limb.addr, align 8, !dbg !125
  %57 = load i64, ptr %__r0, align 8, !dbg !125
  %add44 = add i64 %57, %56, !dbg !125
  store i64 %add44, ptr %__r0, align 8, !dbg !125
  %58 = load i64, ptr %__r0, align 8, !dbg !127
  %59 = load i64, ptr %divisor_limb.addr, align 8, !dbg !127
  %cmp45 = icmp uge i64 %58, %59, !dbg !127
  br i1 %cmp45, label %if.then46, label %if.end52, !dbg !125

if.then46:                                        ; preds = %if.then42
  %60 = load i64, ptr %__r0, align 8, !dbg !129
  %61 = load i64, ptr %__m, align 8, !dbg !129
  %cmp47 = icmp ult i64 %60, %61, !dbg !129
  br i1 %cmp47, label %if.then48, label %if.end51, !dbg !127

if.then48:                                        ; preds = %if.then46
  %62 = load i64, ptr %__q0, align 8, !dbg !129
  %dec49 = add i64 %62, -1, !dbg !129
  store i64 %dec49, ptr %__q0, align 8, !dbg !129
  %63 = load i64, ptr %divisor_limb.addr, align 8, !dbg !129
  %64 = load i64, ptr %__r0, align 8, !dbg !129
  %add50 = add i64 %64, %63, !dbg !129
  store i64 %add50, ptr %__r0, align 8, !dbg !129
  br label %if.end51, !dbg !129

if.end51:                                         ; preds = %if.then48, %if.then46
  br label %if.end52, !dbg !129

if.end52:                                         ; preds = %if.end51, %if.then42
  br label %if.end53, !dbg !125

if.end53:                                         ; preds = %if.end52, %if.end27
  %65 = load i64, ptr %__m, align 8, !dbg !114
  %66 = load i64, ptr %__r0, align 8, !dbg !114
  %sub54 = sub i64 %66, %65, !dbg !114
  store i64 %sub54, ptr %__r0, align 8, !dbg !114
  %67 = load i64, ptr %__q1, align 8, !dbg !114
  %mul55 = mul i64 %67, 4294967296, !dbg !114
  %68 = load i64, ptr %__q0, align 8, !dbg !114
  %or56 = or i64 %mul55, %68, !dbg !114
  store i64 %or56, ptr %dummy, align 8, !dbg !114
  %69 = load i64, ptr %__r0, align 8, !dbg !114
  store i64 %69, ptr %r, align 8, !dbg !114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m) #6, !dbg !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r0) #6, !dbg !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r1) #6, !dbg !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q0) #6, !dbg !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q1) #6, !dbg !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d0) #6, !dbg !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d1) #6, !dbg !113
  br label %do.cond, !dbg !114

do.cond:                                          ; preds = %if.end53
  br label %do.end, !dbg !114

do.end:                                           ; preds = %do.cond
  %70 = load i64, ptr %n0, align 8, !dbg !131
  store i64 %70, ptr %n1, align 8, !dbg !132
  br label %for.inc, !dbg !133

for.inc:                                          ; preds = %do.end
  %71 = load i32, ptr %i, align 4, !dbg !134
  %dec57 = add i32 %71, -1, !dbg !134
  store i32 %dec57, ptr %i, align 4, !dbg !134
  br label %for.cond, !dbg !135, !llvm.loop !136

for.end:                                          ; preds = %for.cond
  br label %do.body58, !dbg !140

do.body58:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d159) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__d159, metadata !51, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d060) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__d060, metadata !53, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q161) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__q161, metadata !54, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q062) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__q062, metadata !55, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r163) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__r163, metadata !56, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r064) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__r064, metadata !57, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m65) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__m65, metadata !58, metadata !DIExpression()), !dbg !141
  %72 = load i64, ptr %divisor_limb.addr, align 8, !dbg !141
  %shr66 = lshr i64 %72, 32, !dbg !141
  store i64 %shr66, ptr %__d159, align 8, !dbg !141
  %73 = load i64, ptr %divisor_limb.addr, align 8, !dbg !141
  %and67 = and i64 %73, 4294967295, !dbg !141
  store i64 %and67, ptr %__d060, align 8, !dbg !141
  %74 = load i64, ptr %r, align 8, !dbg !141
  %75 = load i64, ptr %__d159, align 8, !dbg !141
  %rem68 = urem i64 %74, %75, !dbg !141
  store i64 %rem68, ptr %__r163, align 8, !dbg !141
  %76 = load i64, ptr %r, align 8, !dbg !141
  %77 = load i64, ptr %__d159, align 8, !dbg !141
  %div69 = udiv i64 %76, %77, !dbg !141
  store i64 %div69, ptr %__q161, align 8, !dbg !141
  %78 = load i64, ptr %__q161, align 8, !dbg !141
  %79 = load i64, ptr %__d060, align 8, !dbg !141
  %mul70 = mul i64 %78, %79, !dbg !141
  store i64 %mul70, ptr %__m65, align 8, !dbg !141
  %80 = load i64, ptr %__r163, align 8, !dbg !141
  %mul71 = mul i64 %80, 4294967296, !dbg !141
  %81 = load i64, ptr %n1, align 8, !dbg !141
  %82 = load i32, ptr %normalization_steps, align 4, !dbg !141
  %sh_prom72 = zext i32 %82 to i64, !dbg !141
  %shl73 = shl i64 %81, %sh_prom72, !dbg !141
  %shr74 = lshr i64 %shl73, 32, !dbg !141
  %or75 = or i64 %mul71, %shr74, !dbg !141
  store i64 %or75, ptr %__r163, align 8, !dbg !141
  %83 = load i64, ptr %__r163, align 8, !dbg !142
  %84 = load i64, ptr %__m65, align 8, !dbg !142
  %cmp76 = icmp ult i64 %83, %84, !dbg !142
  br i1 %cmp76, label %if.then77, label %if.end88, !dbg !141

if.then77:                                        ; preds = %do.body58
  %85 = load i64, ptr %__q161, align 8, !dbg !144
  %dec78 = add i64 %85, -1, !dbg !144
  store i64 %dec78, ptr %__q161, align 8, !dbg !144
  %86 = load i64, ptr %divisor_limb.addr, align 8, !dbg !144
  %87 = load i64, ptr %__r163, align 8, !dbg !144
  %add79 = add i64 %87, %86, !dbg !144
  store i64 %add79, ptr %__r163, align 8, !dbg !144
  %88 = load i64, ptr %__r163, align 8, !dbg !146
  %89 = load i64, ptr %divisor_limb.addr, align 8, !dbg !146
  %cmp80 = icmp uge i64 %88, %89, !dbg !146
  br i1 %cmp80, label %if.then81, label %if.end87, !dbg !144

if.then81:                                        ; preds = %if.then77
  %90 = load i64, ptr %__r163, align 8, !dbg !148
  %91 = load i64, ptr %__m65, align 8, !dbg !148
  %cmp82 = icmp ult i64 %90, %91, !dbg !148
  br i1 %cmp82, label %if.then83, label %if.end86, !dbg !146

if.then83:                                        ; preds = %if.then81
  %92 = load i64, ptr %__q161, align 8, !dbg !148
  %dec84 = add i64 %92, -1, !dbg !148
  store i64 %dec84, ptr %__q161, align 8, !dbg !148
  %93 = load i64, ptr %divisor_limb.addr, align 8, !dbg !148
  %94 = load i64, ptr %__r163, align 8, !dbg !148
  %add85 = add i64 %94, %93, !dbg !148
  store i64 %add85, ptr %__r163, align 8, !dbg !148
  br label %if.end86, !dbg !148

if.end86:                                         ; preds = %if.then83, %if.then81
  br label %if.end87, !dbg !148

if.end87:                                         ; preds = %if.end86, %if.then77
  br label %if.end88, !dbg !144

if.end88:                                         ; preds = %if.end87, %do.body58
  %95 = load i64, ptr %__m65, align 8, !dbg !141
  %96 = load i64, ptr %__r163, align 8, !dbg !141
  %sub89 = sub i64 %96, %95, !dbg !141
  store i64 %sub89, ptr %__r163, align 8, !dbg !141
  %97 = load i64, ptr %__r163, align 8, !dbg !141
  %98 = load i64, ptr %__d159, align 8, !dbg !141
  %rem90 = urem i64 %97, %98, !dbg !141
  store i64 %rem90, ptr %__r064, align 8, !dbg !141
  %99 = load i64, ptr %__r163, align 8, !dbg !141
  %100 = load i64, ptr %__d159, align 8, !dbg !141
  %div91 = udiv i64 %99, %100, !dbg !141
  store i64 %div91, ptr %__q062, align 8, !dbg !141
  %101 = load i64, ptr %__q062, align 8, !dbg !141
  %102 = load i64, ptr %__d060, align 8, !dbg !141
  %mul92 = mul i64 %101, %102, !dbg !141
  store i64 %mul92, ptr %__m65, align 8, !dbg !141
  %103 = load i64, ptr %__r064, align 8, !dbg !141
  %mul93 = mul i64 %103, 4294967296, !dbg !141
  %104 = load i64, ptr %n1, align 8, !dbg !141
  %105 = load i32, ptr %normalization_steps, align 4, !dbg !141
  %sh_prom94 = zext i32 %105 to i64, !dbg !141
  %shl95 = shl i64 %104, %sh_prom94, !dbg !141
  %and96 = and i64 %shl95, 4294967295, !dbg !141
  %or97 = or i64 %mul93, %and96, !dbg !141
  store i64 %or97, ptr %__r064, align 8, !dbg !141
  %106 = load i64, ptr %__r064, align 8, !dbg !150
  %107 = load i64, ptr %__m65, align 8, !dbg !150
  %cmp98 = icmp ult i64 %106, %107, !dbg !150
  br i1 %cmp98, label %if.then99, label %if.end110, !dbg !141

if.then99:                                        ; preds = %if.end88
  %108 = load i64, ptr %__q062, align 8, !dbg !152
  %dec100 = add i64 %108, -1, !dbg !152
  store i64 %dec100, ptr %__q062, align 8, !dbg !152
  %109 = load i64, ptr %divisor_limb.addr, align 8, !dbg !152
  %110 = load i64, ptr %__r064, align 8, !dbg !152
  %add101 = add i64 %110, %109, !dbg !152
  store i64 %add101, ptr %__r064, align 8, !dbg !152
  %111 = load i64, ptr %__r064, align 8, !dbg !154
  %112 = load i64, ptr %divisor_limb.addr, align 8, !dbg !154
  %cmp102 = icmp uge i64 %111, %112, !dbg !154
  br i1 %cmp102, label %if.then103, label %if.end109, !dbg !152

if.then103:                                       ; preds = %if.then99
  %113 = load i64, ptr %__r064, align 8, !dbg !156
  %114 = load i64, ptr %__m65, align 8, !dbg !156
  %cmp104 = icmp ult i64 %113, %114, !dbg !156
  br i1 %cmp104, label %if.then105, label %if.end108, !dbg !154

if.then105:                                       ; preds = %if.then103
  %115 = load i64, ptr %__q062, align 8, !dbg !156
  %dec106 = add i64 %115, -1, !dbg !156
  store i64 %dec106, ptr %__q062, align 8, !dbg !156
  %116 = load i64, ptr %divisor_limb.addr, align 8, !dbg !156
  %117 = load i64, ptr %__r064, align 8, !dbg !156
  %add107 = add i64 %117, %116, !dbg !156
  store i64 %add107, ptr %__r064, align 8, !dbg !156
  br label %if.end108, !dbg !156

if.end108:                                        ; preds = %if.then105, %if.then103
  br label %if.end109, !dbg !156

if.end109:                                        ; preds = %if.end108, %if.then99
  br label %if.end110, !dbg !152

if.end110:                                        ; preds = %if.end109, %if.end88
  %118 = load i64, ptr %__m65, align 8, !dbg !141
  %119 = load i64, ptr %__r064, align 8, !dbg !141
  %sub111 = sub i64 %119, %118, !dbg !141
  store i64 %sub111, ptr %__r064, align 8, !dbg !141
  %120 = load i64, ptr %__q161, align 8, !dbg !141
  %mul112 = mul i64 %120, 4294967296, !dbg !141
  %121 = load i64, ptr %__q062, align 8, !dbg !141
  %or113 = or i64 %mul112, %121, !dbg !141
  store i64 %or113, ptr %dummy, align 8, !dbg !141
  %122 = load i64, ptr %__r064, align 8, !dbg !141
  store i64 %122, ptr %r, align 8, !dbg !141
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m65) #6, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r064) #6, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r163) #6, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q062) #6, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q161) #6, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d060) #6, !dbg !140
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d159) #6, !dbg !140
  br label %do.cond114, !dbg !141

do.cond114:                                       ; preds = %if.end110
  br label %do.end115, !dbg !141

do.end115:                                        ; preds = %do.cond114
  %123 = load i64, ptr %r, align 8, !dbg !158
  %124 = load i32, ptr %normalization_steps, align 4, !dbg !159
  %sh_prom116 = zext i32 %124 to i64, !dbg !160
  %shr117 = lshr i64 %123, %sh_prom116, !dbg !160
  store i64 %shr117, ptr %retval, align 8, !dbg !161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !161

if.end118:                                        ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !162
  br label %cleanup, !dbg !162

cleanup:                                          ; preds = %if.end118, %do.end115
  call void @llvm.lifetime.end.p0(i64 4, ptr %normalization_steps) #6, !dbg !162
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup188 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %125 = load i32, ptr %dividend_size.addr, align 4, !dbg !163
  %sub119 = sub i32 %125, 1, !dbg !164
  store i32 %sub119, ptr %i, align 4, !dbg !165
  %126 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !166
  %127 = load i32, ptr %i, align 4, !dbg !167
  %idxprom120 = sext i32 %127 to i64, !dbg !166
  %arrayidx121 = getelementptr i64, ptr %126, i64 %idxprom120, !dbg !166
  %128 = load i64, ptr %arrayidx121, align 8, !dbg !166
  store i64 %128, ptr %r, align 8, !dbg !168
  %129 = load i64, ptr %r, align 8, !dbg !169
  %130 = load i64, ptr %divisor_limb.addr, align 8, !dbg !171
  %cmp122 = icmp uge i64 %129, %130, !dbg !172
  br i1 %cmp122, label %if.then123, label %if.else, !dbg !173

if.then123:                                       ; preds = %cleanup.cont
  store i64 0, ptr %r, align 8, !dbg !174
  br label %if.end125, !dbg !175

if.else:                                          ; preds = %cleanup.cont
  %131 = load i32, ptr %i, align 4, !dbg !176
  %dec124 = add i32 %131, -1, !dbg !176
  store i32 %dec124, ptr %i, align 4, !dbg !176
  br label %if.end125

if.end125:                                        ; preds = %if.else, %if.then123
  br label %for.cond126, !dbg !177

for.cond126:                                      ; preds = %for.inc185, %if.end125
  %132 = load i32, ptr %i, align 4, !dbg !178
  %cmp127 = icmp sge i32 %132, 0, !dbg !179
  br i1 %cmp127, label %for.body128, label %for.end187, !dbg !180

for.body128:                                      ; preds = %for.cond126
  %133 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !181
  %134 = load i32, ptr %i, align 4, !dbg !182
  %idxprom129 = sext i32 %134 to i64, !dbg !181
  %arrayidx130 = getelementptr i64, ptr %133, i64 %idxprom129, !dbg !181
  %135 = load i64, ptr %arrayidx130, align 8, !dbg !181
  store i64 %135, ptr %n0, align 8, !dbg !183
  br label %do.body131, !dbg !184

do.body131:                                       ; preds = %for.body128
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d1132) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__d1132, metadata !59, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d0133) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__d0133, metadata !64, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q1134) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__q1134, metadata !65, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q0135) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__q0135, metadata !66, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r1136) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__r1136, metadata !67, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r0137) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__r0137, metadata !68, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m138) #6, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %__m138, metadata !69, metadata !DIExpression()), !dbg !185
  %136 = load i64, ptr %divisor_limb.addr, align 8, !dbg !185
  %shr139 = lshr i64 %136, 32, !dbg !185
  store i64 %shr139, ptr %__d1132, align 8, !dbg !185
  %137 = load i64, ptr %divisor_limb.addr, align 8, !dbg !185
  %and140 = and i64 %137, 4294967295, !dbg !185
  store i64 %and140, ptr %__d0133, align 8, !dbg !185
  %138 = load i64, ptr %r, align 8, !dbg !185
  %139 = load i64, ptr %__d1132, align 8, !dbg !185
  %rem141 = urem i64 %138, %139, !dbg !185
  store i64 %rem141, ptr %__r1136, align 8, !dbg !185
  %140 = load i64, ptr %r, align 8, !dbg !185
  %141 = load i64, ptr %__d1132, align 8, !dbg !185
  %div142 = udiv i64 %140, %141, !dbg !185
  store i64 %div142, ptr %__q1134, align 8, !dbg !185
  %142 = load i64, ptr %__q1134, align 8, !dbg !185
  %143 = load i64, ptr %__d0133, align 8, !dbg !185
  %mul143 = mul i64 %142, %143, !dbg !185
  store i64 %mul143, ptr %__m138, align 8, !dbg !185
  %144 = load i64, ptr %__r1136, align 8, !dbg !185
  %mul144 = mul i64 %144, 4294967296, !dbg !185
  %145 = load i64, ptr %n0, align 8, !dbg !185
  %shr145 = lshr i64 %145, 32, !dbg !185
  %or146 = or i64 %mul144, %shr145, !dbg !185
  store i64 %or146, ptr %__r1136, align 8, !dbg !185
  %146 = load i64, ptr %__r1136, align 8, !dbg !186
  %147 = load i64, ptr %__m138, align 8, !dbg !186
  %cmp147 = icmp ult i64 %146, %147, !dbg !186
  br i1 %cmp147, label %if.then148, label %if.end159, !dbg !185

if.then148:                                       ; preds = %do.body131
  %148 = load i64, ptr %__q1134, align 8, !dbg !188
  %dec149 = add i64 %148, -1, !dbg !188
  store i64 %dec149, ptr %__q1134, align 8, !dbg !188
  %149 = load i64, ptr %divisor_limb.addr, align 8, !dbg !188
  %150 = load i64, ptr %__r1136, align 8, !dbg !188
  %add150 = add i64 %150, %149, !dbg !188
  store i64 %add150, ptr %__r1136, align 8, !dbg !188
  %151 = load i64, ptr %__r1136, align 8, !dbg !190
  %152 = load i64, ptr %divisor_limb.addr, align 8, !dbg !190
  %cmp151 = icmp uge i64 %151, %152, !dbg !190
  br i1 %cmp151, label %if.then152, label %if.end158, !dbg !188

if.then152:                                       ; preds = %if.then148
  %153 = load i64, ptr %__r1136, align 8, !dbg !192
  %154 = load i64, ptr %__m138, align 8, !dbg !192
  %cmp153 = icmp ult i64 %153, %154, !dbg !192
  br i1 %cmp153, label %if.then154, label %if.end157, !dbg !190

if.then154:                                       ; preds = %if.then152
  %155 = load i64, ptr %__q1134, align 8, !dbg !192
  %dec155 = add i64 %155, -1, !dbg !192
  store i64 %dec155, ptr %__q1134, align 8, !dbg !192
  %156 = load i64, ptr %divisor_limb.addr, align 8, !dbg !192
  %157 = load i64, ptr %__r1136, align 8, !dbg !192
  %add156 = add i64 %157, %156, !dbg !192
  store i64 %add156, ptr %__r1136, align 8, !dbg !192
  br label %if.end157, !dbg !192

if.end157:                                        ; preds = %if.then154, %if.then152
  br label %if.end158, !dbg !192

if.end158:                                        ; preds = %if.end157, %if.then148
  br label %if.end159, !dbg !188

if.end159:                                        ; preds = %if.end158, %do.body131
  %158 = load i64, ptr %__m138, align 8, !dbg !185
  %159 = load i64, ptr %__r1136, align 8, !dbg !185
  %sub160 = sub i64 %159, %158, !dbg !185
  store i64 %sub160, ptr %__r1136, align 8, !dbg !185
  %160 = load i64, ptr %__r1136, align 8, !dbg !185
  %161 = load i64, ptr %__d1132, align 8, !dbg !185
  %rem161 = urem i64 %160, %161, !dbg !185
  store i64 %rem161, ptr %__r0137, align 8, !dbg !185
  %162 = load i64, ptr %__r1136, align 8, !dbg !185
  %163 = load i64, ptr %__d1132, align 8, !dbg !185
  %div162 = udiv i64 %162, %163, !dbg !185
  store i64 %div162, ptr %__q0135, align 8, !dbg !185
  %164 = load i64, ptr %__q0135, align 8, !dbg !185
  %165 = load i64, ptr %__d0133, align 8, !dbg !185
  %mul163 = mul i64 %164, %165, !dbg !185
  store i64 %mul163, ptr %__m138, align 8, !dbg !185
  %166 = load i64, ptr %__r0137, align 8, !dbg !185
  %mul164 = mul i64 %166, 4294967296, !dbg !185
  %167 = load i64, ptr %n0, align 8, !dbg !185
  %and165 = and i64 %167, 4294967295, !dbg !185
  %or166 = or i64 %mul164, %and165, !dbg !185
  store i64 %or166, ptr %__r0137, align 8, !dbg !185
  %168 = load i64, ptr %__r0137, align 8, !dbg !194
  %169 = load i64, ptr %__m138, align 8, !dbg !194
  %cmp167 = icmp ult i64 %168, %169, !dbg !194
  br i1 %cmp167, label %if.then168, label %if.end179, !dbg !185

if.then168:                                       ; preds = %if.end159
  %170 = load i64, ptr %__q0135, align 8, !dbg !196
  %dec169 = add i64 %170, -1, !dbg !196
  store i64 %dec169, ptr %__q0135, align 8, !dbg !196
  %171 = load i64, ptr %divisor_limb.addr, align 8, !dbg !196
  %172 = load i64, ptr %__r0137, align 8, !dbg !196
  %add170 = add i64 %172, %171, !dbg !196
  store i64 %add170, ptr %__r0137, align 8, !dbg !196
  %173 = load i64, ptr %__r0137, align 8, !dbg !198
  %174 = load i64, ptr %divisor_limb.addr, align 8, !dbg !198
  %cmp171 = icmp uge i64 %173, %174, !dbg !198
  br i1 %cmp171, label %if.then172, label %if.end178, !dbg !196

if.then172:                                       ; preds = %if.then168
  %175 = load i64, ptr %__r0137, align 8, !dbg !200
  %176 = load i64, ptr %__m138, align 8, !dbg !200
  %cmp173 = icmp ult i64 %175, %176, !dbg !200
  br i1 %cmp173, label %if.then174, label %if.end177, !dbg !198

if.then174:                                       ; preds = %if.then172
  %177 = load i64, ptr %__q0135, align 8, !dbg !200
  %dec175 = add i64 %177, -1, !dbg !200
  store i64 %dec175, ptr %__q0135, align 8, !dbg !200
  %178 = load i64, ptr %divisor_limb.addr, align 8, !dbg !200
  %179 = load i64, ptr %__r0137, align 8, !dbg !200
  %add176 = add i64 %179, %178, !dbg !200
  store i64 %add176, ptr %__r0137, align 8, !dbg !200
  br label %if.end177, !dbg !200

if.end177:                                        ; preds = %if.then174, %if.then172
  br label %if.end178, !dbg !200

if.end178:                                        ; preds = %if.end177, %if.then168
  br label %if.end179, !dbg !196

if.end179:                                        ; preds = %if.end178, %if.end159
  %180 = load i64, ptr %__m138, align 8, !dbg !185
  %181 = load i64, ptr %__r0137, align 8, !dbg !185
  %sub180 = sub i64 %181, %180, !dbg !185
  store i64 %sub180, ptr %__r0137, align 8, !dbg !185
  %182 = load i64, ptr %__q1134, align 8, !dbg !185
  %mul181 = mul i64 %182, 4294967296, !dbg !185
  %183 = load i64, ptr %__q0135, align 8, !dbg !185
  %or182 = or i64 %mul181, %183, !dbg !185
  store i64 %or182, ptr %dummy, align 8, !dbg !185
  %184 = load i64, ptr %__r0137, align 8, !dbg !185
  store i64 %184, ptr %r, align 8, !dbg !185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m138) #6, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r0137) #6, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r1136) #6, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q0135) #6, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q1134) #6, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d0133) #6, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d1132) #6, !dbg !184
  br label %do.cond183, !dbg !185

do.cond183:                                       ; preds = %if.end179
  br label %do.end184, !dbg !185

do.end184:                                        ; preds = %do.cond183
  br label %for.inc185, !dbg !202

for.inc185:                                       ; preds = %do.end184
  %185 = load i32, ptr %i, align 4, !dbg !203
  %dec186 = add i32 %185, -1, !dbg !203
  store i32 %dec186, ptr %i, align 4, !dbg !203
  br label %for.cond126, !dbg !204, !llvm.loop !205

for.end187:                                       ; preds = %for.cond126
  %186 = load i64, ptr %r, align 8, !dbg !207
  store i64 %186, ptr %retval, align 8, !dbg !208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188, !dbg !208

cleanup188:                                       ; preds = %for.end187, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #6, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %n0) #6, !dbg !209
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #6, !dbg !209
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !209
  %187 = load i64, ptr %retval, align 8, !dbg !209
  ret i64 %187, !dbg !209
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @count_leading_zeros(i64 noundef %x) #3 align 16 !dbg !210 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i64, ptr %x.addr, align 8, !dbg !217
  %call = call i32 @fls64(i64 noundef %0) #7, !dbg !219
  %sub = sub i32 64, %call, !dbg !220
  ret i32 %sub, !dbg !221
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mpihelp_divrem(ptr noundef %qp, i32 noundef %qextra_limbs, ptr noundef %np, i32 noundef %nsize, ptr noundef %dp, i32 noundef %dsize) #0 align 16 !dbg !222 {
entry:
  %retval = alloca i64, align 8
  %qp.addr = alloca ptr, align 8
  %qextra_limbs.addr = alloca i32, align 4
  %np.addr = alloca ptr, align 8
  %nsize.addr = alloca i32, align 4
  %dp.addr = alloca ptr, align 8
  %dsize.addr = alloca i32, align 4
  %most_significant_q_limb = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %n1 = alloca i64, align 8
  %d = alloca i64, align 8
  %__d1 = alloca i64, align 8
  %__d0 = alloca i64, align 8
  %__q1 = alloca i64, align 8
  %__q0 = alloca i64, align 8
  %__r1 = alloca i64, align 8
  %__r0 = alloca i64, align 8
  %__m = alloca i64, align 8
  %__d166 = alloca i64, align 8
  %__d067 = alloca i64, align 8
  %__q168 = alloca i64, align 8
  %__q069 = alloca i64, align 8
  %__r170 = alloca i64, align 8
  %__r071 = alloca i64, align 8
  %__m72 = alloca i64, align 8
  %i130 = alloca i32, align 4
  %n1131 = alloca i64, align 8
  %n0 = alloca i64, align 8
  %n2 = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d0 = alloca i64, align 8
  %__x = alloca i64, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  %__x176 = alloca i64, align 8
  %__d1198 = alloca i64, align 8
  %__d0199 = alloca i64, align 8
  %__q1200 = alloca i64, align 8
  %__q0201 = alloca i64, align 8
  %__r1202 = alloca i64, align 8
  %__r0203 = alloca i64, align 8
  %__m204 = alloca i64, align 8
  %__x0 = alloca i64, align 8
  %__x1 = alloca i64, align 8
  %__x2 = alloca i64, align 8
  %__x3 = alloca i64, align 8
  %__ul = alloca i32, align 4
  %__vl = alloca i32, align 4
  %__uh = alloca i32, align 4
  %__vh = alloca i32, align 4
  %__u = alloca i64, align 8
  %__v = alloca i64, align 8
  %__x306 = alloca i64, align 8
  %__x324 = alloca i64, align 8
  %i339 = alloca i32, align 4
  %dX = alloca i64, align 8
  %d1340 = alloca i64, align 8
  %n0341 = alloca i64, align 8
  %q377 = alloca i64, align 8
  %n1378 = alloca i64, align 8
  %n2379 = alloca i64, align 8
  %cy_limb = alloca i64, align 8
  %_i = alloca i32, align 4
  %r413 = alloca i64, align 8
  %__d1415 = alloca i64, align 8
  %__d0416 = alloca i64, align 8
  %__q1417 = alloca i64, align 8
  %__q0418 = alloca i64, align 8
  %__r1419 = alloca i64, align 8
  %__r0420 = alloca i64, align 8
  %__m421 = alloca i64, align 8
  %__x0481 = alloca i64, align 8
  %__x1482 = alloca i64, align 8
  %__x2483 = alloca i64, align 8
  %__x3484 = alloca i64, align 8
  %__ul485 = alloca i32, align 4
  %__vl486 = alloca i32, align 4
  %__uh487 = alloca i32, align 4
  %__vh488 = alloca i32, align 4
  %__u489 = alloca i64, align 8
  %__v490 = alloca i64, align 8
  store ptr %qp, ptr %qp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qp.addr, metadata !226, metadata !DIExpression()), !dbg !347
  store i32 %qextra_limbs, ptr %qextra_limbs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %qextra_limbs.addr, metadata !227, metadata !DIExpression()), !dbg !348
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !228, metadata !DIExpression()), !dbg !349
  store i32 %nsize, ptr %nsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nsize.addr, metadata !229, metadata !DIExpression()), !dbg !350
  store ptr %dp, ptr %dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dp.addr, metadata !230, metadata !DIExpression()), !dbg !351
  store i32 %dsize, ptr %dsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dsize.addr, metadata !231, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 8, ptr %most_significant_q_limb) #6, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %most_significant_q_limb, metadata !232, metadata !DIExpression()), !dbg !354
  store i64 0, ptr %most_significant_q_limb, align 8, !dbg !354
  %0 = load i32, ptr %dsize.addr, align 4, !dbg !355
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb129
  ], !dbg !356

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %dsize.addr, align 4, !dbg !357
  %div = sdiv i32 1, %1, !dbg !358
  %conv = sext i32 %div to i64, !dbg !359
  store i64 %conv, ptr %retval, align 8, !dbg !360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup563, !dbg !360

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %i, metadata !233, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #6, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %n1, metadata !236, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #6, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %d, metadata !237, metadata !DIExpression()), !dbg !366
  %2 = load ptr, ptr %dp.addr, align 8, !dbg !367
  %arrayidx = getelementptr i64, ptr %2, i64 0, !dbg !367
  %3 = load i64, ptr %arrayidx, align 8, !dbg !367
  store i64 %3, ptr %d, align 8, !dbg !368
  %4 = load ptr, ptr %np.addr, align 8, !dbg !369
  %5 = load i32, ptr %nsize.addr, align 4, !dbg !370
  %sub = sub i32 %5, 1, !dbg !371
  %idxprom = sext i32 %sub to i64, !dbg !369
  %arrayidx2 = getelementptr i64, ptr %4, i64 %idxprom, !dbg !369
  %6 = load i64, ptr %arrayidx2, align 8, !dbg !369
  store i64 %6, ptr %n1, align 8, !dbg !372
  %7 = load i64, ptr %n1, align 8, !dbg !373
  %8 = load i64, ptr %d, align 8, !dbg !375
  %cmp = icmp uge i64 %7, %8, !dbg !376
  br i1 %cmp, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %sw.bb1
  %9 = load i64, ptr %d, align 8, !dbg !378
  %10 = load i64, ptr %n1, align 8, !dbg !380
  %sub4 = sub i64 %10, %9, !dbg !380
  store i64 %sub4, ptr %n1, align 8, !dbg !380
  store i64 1, ptr %most_significant_q_limb, align 8, !dbg !381
  br label %if.end, !dbg !382

if.end:                                           ; preds = %if.then, %sw.bb1
  %11 = load i32, ptr %qextra_limbs.addr, align 4, !dbg !383
  %12 = load ptr, ptr %qp.addr, align 8, !dbg !384
  %idx.ext = sext i32 %11 to i64, !dbg !384
  %add.ptr = getelementptr i64, ptr %12, i64 %idx.ext, !dbg !384
  store ptr %add.ptr, ptr %qp.addr, align 8, !dbg !384
  %13 = load i32, ptr %nsize.addr, align 4, !dbg !385
  %sub5 = sub i32 %13, 2, !dbg !386
  store i32 %sub5, ptr %i, align 4, !dbg !387
  br label %for.cond, !dbg !388

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, ptr %i, align 4, !dbg !389
  %cmp6 = icmp sge i32 %14, 0, !dbg !390
  br i1 %cmp6, label %for.body, label %for.end, !dbg !391

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !392

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d1) #6, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__d1, metadata !238, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d0) #6, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__d0, metadata !242, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q1) #6, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__q1, metadata !243, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q0) #6, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__q0, metadata !244, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r1) #6, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__r1, metadata !245, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r0) #6, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__r0, metadata !246, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m) #6, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__m, metadata !247, metadata !DIExpression()), !dbg !393
  %15 = load i64, ptr %d, align 8, !dbg !393
  %shr = lshr i64 %15, 32, !dbg !393
  store i64 %shr, ptr %__d1, align 8, !dbg !393
  %16 = load i64, ptr %d, align 8, !dbg !393
  %and = and i64 %16, 4294967295, !dbg !393
  store i64 %and, ptr %__d0, align 8, !dbg !393
  %17 = load i64, ptr %n1, align 8, !dbg !393
  %18 = load i64, ptr %__d1, align 8, !dbg !393
  %rem = urem i64 %17, %18, !dbg !393
  store i64 %rem, ptr %__r1, align 8, !dbg !393
  %19 = load i64, ptr %n1, align 8, !dbg !393
  %20 = load i64, ptr %__d1, align 8, !dbg !393
  %div8 = udiv i64 %19, %20, !dbg !393
  store i64 %div8, ptr %__q1, align 8, !dbg !393
  %21 = load i64, ptr %__q1, align 8, !dbg !393
  %22 = load i64, ptr %__d0, align 8, !dbg !393
  %mul = mul i64 %21, %22, !dbg !393
  store i64 %mul, ptr %__m, align 8, !dbg !393
  %23 = load i64, ptr %__r1, align 8, !dbg !393
  %mul9 = mul i64 %23, 4294967296, !dbg !393
  %24 = load ptr, ptr %np.addr, align 8, !dbg !393
  %25 = load i32, ptr %i, align 4, !dbg !393
  %idxprom10 = sext i32 %25 to i64, !dbg !393
  %arrayidx11 = getelementptr i64, ptr %24, i64 %idxprom10, !dbg !393
  %26 = load i64, ptr %arrayidx11, align 8, !dbg !393
  %shr12 = lshr i64 %26, 32, !dbg !393
  %or = or i64 %mul9, %shr12, !dbg !393
  store i64 %or, ptr %__r1, align 8, !dbg !393
  %27 = load i64, ptr %__r1, align 8, !dbg !394
  %28 = load i64, ptr %__m, align 8, !dbg !394
  %cmp13 = icmp ult i64 %27, %28, !dbg !394
  br i1 %cmp13, label %if.then15, label %if.end26, !dbg !393

if.then15:                                        ; preds = %do.body
  %29 = load i64, ptr %__q1, align 8, !dbg !396
  %dec = add i64 %29, -1, !dbg !396
  store i64 %dec, ptr %__q1, align 8, !dbg !396
  %30 = load i64, ptr %d, align 8, !dbg !396
  %31 = load i64, ptr %__r1, align 8, !dbg !396
  %add = add i64 %31, %30, !dbg !396
  store i64 %add, ptr %__r1, align 8, !dbg !396
  %32 = load i64, ptr %__r1, align 8, !dbg !398
  %33 = load i64, ptr %d, align 8, !dbg !398
  %cmp16 = icmp uge i64 %32, %33, !dbg !398
  br i1 %cmp16, label %if.then18, label %if.end25, !dbg !396

if.then18:                                        ; preds = %if.then15
  %34 = load i64, ptr %__r1, align 8, !dbg !400
  %35 = load i64, ptr %__m, align 8, !dbg !400
  %cmp19 = icmp ult i64 %34, %35, !dbg !400
  br i1 %cmp19, label %if.then21, label %if.end24, !dbg !398

if.then21:                                        ; preds = %if.then18
  %36 = load i64, ptr %__q1, align 8, !dbg !400
  %dec22 = add i64 %36, -1, !dbg !400
  store i64 %dec22, ptr %__q1, align 8, !dbg !400
  %37 = load i64, ptr %d, align 8, !dbg !400
  %38 = load i64, ptr %__r1, align 8, !dbg !400
  %add23 = add i64 %38, %37, !dbg !400
  store i64 %add23, ptr %__r1, align 8, !dbg !400
  br label %if.end24, !dbg !400

if.end24:                                         ; preds = %if.then21, %if.then18
  br label %if.end25, !dbg !400

if.end25:                                         ; preds = %if.end24, %if.then15
  br label %if.end26, !dbg !396

if.end26:                                         ; preds = %if.end25, %do.body
  %39 = load i64, ptr %__m, align 8, !dbg !393
  %40 = load i64, ptr %__r1, align 8, !dbg !393
  %sub27 = sub i64 %40, %39, !dbg !393
  store i64 %sub27, ptr %__r1, align 8, !dbg !393
  %41 = load i64, ptr %__r1, align 8, !dbg !393
  %42 = load i64, ptr %__d1, align 8, !dbg !393
  %rem28 = urem i64 %41, %42, !dbg !393
  store i64 %rem28, ptr %__r0, align 8, !dbg !393
  %43 = load i64, ptr %__r1, align 8, !dbg !393
  %44 = load i64, ptr %__d1, align 8, !dbg !393
  %div29 = udiv i64 %43, %44, !dbg !393
  store i64 %div29, ptr %__q0, align 8, !dbg !393
  %45 = load i64, ptr %__q0, align 8, !dbg !393
  %46 = load i64, ptr %__d0, align 8, !dbg !393
  %mul30 = mul i64 %45, %46, !dbg !393
  store i64 %mul30, ptr %__m, align 8, !dbg !393
  %47 = load i64, ptr %__r0, align 8, !dbg !393
  %mul31 = mul i64 %47, 4294967296, !dbg !393
  %48 = load ptr, ptr %np.addr, align 8, !dbg !393
  %49 = load i32, ptr %i, align 4, !dbg !393
  %idxprom32 = sext i32 %49 to i64, !dbg !393
  %arrayidx33 = getelementptr i64, ptr %48, i64 %idxprom32, !dbg !393
  %50 = load i64, ptr %arrayidx33, align 8, !dbg !393
  %and34 = and i64 %50, 4294967295, !dbg !393
  %or35 = or i64 %mul31, %and34, !dbg !393
  store i64 %or35, ptr %__r0, align 8, !dbg !393
  %51 = load i64, ptr %__r0, align 8, !dbg !402
  %52 = load i64, ptr %__m, align 8, !dbg !402
  %cmp36 = icmp ult i64 %51, %52, !dbg !402
  br i1 %cmp36, label %if.then38, label %if.end51, !dbg !393

if.then38:                                        ; preds = %if.end26
  %53 = load i64, ptr %__q0, align 8, !dbg !404
  %dec39 = add i64 %53, -1, !dbg !404
  store i64 %dec39, ptr %__q0, align 8, !dbg !404
  %54 = load i64, ptr %d, align 8, !dbg !404
  %55 = load i64, ptr %__r0, align 8, !dbg !404
  %add40 = add i64 %55, %54, !dbg !404
  store i64 %add40, ptr %__r0, align 8, !dbg !404
  %56 = load i64, ptr %__r0, align 8, !dbg !406
  %57 = load i64, ptr %d, align 8, !dbg !406
  %cmp41 = icmp uge i64 %56, %57, !dbg !406
  br i1 %cmp41, label %if.then43, label %if.end50, !dbg !404

if.then43:                                        ; preds = %if.then38
  %58 = load i64, ptr %__r0, align 8, !dbg !408
  %59 = load i64, ptr %__m, align 8, !dbg !408
  %cmp44 = icmp ult i64 %58, %59, !dbg !408
  br i1 %cmp44, label %if.then46, label %if.end49, !dbg !406

if.then46:                                        ; preds = %if.then43
  %60 = load i64, ptr %__q0, align 8, !dbg !408
  %dec47 = add i64 %60, -1, !dbg !408
  store i64 %dec47, ptr %__q0, align 8, !dbg !408
  %61 = load i64, ptr %d, align 8, !dbg !408
  %62 = load i64, ptr %__r0, align 8, !dbg !408
  %add48 = add i64 %62, %61, !dbg !408
  store i64 %add48, ptr %__r0, align 8, !dbg !408
  br label %if.end49, !dbg !408

if.end49:                                         ; preds = %if.then46, %if.then43
  br label %if.end50, !dbg !408

if.end50:                                         ; preds = %if.end49, %if.then38
  br label %if.end51, !dbg !404

if.end51:                                         ; preds = %if.end50, %if.end26
  %63 = load i64, ptr %__m, align 8, !dbg !393
  %64 = load i64, ptr %__r0, align 8, !dbg !393
  %sub52 = sub i64 %64, %63, !dbg !393
  store i64 %sub52, ptr %__r0, align 8, !dbg !393
  %65 = load i64, ptr %__q1, align 8, !dbg !393
  %mul53 = mul i64 %65, 4294967296, !dbg !393
  %66 = load i64, ptr %__q0, align 8, !dbg !393
  %or54 = or i64 %mul53, %66, !dbg !393
  %67 = load ptr, ptr %qp.addr, align 8, !dbg !393
  %68 = load i32, ptr %i, align 4, !dbg !393
  %idxprom55 = sext i32 %68 to i64, !dbg !393
  %arrayidx56 = getelementptr i64, ptr %67, i64 %idxprom55, !dbg !393
  store i64 %or54, ptr %arrayidx56, align 8, !dbg !393
  %69 = load i64, ptr %__r0, align 8, !dbg !393
  store i64 %69, ptr %n1, align 8, !dbg !393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m) #6, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r0) #6, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r1) #6, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q0) #6, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q1) #6, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d0) #6, !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d1) #6, !dbg !392
  br label %do.cond, !dbg !393

do.cond:                                          ; preds = %if.end51
  br label %do.end, !dbg !393

do.end:                                           ; preds = %do.cond
  br label %for.inc, !dbg !393

for.inc:                                          ; preds = %do.end
  %70 = load i32, ptr %i, align 4, !dbg !410
  %dec57 = add i32 %70, -1, !dbg !410
  store i32 %dec57, ptr %i, align 4, !dbg !410
  br label %for.cond, !dbg !411, !llvm.loop !412

for.end:                                          ; preds = %for.cond
  %71 = load i32, ptr %qextra_limbs.addr, align 4, !dbg !414
  %72 = load ptr, ptr %qp.addr, align 8, !dbg !415
  %idx.ext58 = sext i32 %71 to i64, !dbg !415
  %idx.neg = sub i64 0, %idx.ext58, !dbg !415
  %add.ptr59 = getelementptr i64, ptr %72, i64 %idx.neg, !dbg !415
  store ptr %add.ptr59, ptr %qp.addr, align 8, !dbg !415
  %73 = load i32, ptr %qextra_limbs.addr, align 4, !dbg !416
  %sub60 = sub i32 %73, 1, !dbg !417
  store i32 %sub60, ptr %i, align 4, !dbg !418
  br label %for.cond61, !dbg !419

for.cond61:                                       ; preds = %for.inc125, %for.end
  %74 = load i32, ptr %i, align 4, !dbg !420
  %cmp62 = icmp sge i32 %74, 0, !dbg !421
  br i1 %cmp62, label %for.body64, label %for.end127, !dbg !422

for.body64:                                       ; preds = %for.cond61
  br label %do.body65, !dbg !423

do.body65:                                        ; preds = %for.body64
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d166) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__d166, metadata !248, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d067) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__d067, metadata !252, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q168) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__q168, metadata !253, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q069) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__q069, metadata !254, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r170) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__r170, metadata !255, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r071) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__r071, metadata !256, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m72) #6, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %__m72, metadata !257, metadata !DIExpression()), !dbg !424
  %75 = load i64, ptr %d, align 8, !dbg !424
  %shr73 = lshr i64 %75, 32, !dbg !424
  store i64 %shr73, ptr %__d166, align 8, !dbg !424
  %76 = load i64, ptr %d, align 8, !dbg !424
  %and74 = and i64 %76, 4294967295, !dbg !424
  store i64 %and74, ptr %__d067, align 8, !dbg !424
  %77 = load i64, ptr %n1, align 8, !dbg !424
  %78 = load i64, ptr %__d166, align 8, !dbg !424
  %rem75 = urem i64 %77, %78, !dbg !424
  store i64 %rem75, ptr %__r170, align 8, !dbg !424
  %79 = load i64, ptr %n1, align 8, !dbg !424
  %80 = load i64, ptr %__d166, align 8, !dbg !424
  %div76 = udiv i64 %79, %80, !dbg !424
  store i64 %div76, ptr %__q168, align 8, !dbg !424
  %81 = load i64, ptr %__q168, align 8, !dbg !424
  %82 = load i64, ptr %__d067, align 8, !dbg !424
  %mul77 = mul i64 %81, %82, !dbg !424
  store i64 %mul77, ptr %__m72, align 8, !dbg !424
  %83 = load i64, ptr %__r170, align 8, !dbg !424
  %mul78 = mul i64 %83, 4294967296, !dbg !424
  %or79 = or i64 %mul78, 0, !dbg !424
  store i64 %or79, ptr %__r170, align 8, !dbg !424
  %84 = load i64, ptr %__r170, align 8, !dbg !425
  %85 = load i64, ptr %__m72, align 8, !dbg !425
  %cmp80 = icmp ult i64 %84, %85, !dbg !425
  br i1 %cmp80, label %if.then82, label %if.end95, !dbg !424

if.then82:                                        ; preds = %do.body65
  %86 = load i64, ptr %__q168, align 8, !dbg !427
  %dec83 = add i64 %86, -1, !dbg !427
  store i64 %dec83, ptr %__q168, align 8, !dbg !427
  %87 = load i64, ptr %d, align 8, !dbg !427
  %88 = load i64, ptr %__r170, align 8, !dbg !427
  %add84 = add i64 %88, %87, !dbg !427
  store i64 %add84, ptr %__r170, align 8, !dbg !427
  %89 = load i64, ptr %__r170, align 8, !dbg !429
  %90 = load i64, ptr %d, align 8, !dbg !429
  %cmp85 = icmp uge i64 %89, %90, !dbg !429
  br i1 %cmp85, label %if.then87, label %if.end94, !dbg !427

if.then87:                                        ; preds = %if.then82
  %91 = load i64, ptr %__r170, align 8, !dbg !431
  %92 = load i64, ptr %__m72, align 8, !dbg !431
  %cmp88 = icmp ult i64 %91, %92, !dbg !431
  br i1 %cmp88, label %if.then90, label %if.end93, !dbg !429

if.then90:                                        ; preds = %if.then87
  %93 = load i64, ptr %__q168, align 8, !dbg !431
  %dec91 = add i64 %93, -1, !dbg !431
  store i64 %dec91, ptr %__q168, align 8, !dbg !431
  %94 = load i64, ptr %d, align 8, !dbg !431
  %95 = load i64, ptr %__r170, align 8, !dbg !431
  %add92 = add i64 %95, %94, !dbg !431
  store i64 %add92, ptr %__r170, align 8, !dbg !431
  br label %if.end93, !dbg !431

if.end93:                                         ; preds = %if.then90, %if.then87
  br label %if.end94, !dbg !431

if.end94:                                         ; preds = %if.end93, %if.then82
  br label %if.end95, !dbg !427

if.end95:                                         ; preds = %if.end94, %do.body65
  %96 = load i64, ptr %__m72, align 8, !dbg !424
  %97 = load i64, ptr %__r170, align 8, !dbg !424
  %sub96 = sub i64 %97, %96, !dbg !424
  store i64 %sub96, ptr %__r170, align 8, !dbg !424
  %98 = load i64, ptr %__r170, align 8, !dbg !424
  %99 = load i64, ptr %__d166, align 8, !dbg !424
  %rem97 = urem i64 %98, %99, !dbg !424
  store i64 %rem97, ptr %__r071, align 8, !dbg !424
  %100 = load i64, ptr %__r170, align 8, !dbg !424
  %101 = load i64, ptr %__d166, align 8, !dbg !424
  %div98 = udiv i64 %100, %101, !dbg !424
  store i64 %div98, ptr %__q069, align 8, !dbg !424
  %102 = load i64, ptr %__q069, align 8, !dbg !424
  %103 = load i64, ptr %__d067, align 8, !dbg !424
  %mul99 = mul i64 %102, %103, !dbg !424
  store i64 %mul99, ptr %__m72, align 8, !dbg !424
  %104 = load i64, ptr %__r071, align 8, !dbg !424
  %mul100 = mul i64 %104, 4294967296, !dbg !424
  %or101 = or i64 %mul100, 0, !dbg !424
  store i64 %or101, ptr %__r071, align 8, !dbg !424
  %105 = load i64, ptr %__r071, align 8, !dbg !433
  %106 = load i64, ptr %__m72, align 8, !dbg !433
  %cmp102 = icmp ult i64 %105, %106, !dbg !433
  br i1 %cmp102, label %if.then104, label %if.end117, !dbg !424

if.then104:                                       ; preds = %if.end95
  %107 = load i64, ptr %__q069, align 8, !dbg !435
  %dec105 = add i64 %107, -1, !dbg !435
  store i64 %dec105, ptr %__q069, align 8, !dbg !435
  %108 = load i64, ptr %d, align 8, !dbg !435
  %109 = load i64, ptr %__r071, align 8, !dbg !435
  %add106 = add i64 %109, %108, !dbg !435
  store i64 %add106, ptr %__r071, align 8, !dbg !435
  %110 = load i64, ptr %__r071, align 8, !dbg !437
  %111 = load i64, ptr %d, align 8, !dbg !437
  %cmp107 = icmp uge i64 %110, %111, !dbg !437
  br i1 %cmp107, label %if.then109, label %if.end116, !dbg !435

if.then109:                                       ; preds = %if.then104
  %112 = load i64, ptr %__r071, align 8, !dbg !439
  %113 = load i64, ptr %__m72, align 8, !dbg !439
  %cmp110 = icmp ult i64 %112, %113, !dbg !439
  br i1 %cmp110, label %if.then112, label %if.end115, !dbg !437

if.then112:                                       ; preds = %if.then109
  %114 = load i64, ptr %__q069, align 8, !dbg !439
  %dec113 = add i64 %114, -1, !dbg !439
  store i64 %dec113, ptr %__q069, align 8, !dbg !439
  %115 = load i64, ptr %d, align 8, !dbg !439
  %116 = load i64, ptr %__r071, align 8, !dbg !439
  %add114 = add i64 %116, %115, !dbg !439
  store i64 %add114, ptr %__r071, align 8, !dbg !439
  br label %if.end115, !dbg !439

if.end115:                                        ; preds = %if.then112, %if.then109
  br label %if.end116, !dbg !439

if.end116:                                        ; preds = %if.end115, %if.then104
  br label %if.end117, !dbg !435

if.end117:                                        ; preds = %if.end116, %if.end95
  %117 = load i64, ptr %__m72, align 8, !dbg !424
  %118 = load i64, ptr %__r071, align 8, !dbg !424
  %sub118 = sub i64 %118, %117, !dbg !424
  store i64 %sub118, ptr %__r071, align 8, !dbg !424
  %119 = load i64, ptr %__q168, align 8, !dbg !424
  %mul119 = mul i64 %119, 4294967296, !dbg !424
  %120 = load i64, ptr %__q069, align 8, !dbg !424
  %or120 = or i64 %mul119, %120, !dbg !424
  %121 = load ptr, ptr %qp.addr, align 8, !dbg !424
  %122 = load i32, ptr %i, align 4, !dbg !424
  %idxprom121 = sext i32 %122 to i64, !dbg !424
  %arrayidx122 = getelementptr i64, ptr %121, i64 %idxprom121, !dbg !424
  store i64 %or120, ptr %arrayidx122, align 8, !dbg !424
  %123 = load i64, ptr %__r071, align 8, !dbg !424
  store i64 %123, ptr %n1, align 8, !dbg !424
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m72) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r071) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r170) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q069) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q168) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d067) #6, !dbg !423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d166) #6, !dbg !423
  br label %do.cond123, !dbg !424

do.cond123:                                       ; preds = %if.end117
  br label %do.end124, !dbg !424

do.end124:                                        ; preds = %do.cond123
  br label %for.inc125, !dbg !424

for.inc125:                                       ; preds = %do.end124
  %124 = load i32, ptr %i, align 4, !dbg !441
  %dec126 = add i32 %124, -1, !dbg !441
  store i32 %dec126, ptr %i, align 4, !dbg !441
  br label %for.cond61, !dbg !442, !llvm.loop !443

for.end127:                                       ; preds = %for.cond61
  %125 = load i64, ptr %n1, align 8, !dbg !445
  %126 = load ptr, ptr %np.addr, align 8, !dbg !446
  %arrayidx128 = getelementptr i64, ptr %126, i64 0, !dbg !446
  store i64 %125, ptr %arrayidx128, align 8, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #6, !dbg !448
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #6, !dbg !448
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !448
  br label %sw.epilog, !dbg !449

sw.bb129:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i130) #6, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %i130, metadata !258, metadata !DIExpression()), !dbg !451
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1131) #6, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %n1131, metadata !260, metadata !DIExpression()), !dbg !453
  call void @llvm.lifetime.start.p0(i64 8, ptr %n0) #6, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %n0, metadata !261, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 8, ptr %n2) #6, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %n2, metadata !262, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #6, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %d1, metadata !263, metadata !DIExpression()), !dbg !457
  call void @llvm.lifetime.start.p0(i64 8, ptr %d0) #6, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %d0, metadata !264, metadata !DIExpression()), !dbg !458
  %127 = load i32, ptr %nsize.addr, align 4, !dbg !459
  %sub132 = sub i32 %127, 2, !dbg !460
  %128 = load ptr, ptr %np.addr, align 8, !dbg !461
  %idx.ext133 = sext i32 %sub132 to i64, !dbg !461
  %add.ptr134 = getelementptr i64, ptr %128, i64 %idx.ext133, !dbg !461
  store ptr %add.ptr134, ptr %np.addr, align 8, !dbg !461
  %129 = load ptr, ptr %dp.addr, align 8, !dbg !462
  %arrayidx135 = getelementptr i64, ptr %129, i64 1, !dbg !462
  %130 = load i64, ptr %arrayidx135, align 8, !dbg !462
  store i64 %130, ptr %d1, align 8, !dbg !463
  %131 = load ptr, ptr %dp.addr, align 8, !dbg !464
  %arrayidx136 = getelementptr i64, ptr %131, i64 0, !dbg !464
  %132 = load i64, ptr %arrayidx136, align 8, !dbg !464
  store i64 %132, ptr %d0, align 8, !dbg !465
  %133 = load ptr, ptr %np.addr, align 8, !dbg !466
  %arrayidx137 = getelementptr i64, ptr %133, i64 1, !dbg !466
  %134 = load i64, ptr %arrayidx137, align 8, !dbg !466
  store i64 %134, ptr %n1131, align 8, !dbg !467
  %135 = load ptr, ptr %np.addr, align 8, !dbg !468
  %arrayidx138 = getelementptr i64, ptr %135, i64 0, !dbg !468
  %136 = load i64, ptr %arrayidx138, align 8, !dbg !468
  store i64 %136, ptr %n0, align 8, !dbg !469
  %137 = load i64, ptr %n1131, align 8, !dbg !470
  %138 = load i64, ptr %d1, align 8, !dbg !471
  %cmp139 = icmp uge i64 %137, %138, !dbg !472
  br i1 %cmp139, label %land.lhs.true, label %if.end155, !dbg !473

land.lhs.true:                                    ; preds = %sw.bb129
  %139 = load i64, ptr %n1131, align 8, !dbg !474
  %140 = load i64, ptr %d1, align 8, !dbg !475
  %cmp141 = icmp ugt i64 %139, %140, !dbg !476
  br i1 %cmp141, label %if.then145, label %lor.lhs.false, !dbg !477

lor.lhs.false:                                    ; preds = %land.lhs.true
  %141 = load i64, ptr %n0, align 8, !dbg !478
  %142 = load i64, ptr %d0, align 8, !dbg !479
  %cmp143 = icmp uge i64 %141, %142, !dbg !480
  br i1 %cmp143, label %if.then145, label %if.end155, !dbg !481

if.then145:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body146, !dbg !482

do.body146:                                       ; preds = %if.then145
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #6, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !265, metadata !DIExpression()), !dbg !483
  %143 = load i64, ptr %n0, align 8, !dbg !483
  %144 = load i64, ptr %d0, align 8, !dbg !483
  %sub147 = sub i64 %143, %144, !dbg !483
  store i64 %sub147, ptr %__x, align 8, !dbg !483
  %145 = load i64, ptr %n1131, align 8, !dbg !483
  %146 = load i64, ptr %d1, align 8, !dbg !483
  %sub148 = sub i64 %145, %146, !dbg !483
  %147 = load i64, ptr %__x, align 8, !dbg !483
  %148 = load i64, ptr %n0, align 8, !dbg !483
  %cmp149 = icmp ugt i64 %147, %148, !dbg !483
  %conv150 = zext i1 %cmp149 to i32, !dbg !483
  %conv151 = sext i32 %conv150 to i64, !dbg !483
  %sub152 = sub i64 %sub148, %conv151, !dbg !483
  store i64 %sub152, ptr %n1131, align 8, !dbg !483
  %149 = load i64, ptr %__x, align 8, !dbg !483
  store i64 %149, ptr %n0, align 8, !dbg !483
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #6, !dbg !482
  br label %do.cond153, !dbg !483

do.cond153:                                       ; preds = %do.body146
  br label %do.end154, !dbg !483

do.end154:                                        ; preds = %do.cond153
  store i64 1, ptr %most_significant_q_limb, align 8, !dbg !484
  br label %if.end155, !dbg !485

if.end155:                                        ; preds = %do.end154, %lor.lhs.false, %sw.bb129
  %150 = load i32, ptr %qextra_limbs.addr, align 4, !dbg !486
  %151 = load i32, ptr %nsize.addr, align 4, !dbg !487
  %add156 = add i32 %150, %151, !dbg !488
  %sub157 = sub i32 %add156, 2, !dbg !489
  %sub158 = sub i32 %sub157, 1, !dbg !490
  store i32 %sub158, ptr %i130, align 4, !dbg !491
  br label %for.cond159, !dbg !492

for.cond159:                                      ; preds = %for.inc334, %if.end155
  %152 = load i32, ptr %i130, align 4, !dbg !493
  %cmp160 = icmp sge i32 %152, 0, !dbg !494
  br i1 %cmp160, label %for.body162, label %for.end336, !dbg !495

for.body162:                                      ; preds = %for.cond159
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #6, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %q, metadata !269, metadata !DIExpression()), !dbg !497
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6, !dbg !498
  call void @llvm.dbg.declare(metadata ptr %r, metadata !273, metadata !DIExpression()), !dbg !499
  %153 = load i32, ptr %i130, align 4, !dbg !500
  %154 = load i32, ptr %qextra_limbs.addr, align 4, !dbg !502
  %cmp163 = icmp sge i32 %153, %154, !dbg !503
  br i1 %cmp163, label %if.then165, label %if.else, !dbg !504

if.then165:                                       ; preds = %for.body162
  %155 = load ptr, ptr %np.addr, align 8, !dbg !505
  %incdec.ptr = getelementptr i64, ptr %155, i32 -1, !dbg !505
  store ptr %incdec.ptr, ptr %np.addr, align 8, !dbg !505
  br label %if.end167, !dbg !506

if.else:                                          ; preds = %for.body162
  %156 = load ptr, ptr %np.addr, align 8, !dbg !507
  %arrayidx166 = getelementptr i64, ptr %156, i64 0, !dbg !507
  store i64 0, ptr %arrayidx166, align 8, !dbg !508
  br label %if.end167

if.end167:                                        ; preds = %if.else, %if.then165
  %157 = load i64, ptr %n1131, align 8, !dbg !509
  %158 = load i64, ptr %d1, align 8, !dbg !510
  %cmp168 = icmp eq i64 %157, %158, !dbg !511
  br i1 %cmp168, label %if.then170, label %if.else196, !dbg !512

if.then170:                                       ; preds = %if.end167
  store i64 -1, ptr %q, align 8, !dbg !513
  %159 = load i64, ptr %n0, align 8, !dbg !514
  %160 = load i64, ptr %d1, align 8, !dbg !515
  %add171 = add i64 %159, %160, !dbg !516
  store i64 %add171, ptr %r, align 8, !dbg !517
  %161 = load i64, ptr %r, align 8, !dbg !518
  %162 = load i64, ptr %d1, align 8, !dbg !519
  %cmp172 = icmp ult i64 %161, %162, !dbg !520
  br i1 %cmp172, label %if.then174, label %if.end190, !dbg !521

if.then174:                                       ; preds = %if.then170
  br label %do.body175, !dbg !522

do.body175:                                       ; preds = %if.then174
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x176) #6, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %__x176, metadata !274, metadata !DIExpression()), !dbg !523
  %163 = load ptr, ptr %np.addr, align 8, !dbg !523
  %arrayidx177 = getelementptr i64, ptr %163, i64 0, !dbg !523
  %164 = load i64, ptr %arrayidx177, align 8, !dbg !523
  %165 = load i64, ptr %d0, align 8, !dbg !523
  %add178 = add i64 %164, %165, !dbg !523
  store i64 %add178, ptr %__x176, align 8, !dbg !523
  %166 = load i64, ptr %r, align 8, !dbg !523
  %167 = load i64, ptr %d0, align 8, !dbg !523
  %sub179 = sub i64 %166, %167, !dbg !523
  %add180 = add i64 %sub179, 0, !dbg !523
  %168 = load i64, ptr %__x176, align 8, !dbg !523
  %169 = load ptr, ptr %np.addr, align 8, !dbg !523
  %arrayidx181 = getelementptr i64, ptr %169, i64 0, !dbg !523
  %170 = load i64, ptr %arrayidx181, align 8, !dbg !523
  %cmp182 = icmp ult i64 %168, %170, !dbg !523
  %conv183 = zext i1 %cmp182 to i32, !dbg !523
  %conv184 = sext i32 %conv183 to i64, !dbg !523
  %add185 = add i64 %add180, %conv184, !dbg !523
  store i64 %add185, ptr %n1131, align 8, !dbg !523
  %171 = load i64, ptr %__x176, align 8, !dbg !523
  store i64 %171, ptr %n0, align 8, !dbg !523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x176) #6, !dbg !522
  br label %do.cond186, !dbg !523

do.cond186:                                       ; preds = %do.body175
  br label %do.end187, !dbg !523

do.end187:                                        ; preds = %do.cond186
  %172 = load i64, ptr %q, align 8, !dbg !524
  %173 = load ptr, ptr %qp.addr, align 8, !dbg !525
  %174 = load i32, ptr %i130, align 4, !dbg !526
  %idxprom188 = sext i32 %174 to i64, !dbg !525
  %arrayidx189 = getelementptr i64, ptr %173, i64 %idxprom188, !dbg !525
  store i64 %172, ptr %arrayidx189, align 8, !dbg !527
  store i32 17, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !528

if.end190:                                        ; preds = %if.then170
  %175 = load i64, ptr %d0, align 8, !dbg !529
  %176 = load i64, ptr %d0, align 8, !dbg !530
  %cmp191 = icmp ne i64 %176, 0, !dbg !531
  %177 = zext i1 %cmp191 to i64, !dbg !530
  %cond = select i1 %cmp191, i32 1, i32 0, !dbg !530
  %conv193 = sext i32 %cond to i64, !dbg !532
  %sub194 = sub i64 %175, %conv193, !dbg !533
  store i64 %sub194, ptr %n1131, align 8, !dbg !534
  %178 = load i64, ptr %d0, align 8, !dbg !535
  %sub195 = sub i64 0, %178, !dbg !536
  store i64 %sub195, ptr %n0, align 8, !dbg !537
  br label %if.end293, !dbg !538

if.else196:                                       ; preds = %if.end167
  br label %do.body197, !dbg !539

do.body197:                                       ; preds = %if.else196
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d1198) #6, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %__d1198, metadata !280, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d0199) #6, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %__d0199, metadata !283, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q1200) #6, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %__q1200, metadata !284, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q0201) #6, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %__q0201, metadata !285, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r1202) #6, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %__r1202, metadata !286, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r0203) #6, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %__r0203, metadata !287, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m204) #6, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %__m204, metadata !288, metadata !DIExpression()), !dbg !540
  %179 = load i64, ptr %d1, align 8, !dbg !540
  %shr205 = lshr i64 %179, 32, !dbg !540
  store i64 %shr205, ptr %__d1198, align 8, !dbg !540
  %180 = load i64, ptr %d1, align 8, !dbg !540
  %and206 = and i64 %180, 4294967295, !dbg !540
  store i64 %and206, ptr %__d0199, align 8, !dbg !540
  %181 = load i64, ptr %n1131, align 8, !dbg !540
  %182 = load i64, ptr %__d1198, align 8, !dbg !540
  %rem207 = urem i64 %181, %182, !dbg !540
  store i64 %rem207, ptr %__r1202, align 8, !dbg !540
  %183 = load i64, ptr %n1131, align 8, !dbg !540
  %184 = load i64, ptr %__d1198, align 8, !dbg !540
  %div208 = udiv i64 %183, %184, !dbg !540
  store i64 %div208, ptr %__q1200, align 8, !dbg !540
  %185 = load i64, ptr %__q1200, align 8, !dbg !540
  %186 = load i64, ptr %__d0199, align 8, !dbg !540
  %mul209 = mul i64 %185, %186, !dbg !540
  store i64 %mul209, ptr %__m204, align 8, !dbg !540
  %187 = load i64, ptr %__r1202, align 8, !dbg !540
  %mul210 = mul i64 %187, 4294967296, !dbg !540
  %188 = load i64, ptr %n0, align 8, !dbg !540
  %shr211 = lshr i64 %188, 32, !dbg !540
  %or212 = or i64 %mul210, %shr211, !dbg !540
  store i64 %or212, ptr %__r1202, align 8, !dbg !540
  %189 = load i64, ptr %__r1202, align 8, !dbg !541
  %190 = load i64, ptr %__m204, align 8, !dbg !541
  %cmp213 = icmp ult i64 %189, %190, !dbg !541
  br i1 %cmp213, label %if.then215, label %if.end228, !dbg !540

if.then215:                                       ; preds = %do.body197
  %191 = load i64, ptr %__q1200, align 8, !dbg !543
  %dec216 = add i64 %191, -1, !dbg !543
  store i64 %dec216, ptr %__q1200, align 8, !dbg !543
  %192 = load i64, ptr %d1, align 8, !dbg !543
  %193 = load i64, ptr %__r1202, align 8, !dbg !543
  %add217 = add i64 %193, %192, !dbg !543
  store i64 %add217, ptr %__r1202, align 8, !dbg !543
  %194 = load i64, ptr %__r1202, align 8, !dbg !545
  %195 = load i64, ptr %d1, align 8, !dbg !545
  %cmp218 = icmp uge i64 %194, %195, !dbg !545
  br i1 %cmp218, label %if.then220, label %if.end227, !dbg !543

if.then220:                                       ; preds = %if.then215
  %196 = load i64, ptr %__r1202, align 8, !dbg !547
  %197 = load i64, ptr %__m204, align 8, !dbg !547
  %cmp221 = icmp ult i64 %196, %197, !dbg !547
  br i1 %cmp221, label %if.then223, label %if.end226, !dbg !545

if.then223:                                       ; preds = %if.then220
  %198 = load i64, ptr %__q1200, align 8, !dbg !547
  %dec224 = add i64 %198, -1, !dbg !547
  store i64 %dec224, ptr %__q1200, align 8, !dbg !547
  %199 = load i64, ptr %d1, align 8, !dbg !547
  %200 = load i64, ptr %__r1202, align 8, !dbg !547
  %add225 = add i64 %200, %199, !dbg !547
  store i64 %add225, ptr %__r1202, align 8, !dbg !547
  br label %if.end226, !dbg !547

if.end226:                                        ; preds = %if.then223, %if.then220
  br label %if.end227, !dbg !547

if.end227:                                        ; preds = %if.end226, %if.then215
  br label %if.end228, !dbg !543

if.end228:                                        ; preds = %if.end227, %do.body197
  %201 = load i64, ptr %__m204, align 8, !dbg !540
  %202 = load i64, ptr %__r1202, align 8, !dbg !540
  %sub229 = sub i64 %202, %201, !dbg !540
  store i64 %sub229, ptr %__r1202, align 8, !dbg !540
  %203 = load i64, ptr %__r1202, align 8, !dbg !540
  %204 = load i64, ptr %__d1198, align 8, !dbg !540
  %rem230 = urem i64 %203, %204, !dbg !540
  store i64 %rem230, ptr %__r0203, align 8, !dbg !540
  %205 = load i64, ptr %__r1202, align 8, !dbg !540
  %206 = load i64, ptr %__d1198, align 8, !dbg !540
  %div231 = udiv i64 %205, %206, !dbg !540
  store i64 %div231, ptr %__q0201, align 8, !dbg !540
  %207 = load i64, ptr %__q0201, align 8, !dbg !540
  %208 = load i64, ptr %__d0199, align 8, !dbg !540
  %mul232 = mul i64 %207, %208, !dbg !540
  store i64 %mul232, ptr %__m204, align 8, !dbg !540
  %209 = load i64, ptr %__r0203, align 8, !dbg !540
  %mul233 = mul i64 %209, 4294967296, !dbg !540
  %210 = load i64, ptr %n0, align 8, !dbg !540
  %and234 = and i64 %210, 4294967295, !dbg !540
  %or235 = or i64 %mul233, %and234, !dbg !540
  store i64 %or235, ptr %__r0203, align 8, !dbg !540
  %211 = load i64, ptr %__r0203, align 8, !dbg !549
  %212 = load i64, ptr %__m204, align 8, !dbg !549
  %cmp236 = icmp ult i64 %211, %212, !dbg !549
  br i1 %cmp236, label %if.then238, label %if.end251, !dbg !540

if.then238:                                       ; preds = %if.end228
  %213 = load i64, ptr %__q0201, align 8, !dbg !551
  %dec239 = add i64 %213, -1, !dbg !551
  store i64 %dec239, ptr %__q0201, align 8, !dbg !551
  %214 = load i64, ptr %d1, align 8, !dbg !551
  %215 = load i64, ptr %__r0203, align 8, !dbg !551
  %add240 = add i64 %215, %214, !dbg !551
  store i64 %add240, ptr %__r0203, align 8, !dbg !551
  %216 = load i64, ptr %__r0203, align 8, !dbg !553
  %217 = load i64, ptr %d1, align 8, !dbg !553
  %cmp241 = icmp uge i64 %216, %217, !dbg !553
  br i1 %cmp241, label %if.then243, label %if.end250, !dbg !551

if.then243:                                       ; preds = %if.then238
  %218 = load i64, ptr %__r0203, align 8, !dbg !555
  %219 = load i64, ptr %__m204, align 8, !dbg !555
  %cmp244 = icmp ult i64 %218, %219, !dbg !555
  br i1 %cmp244, label %if.then246, label %if.end249, !dbg !553

if.then246:                                       ; preds = %if.then243
  %220 = load i64, ptr %__q0201, align 8, !dbg !555
  %dec247 = add i64 %220, -1, !dbg !555
  store i64 %dec247, ptr %__q0201, align 8, !dbg !555
  %221 = load i64, ptr %d1, align 8, !dbg !555
  %222 = load i64, ptr %__r0203, align 8, !dbg !555
  %add248 = add i64 %222, %221, !dbg !555
  store i64 %add248, ptr %__r0203, align 8, !dbg !555
  br label %if.end249, !dbg !555

if.end249:                                        ; preds = %if.then246, %if.then243
  br label %if.end250, !dbg !555

if.end250:                                        ; preds = %if.end249, %if.then238
  br label %if.end251, !dbg !551

if.end251:                                        ; preds = %if.end250, %if.end228
  %223 = load i64, ptr %__m204, align 8, !dbg !540
  %224 = load i64, ptr %__r0203, align 8, !dbg !540
  %sub252 = sub i64 %224, %223, !dbg !540
  store i64 %sub252, ptr %__r0203, align 8, !dbg !540
  %225 = load i64, ptr %__q1200, align 8, !dbg !540
  %mul253 = mul i64 %225, 4294967296, !dbg !540
  %226 = load i64, ptr %__q0201, align 8, !dbg !540
  %or254 = or i64 %mul253, %226, !dbg !540
  store i64 %or254, ptr %q, align 8, !dbg !540
  %227 = load i64, ptr %__r0203, align 8, !dbg !540
  store i64 %227, ptr %r, align 8, !dbg !540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m204) #6, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r0203) #6, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r1202) #6, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q0201) #6, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q1200) #6, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d0199) #6, !dbg !539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d1198) #6, !dbg !539
  br label %do.cond255, !dbg !540

do.cond255:                                       ; preds = %if.end251
  br label %do.end256, !dbg !540

do.end256:                                        ; preds = %do.cond255
  br label %do.body257, !dbg !557

do.body257:                                       ; preds = %do.end256
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x0) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__x0, metadata !289, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x1) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__x1, metadata !291, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x2) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__x2, metadata !292, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x3) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__x3, metadata !293, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ul) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__ul, metadata !294, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %__vl) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__vl, metadata !297, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %__uh) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__uh, metadata !298, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %__vh) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__vh, metadata !299, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__u) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__u, metadata !300, metadata !DIExpression()), !dbg !558
  %228 = load i64, ptr %d0, align 8, !dbg !558
  store i64 %228, ptr %__u, align 8, !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %__v) #6, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !301, metadata !DIExpression()), !dbg !558
  %229 = load i64, ptr %q, align 8, !dbg !558
  store i64 %229, ptr %__v, align 8, !dbg !558
  %230 = load i64, ptr %__u, align 8, !dbg !558
  %and258 = and i64 %230, 4294967295, !dbg !558
  %conv259 = trunc i64 %and258 to i32, !dbg !558
  store i32 %conv259, ptr %__ul, align 4, !dbg !558
  %231 = load i64, ptr %__u, align 8, !dbg !558
  %shr260 = lshr i64 %231, 32, !dbg !558
  %conv261 = trunc i64 %shr260 to i32, !dbg !558
  store i32 %conv261, ptr %__uh, align 4, !dbg !558
  %232 = load i64, ptr %__v, align 8, !dbg !558
  %and262 = and i64 %232, 4294967295, !dbg !558
  %conv263 = trunc i64 %and262 to i32, !dbg !558
  store i32 %conv263, ptr %__vl, align 4, !dbg !558
  %233 = load i64, ptr %__v, align 8, !dbg !558
  %shr264 = lshr i64 %233, 32, !dbg !558
  %conv265 = trunc i64 %shr264 to i32, !dbg !558
  store i32 %conv265, ptr %__vh, align 4, !dbg !558
  %234 = load i32, ptr %__ul, align 4, !dbg !558
  %conv266 = zext i32 %234 to i64, !dbg !558
  %235 = load i32, ptr %__vl, align 4, !dbg !558
  %conv267 = zext i32 %235 to i64, !dbg !558
  %mul268 = mul i64 %conv266, %conv267, !dbg !558
  store i64 %mul268, ptr %__x0, align 8, !dbg !558
  %236 = load i32, ptr %__ul, align 4, !dbg !558
  %conv269 = zext i32 %236 to i64, !dbg !558
  %237 = load i32, ptr %__vh, align 4, !dbg !558
  %conv270 = zext i32 %237 to i64, !dbg !558
  %mul271 = mul i64 %conv269, %conv270, !dbg !558
  store i64 %mul271, ptr %__x1, align 8, !dbg !558
  %238 = load i32, ptr %__uh, align 4, !dbg !558
  %conv272 = zext i32 %238 to i64, !dbg !558
  %239 = load i32, ptr %__vl, align 4, !dbg !558
  %conv273 = zext i32 %239 to i64, !dbg !558
  %mul274 = mul i64 %conv272, %conv273, !dbg !558
  store i64 %mul274, ptr %__x2, align 8, !dbg !558
  %240 = load i32, ptr %__uh, align 4, !dbg !558
  %conv275 = zext i32 %240 to i64, !dbg !558
  %241 = load i32, ptr %__vh, align 4, !dbg !558
  %conv276 = zext i32 %241 to i64, !dbg !558
  %mul277 = mul i64 %conv275, %conv276, !dbg !558
  store i64 %mul277, ptr %__x3, align 8, !dbg !558
  %242 = load i64, ptr %__x0, align 8, !dbg !558
  %shr278 = lshr i64 %242, 32, !dbg !558
  %243 = load i64, ptr %__x1, align 8, !dbg !558
  %add279 = add i64 %243, %shr278, !dbg !558
  store i64 %add279, ptr %__x1, align 8, !dbg !558
  %244 = load i64, ptr %__x2, align 8, !dbg !558
  %245 = load i64, ptr %__x1, align 8, !dbg !558
  %add280 = add i64 %245, %244, !dbg !558
  store i64 %add280, ptr %__x1, align 8, !dbg !558
  %246 = load i64, ptr %__x1, align 8, !dbg !559
  %247 = load i64, ptr %__x2, align 8, !dbg !559
  %cmp281 = icmp ult i64 %246, %247, !dbg !559
  br i1 %cmp281, label %if.then283, label %if.end285, !dbg !558

if.then283:                                       ; preds = %do.body257
  %248 = load i64, ptr %__x3, align 8, !dbg !559
  %add284 = add i64 %248, 4294967296, !dbg !559
  store i64 %add284, ptr %__x3, align 8, !dbg !559
  br label %if.end285, !dbg !559

if.end285:                                        ; preds = %if.then283, %do.body257
  %249 = load i64, ptr %__x3, align 8, !dbg !558
  %250 = load i64, ptr %__x1, align 8, !dbg !558
  %shr286 = lshr i64 %250, 32, !dbg !558
  %add287 = add i64 %249, %shr286, !dbg !558
  store i64 %add287, ptr %n1131, align 8, !dbg !558
  %251 = load i64, ptr %__x1, align 8, !dbg !558
  %and288 = and i64 %251, 4294967295, !dbg !558
  %shl = shl i64 %and288, 32, !dbg !558
  %252 = load i64, ptr %__x0, align 8, !dbg !558
  %and289 = and i64 %252, 4294967295, !dbg !558
  %add290 = add i64 %shl, %and289, !dbg !558
  store i64 %add290, ptr %n0, align 8, !dbg !558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__v) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__u) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %__vh) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %__uh) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %__vl) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ul) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x3) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x2) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x1) #6, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x0) #6, !dbg !557
  br label %do.cond291, !dbg !558

do.cond291:                                       ; preds = %if.end285
  br label %do.end292, !dbg !558

do.end292:                                        ; preds = %do.cond291
  br label %if.end293

if.end293:                                        ; preds = %do.end292, %if.end190
  %253 = load ptr, ptr %np.addr, align 8, !dbg !561
  %arrayidx294 = getelementptr i64, ptr %253, i64 0, !dbg !561
  %254 = load i64, ptr %arrayidx294, align 8, !dbg !561
  store i64 %254, ptr %n2, align 8, !dbg !562
  br label %q_test, !dbg !563

q_test:                                           ; preds = %if.then318, %if.end293
  call void @llvm.dbg.label(metadata !302), !dbg !564
  %255 = load i64, ptr %n1131, align 8, !dbg !565
  %256 = load i64, ptr %r, align 8, !dbg !566
  %cmp295 = icmp ugt i64 %255, %256, !dbg !567
  br i1 %cmp295, label %if.then303, label %lor.lhs.false297, !dbg !568

lor.lhs.false297:                                 ; preds = %q_test
  %257 = load i64, ptr %n1131, align 8, !dbg !569
  %258 = load i64, ptr %r, align 8, !dbg !570
  %cmp298 = icmp eq i64 %257, %258, !dbg !571
  br i1 %cmp298, label %land.lhs.true300, label %if.end320, !dbg !572

land.lhs.true300:                                 ; preds = %lor.lhs.false297
  %259 = load i64, ptr %n0, align 8, !dbg !573
  %260 = load i64, ptr %n2, align 8, !dbg !574
  %cmp301 = icmp ugt i64 %259, %260, !dbg !575
  br i1 %cmp301, label %if.then303, label %if.end320, !dbg !576

if.then303:                                       ; preds = %land.lhs.true300, %q_test
  %261 = load i64, ptr %q, align 8, !dbg !577
  %dec304 = add i64 %261, -1, !dbg !577
  store i64 %dec304, ptr %q, align 8, !dbg !577
  br label %do.body305, !dbg !578

do.body305:                                       ; preds = %if.then303
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x306) #6, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %__x306, metadata !303, metadata !DIExpression()), !dbg !579
  %262 = load i64, ptr %n0, align 8, !dbg !579
  %263 = load i64, ptr %d0, align 8, !dbg !579
  %sub307 = sub i64 %262, %263, !dbg !579
  store i64 %sub307, ptr %__x306, align 8, !dbg !579
  %264 = load i64, ptr %n1131, align 8, !dbg !579
  %sub308 = sub i64 %264, 0, !dbg !579
  %265 = load i64, ptr %__x306, align 8, !dbg !579
  %266 = load i64, ptr %n0, align 8, !dbg !579
  %cmp309 = icmp ugt i64 %265, %266, !dbg !579
  %conv310 = zext i1 %cmp309 to i32, !dbg !579
  %conv311 = sext i32 %conv310 to i64, !dbg !579
  %sub312 = sub i64 %sub308, %conv311, !dbg !579
  store i64 %sub312, ptr %n1131, align 8, !dbg !579
  %267 = load i64, ptr %__x306, align 8, !dbg !579
  store i64 %267, ptr %n0, align 8, !dbg !579
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x306) #6, !dbg !578
  br label %do.cond313, !dbg !579

do.cond313:                                       ; preds = %do.body305
  br label %do.end314, !dbg !579

do.end314:                                        ; preds = %do.cond313
  %268 = load i64, ptr %d1, align 8, !dbg !580
  %269 = load i64, ptr %r, align 8, !dbg !581
  %add315 = add i64 %269, %268, !dbg !581
  store i64 %add315, ptr %r, align 8, !dbg !581
  %270 = load i64, ptr %r, align 8, !dbg !582
  %271 = load i64, ptr %d1, align 8, !dbg !584
  %cmp316 = icmp uge i64 %270, %271, !dbg !585
  br i1 %cmp316, label %if.then318, label %if.end319, !dbg !586

if.then318:                                       ; preds = %do.end314
  br label %q_test, !dbg !587

if.end319:                                        ; preds = %do.end314
  br label %if.end320, !dbg !588

if.end320:                                        ; preds = %if.end319, %land.lhs.true300, %lor.lhs.false297
  %272 = load i64, ptr %q, align 8, !dbg !589
  %273 = load ptr, ptr %qp.addr, align 8, !dbg !590
  %274 = load i32, ptr %i130, align 4, !dbg !591
  %idxprom321 = sext i32 %274 to i64, !dbg !590
  %arrayidx322 = getelementptr i64, ptr %273, i64 %idxprom321, !dbg !590
  store i64 %272, ptr %arrayidx322, align 8, !dbg !592
  br label %do.body323, !dbg !593

do.body323:                                       ; preds = %if.end320
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x324) #6, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %__x324, metadata !307, metadata !DIExpression()), !dbg !594
  %275 = load i64, ptr %n2, align 8, !dbg !594
  %276 = load i64, ptr %n0, align 8, !dbg !594
  %sub325 = sub i64 %275, %276, !dbg !594
  store i64 %sub325, ptr %__x324, align 8, !dbg !594
  %277 = load i64, ptr %r, align 8, !dbg !594
  %278 = load i64, ptr %n1131, align 8, !dbg !594
  %sub326 = sub i64 %277, %278, !dbg !594
  %279 = load i64, ptr %__x324, align 8, !dbg !594
  %280 = load i64, ptr %n2, align 8, !dbg !594
  %cmp327 = icmp ugt i64 %279, %280, !dbg !594
  %conv328 = zext i1 %cmp327 to i32, !dbg !594
  %conv329 = sext i32 %conv328 to i64, !dbg !594
  %sub330 = sub i64 %sub326, %conv329, !dbg !594
  store i64 %sub330, ptr %n1131, align 8, !dbg !594
  %281 = load i64, ptr %__x324, align 8, !dbg !594
  store i64 %281, ptr %n0, align 8, !dbg !594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x324) #6, !dbg !593
  br label %do.cond331, !dbg !594

do.cond331:                                       ; preds = %do.body323
  br label %do.end332, !dbg !594

do.end332:                                        ; preds = %do.cond331
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !595
  br label %cleanup, !dbg !595

cleanup:                                          ; preds = %do.end332, %do.end187
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6, !dbg !595
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #6, !dbg !595
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 17, label %for.inc334
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc334, !dbg !596

for.inc334:                                       ; preds = %cleanup.cont, %cleanup
  %282 = load i32, ptr %i130, align 4, !dbg !597
  %dec335 = add i32 %282, -1, !dbg !597
  store i32 %dec335, ptr %i130, align 4, !dbg !597
  br label %for.cond159, !dbg !598, !llvm.loop !599

for.end336:                                       ; preds = %for.cond159
  %283 = load i64, ptr %n1131, align 8, !dbg !601
  %284 = load ptr, ptr %np.addr, align 8, !dbg !602
  %arrayidx337 = getelementptr i64, ptr %284, i64 1, !dbg !602
  store i64 %283, ptr %arrayidx337, align 8, !dbg !603
  %285 = load i64, ptr %n0, align 8, !dbg !604
  %286 = load ptr, ptr %np.addr, align 8, !dbg !605
  %arrayidx338 = getelementptr i64, ptr %286, i64 0, !dbg !605
  store i64 %285, ptr %arrayidx338, align 8, !dbg !606
  call void @llvm.lifetime.end.p0(i64 8, ptr %d0) #6, !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #6, !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %n2) #6, !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %n0) #6, !dbg !607
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1131) #6, !dbg !607
  call void @llvm.lifetime.end.p0(i64 4, ptr %i130) #6, !dbg !607
  br label %sw.epilog, !dbg !608

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i339) #6, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %i339, metadata !309, metadata !DIExpression()), !dbg !610
  call void @llvm.lifetime.start.p0(i64 8, ptr %dX) #6, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %dX, metadata !311, metadata !DIExpression()), !dbg !612
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1340) #6, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %d1340, metadata !312, metadata !DIExpression()), !dbg !613
  call void @llvm.lifetime.start.p0(i64 8, ptr %n0341) #6, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %n0341, metadata !313, metadata !DIExpression()), !dbg !614
  %287 = load i32, ptr %nsize.addr, align 4, !dbg !615
  %288 = load i32, ptr %dsize.addr, align 4, !dbg !616
  %sub342 = sub i32 %287, %288, !dbg !617
  %289 = load ptr, ptr %np.addr, align 8, !dbg !618
  %idx.ext343 = sext i32 %sub342 to i64, !dbg !618
  %add.ptr344 = getelementptr i64, ptr %289, i64 %idx.ext343, !dbg !618
  store ptr %add.ptr344, ptr %np.addr, align 8, !dbg !618
  %290 = load ptr, ptr %dp.addr, align 8, !dbg !619
  %291 = load i32, ptr %dsize.addr, align 4, !dbg !620
  %sub345 = sub i32 %291, 1, !dbg !621
  %idxprom346 = sext i32 %sub345 to i64, !dbg !619
  %arrayidx347 = getelementptr i64, ptr %290, i64 %idxprom346, !dbg !619
  %292 = load i64, ptr %arrayidx347, align 8, !dbg !619
  store i64 %292, ptr %dX, align 8, !dbg !622
  %293 = load ptr, ptr %dp.addr, align 8, !dbg !623
  %294 = load i32, ptr %dsize.addr, align 4, !dbg !624
  %sub348 = sub i32 %294, 2, !dbg !625
  %idxprom349 = sext i32 %sub348 to i64, !dbg !623
  %arrayidx350 = getelementptr i64, ptr %293, i64 %idxprom349, !dbg !623
  %295 = load i64, ptr %arrayidx350, align 8, !dbg !623
  store i64 %295, ptr %d1340, align 8, !dbg !626
  %296 = load ptr, ptr %np.addr, align 8, !dbg !627
  %297 = load i32, ptr %dsize.addr, align 4, !dbg !628
  %sub351 = sub i32 %297, 1, !dbg !629
  %idxprom352 = sext i32 %sub351 to i64, !dbg !627
  %arrayidx353 = getelementptr i64, ptr %296, i64 %idxprom352, !dbg !627
  %298 = load i64, ptr %arrayidx353, align 8, !dbg !627
  store i64 %298, ptr %n0341, align 8, !dbg !630
  %299 = load i64, ptr %n0341, align 8, !dbg !631
  %300 = load i64, ptr %dX, align 8, !dbg !633
  %cmp354 = icmp uge i64 %299, %300, !dbg !634
  br i1 %cmp354, label %if.then356, label %if.end369, !dbg !635

if.then356:                                       ; preds = %sw.default
  %301 = load i64, ptr %n0341, align 8, !dbg !636
  %302 = load i64, ptr %dX, align 8, !dbg !639
  %cmp357 = icmp ugt i64 %301, %302, !dbg !640
  br i1 %cmp357, label %if.then363, label %lor.lhs.false359, !dbg !641

lor.lhs.false359:                                 ; preds = %if.then356
  %303 = load ptr, ptr %np.addr, align 8, !dbg !642
  %304 = load ptr, ptr %dp.addr, align 8, !dbg !643
  %305 = load i32, ptr %dsize.addr, align 4, !dbg !644
  %sub360 = sub i32 %305, 1, !dbg !645
  %call = call i32 @mpihelp_cmp(ptr noundef %303, ptr noundef %304, i32 noundef %sub360) #7, !dbg !646
  %cmp361 = icmp sge i32 %call, 0, !dbg !647
  br i1 %cmp361, label %if.then363, label %if.end368, !dbg !648

if.then363:                                       ; preds = %lor.lhs.false359, %if.then356
  %306 = load ptr, ptr %np.addr, align 8, !dbg !649
  %307 = load ptr, ptr %np.addr, align 8, !dbg !651
  %308 = load ptr, ptr %dp.addr, align 8, !dbg !652
  %309 = load i32, ptr %dsize.addr, align 4, !dbg !653
  %call364 = call i64 @mpihelp_sub_n(ptr noundef %306, ptr noundef %307, ptr noundef %308, i32 noundef %309) #7, !dbg !654
  %310 = load ptr, ptr %np.addr, align 8, !dbg !655
  %311 = load i32, ptr %dsize.addr, align 4, !dbg !656
  %sub365 = sub i32 %311, 1, !dbg !657
  %idxprom366 = sext i32 %sub365 to i64, !dbg !655
  %arrayidx367 = getelementptr i64, ptr %310, i64 %idxprom366, !dbg !655
  %312 = load i64, ptr %arrayidx367, align 8, !dbg !655
  store i64 %312, ptr %n0341, align 8, !dbg !658
  store i64 1, ptr %most_significant_q_limb, align 8, !dbg !659
  br label %if.end368, !dbg !660

if.end368:                                        ; preds = %if.then363, %lor.lhs.false359
  br label %if.end369, !dbg !661

if.end369:                                        ; preds = %if.end368, %sw.default
  %313 = load i32, ptr %qextra_limbs.addr, align 4, !dbg !662
  %314 = load i32, ptr %nsize.addr, align 4, !dbg !663
  %add370 = add i32 %313, %314, !dbg !664
  %315 = load i32, ptr %dsize.addr, align 4, !dbg !665
  %sub371 = sub i32 %add370, %315, !dbg !666
  %sub372 = sub i32 %sub371, 1, !dbg !667
  store i32 %sub372, ptr %i339, align 4, !dbg !668
  br label %for.cond373, !dbg !669

for.cond373:                                      ; preds = %for.inc560, %if.end369
  %316 = load i32, ptr %i339, align 4, !dbg !670
  %cmp374 = icmp sge i32 %316, 0, !dbg !671
  br i1 %cmp374, label %for.body376, label %for.end562, !dbg !672

for.body376:                                      ; preds = %for.cond373
  call void @llvm.lifetime.start.p0(i64 8, ptr %q377) #6, !dbg !673
  call void @llvm.dbg.declare(metadata ptr %q377, metadata !314, metadata !DIExpression()), !dbg !674
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1378) #6, !dbg !675
  call void @llvm.dbg.declare(metadata ptr %n1378, metadata !318, metadata !DIExpression()), !dbg !676
  call void @llvm.lifetime.start.p0(i64 8, ptr %n2379) #6, !dbg !675
  call void @llvm.dbg.declare(metadata ptr %n2379, metadata !319, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy_limb) #6, !dbg !678
  call void @llvm.dbg.declare(metadata ptr %cy_limb, metadata !320, metadata !DIExpression()), !dbg !679
  %317 = load i32, ptr %i339, align 4, !dbg !680
  %318 = load i32, ptr %qextra_limbs.addr, align 4, !dbg !681
  %cmp380 = icmp sge i32 %317, %318, !dbg !682
  br i1 %cmp380, label %if.then382, label %if.else386, !dbg !683

if.then382:                                       ; preds = %for.body376
  %319 = load ptr, ptr %np.addr, align 8, !dbg !684
  %incdec.ptr383 = getelementptr i64, ptr %319, i32 -1, !dbg !684
  store ptr %incdec.ptr383, ptr %np.addr, align 8, !dbg !684
  %320 = load ptr, ptr %np.addr, align 8, !dbg !686
  %321 = load i32, ptr %dsize.addr, align 4, !dbg !687
  %idxprom384 = sext i32 %321 to i64, !dbg !686
  %arrayidx385 = getelementptr i64, ptr %320, i64 %idxprom384, !dbg !686
  %322 = load i64, ptr %arrayidx385, align 8, !dbg !686
  store i64 %322, ptr %n2379, align 8, !dbg !688
  br label %if.end408, !dbg !689

if.else386:                                       ; preds = %for.body376
  %323 = load ptr, ptr %np.addr, align 8, !dbg !690
  %324 = load i32, ptr %dsize.addr, align 4, !dbg !691
  %sub387 = sub i32 %324, 1, !dbg !692
  %idxprom388 = sext i32 %sub387 to i64, !dbg !690
  %arrayidx389 = getelementptr i64, ptr %323, i64 %idxprom388, !dbg !690
  %325 = load i64, ptr %arrayidx389, align 8, !dbg !690
  store i64 %325, ptr %n2379, align 8, !dbg !693
  br label %do.body390, !dbg !694

do.body390:                                       ; preds = %if.else386
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !321, metadata !DIExpression()), !dbg !695
  %326 = load i32, ptr %dsize.addr, align 4, !dbg !696
  %sub391 = sub i32 %326, 1, !dbg !696
  %sub392 = sub i32 %sub391, 1, !dbg !696
  store i32 %sub392, ptr %_i, align 4, !dbg !696
  br label %for.cond393, !dbg !696

for.cond393:                                      ; preds = %for.inc402, %do.body390
  %327 = load i32, ptr %_i, align 4, !dbg !698
  %cmp394 = icmp sge i32 %327, 0, !dbg !698
  br i1 %cmp394, label %for.body396, label %for.end404, !dbg !696

for.body396:                                      ; preds = %for.cond393
  %328 = load ptr, ptr %np.addr, align 8, !dbg !698
  %329 = load i32, ptr %_i, align 4, !dbg !698
  %idxprom397 = sext i32 %329 to i64, !dbg !698
  %arrayidx398 = getelementptr i64, ptr %328, i64 %idxprom397, !dbg !698
  %330 = load i64, ptr %arrayidx398, align 8, !dbg !698
  %331 = load ptr, ptr %np.addr, align 8, !dbg !698
  %add.ptr399 = getelementptr i64, ptr %331, i64 1, !dbg !698
  %332 = load i32, ptr %_i, align 4, !dbg !698
  %idxprom400 = sext i32 %332 to i64, !dbg !698
  %arrayidx401 = getelementptr i64, ptr %add.ptr399, i64 %idxprom400, !dbg !698
  store i64 %330, ptr %arrayidx401, align 8, !dbg !698
  br label %for.inc402, !dbg !698

for.inc402:                                       ; preds = %for.body396
  %333 = load i32, ptr %_i, align 4, !dbg !698
  %dec403 = add i32 %333, -1, !dbg !698
  store i32 %dec403, ptr %_i, align 4, !dbg !698
  br label %for.cond393, !dbg !698, !llvm.loop !700

for.end404:                                       ; preds = %for.cond393
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #6, !dbg !694
  br label %do.cond405, !dbg !695

do.cond405:                                       ; preds = %for.end404
  br label %do.end406, !dbg !695

do.end406:                                        ; preds = %do.cond405
  %334 = load ptr, ptr %np.addr, align 8, !dbg !701
  %arrayidx407 = getelementptr i64, ptr %334, i64 0, !dbg !701
  store i64 0, ptr %arrayidx407, align 8, !dbg !702
  br label %if.end408

if.end408:                                        ; preds = %do.end406, %if.then382
  %335 = load i64, ptr %n0341, align 8, !dbg !703
  %336 = load i64, ptr %dX, align 8, !dbg !704
  %cmp409 = icmp eq i64 %335, %336, !dbg !705
  br i1 %cmp409, label %if.then411, label %if.else412, !dbg !706

if.then411:                                       ; preds = %if.end408
  store i64 -1, ptr %q377, align 8, !dbg !707
  br label %if.end547, !dbg !709

if.else412:                                       ; preds = %if.end408
  call void @llvm.lifetime.start.p0(i64 8, ptr %r413) #6, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %r413, metadata !325, metadata !DIExpression()), !dbg !711
  br label %do.body414, !dbg !712

do.body414:                                       ; preds = %if.else412
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d1415) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__d1415, metadata !328, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d0416) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__d0416, metadata !330, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q1417) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__q1417, metadata !331, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q0418) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__q0418, metadata !332, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r1419) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__r1419, metadata !333, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r0420) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__r0420, metadata !334, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m421) #6, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__m421, metadata !335, metadata !DIExpression()), !dbg !713
  %337 = load i64, ptr %dX, align 8, !dbg !713
  %shr422 = lshr i64 %337, 32, !dbg !713
  store i64 %shr422, ptr %__d1415, align 8, !dbg !713
  %338 = load i64, ptr %dX, align 8, !dbg !713
  %and423 = and i64 %338, 4294967295, !dbg !713
  store i64 %and423, ptr %__d0416, align 8, !dbg !713
  %339 = load i64, ptr %n0341, align 8, !dbg !713
  %340 = load i64, ptr %__d1415, align 8, !dbg !713
  %rem424 = urem i64 %339, %340, !dbg !713
  store i64 %rem424, ptr %__r1419, align 8, !dbg !713
  %341 = load i64, ptr %n0341, align 8, !dbg !713
  %342 = load i64, ptr %__d1415, align 8, !dbg !713
  %div425 = udiv i64 %341, %342, !dbg !713
  store i64 %div425, ptr %__q1417, align 8, !dbg !713
  %343 = load i64, ptr %__q1417, align 8, !dbg !713
  %344 = load i64, ptr %__d0416, align 8, !dbg !713
  %mul426 = mul i64 %343, %344, !dbg !713
  store i64 %mul426, ptr %__m421, align 8, !dbg !713
  %345 = load i64, ptr %__r1419, align 8, !dbg !713
  %mul427 = mul i64 %345, 4294967296, !dbg !713
  %346 = load ptr, ptr %np.addr, align 8, !dbg !713
  %347 = load i32, ptr %dsize.addr, align 4, !dbg !713
  %sub428 = sub i32 %347, 1, !dbg !713
  %idxprom429 = sext i32 %sub428 to i64, !dbg !713
  %arrayidx430 = getelementptr i64, ptr %346, i64 %idxprom429, !dbg !713
  %348 = load i64, ptr %arrayidx430, align 8, !dbg !713
  %shr431 = lshr i64 %348, 32, !dbg !713
  %or432 = or i64 %mul427, %shr431, !dbg !713
  store i64 %or432, ptr %__r1419, align 8, !dbg !713
  %349 = load i64, ptr %__r1419, align 8, !dbg !714
  %350 = load i64, ptr %__m421, align 8, !dbg !714
  %cmp433 = icmp ult i64 %349, %350, !dbg !714
  br i1 %cmp433, label %if.then435, label %if.end448, !dbg !713

if.then435:                                       ; preds = %do.body414
  %351 = load i64, ptr %__q1417, align 8, !dbg !716
  %dec436 = add i64 %351, -1, !dbg !716
  store i64 %dec436, ptr %__q1417, align 8, !dbg !716
  %352 = load i64, ptr %dX, align 8, !dbg !716
  %353 = load i64, ptr %__r1419, align 8, !dbg !716
  %add437 = add i64 %353, %352, !dbg !716
  store i64 %add437, ptr %__r1419, align 8, !dbg !716
  %354 = load i64, ptr %__r1419, align 8, !dbg !718
  %355 = load i64, ptr %dX, align 8, !dbg !718
  %cmp438 = icmp uge i64 %354, %355, !dbg !718
  br i1 %cmp438, label %if.then440, label %if.end447, !dbg !716

if.then440:                                       ; preds = %if.then435
  %356 = load i64, ptr %__r1419, align 8, !dbg !720
  %357 = load i64, ptr %__m421, align 8, !dbg !720
  %cmp441 = icmp ult i64 %356, %357, !dbg !720
  br i1 %cmp441, label %if.then443, label %if.end446, !dbg !718

if.then443:                                       ; preds = %if.then440
  %358 = load i64, ptr %__q1417, align 8, !dbg !720
  %dec444 = add i64 %358, -1, !dbg !720
  store i64 %dec444, ptr %__q1417, align 8, !dbg !720
  %359 = load i64, ptr %dX, align 8, !dbg !720
  %360 = load i64, ptr %__r1419, align 8, !dbg !720
  %add445 = add i64 %360, %359, !dbg !720
  store i64 %add445, ptr %__r1419, align 8, !dbg !720
  br label %if.end446, !dbg !720

if.end446:                                        ; preds = %if.then443, %if.then440
  br label %if.end447, !dbg !720

if.end447:                                        ; preds = %if.end446, %if.then435
  br label %if.end448, !dbg !716

if.end448:                                        ; preds = %if.end447, %do.body414
  %361 = load i64, ptr %__m421, align 8, !dbg !713
  %362 = load i64, ptr %__r1419, align 8, !dbg !713
  %sub449 = sub i64 %362, %361, !dbg !713
  store i64 %sub449, ptr %__r1419, align 8, !dbg !713
  %363 = load i64, ptr %__r1419, align 8, !dbg !713
  %364 = load i64, ptr %__d1415, align 8, !dbg !713
  %rem450 = urem i64 %363, %364, !dbg !713
  store i64 %rem450, ptr %__r0420, align 8, !dbg !713
  %365 = load i64, ptr %__r1419, align 8, !dbg !713
  %366 = load i64, ptr %__d1415, align 8, !dbg !713
  %div451 = udiv i64 %365, %366, !dbg !713
  store i64 %div451, ptr %__q0418, align 8, !dbg !713
  %367 = load i64, ptr %__q0418, align 8, !dbg !713
  %368 = load i64, ptr %__d0416, align 8, !dbg !713
  %mul452 = mul i64 %367, %368, !dbg !713
  store i64 %mul452, ptr %__m421, align 8, !dbg !713
  %369 = load i64, ptr %__r0420, align 8, !dbg !713
  %mul453 = mul i64 %369, 4294967296, !dbg !713
  %370 = load ptr, ptr %np.addr, align 8, !dbg !713
  %371 = load i32, ptr %dsize.addr, align 4, !dbg !713
  %sub454 = sub i32 %371, 1, !dbg !713
  %idxprom455 = sext i32 %sub454 to i64, !dbg !713
  %arrayidx456 = getelementptr i64, ptr %370, i64 %idxprom455, !dbg !713
  %372 = load i64, ptr %arrayidx456, align 8, !dbg !713
  %and457 = and i64 %372, 4294967295, !dbg !713
  %or458 = or i64 %mul453, %and457, !dbg !713
  store i64 %or458, ptr %__r0420, align 8, !dbg !713
  %373 = load i64, ptr %__r0420, align 8, !dbg !722
  %374 = load i64, ptr %__m421, align 8, !dbg !722
  %cmp459 = icmp ult i64 %373, %374, !dbg !722
  br i1 %cmp459, label %if.then461, label %if.end474, !dbg !713

if.then461:                                       ; preds = %if.end448
  %375 = load i64, ptr %__q0418, align 8, !dbg !724
  %dec462 = add i64 %375, -1, !dbg !724
  store i64 %dec462, ptr %__q0418, align 8, !dbg !724
  %376 = load i64, ptr %dX, align 8, !dbg !724
  %377 = load i64, ptr %__r0420, align 8, !dbg !724
  %add463 = add i64 %377, %376, !dbg !724
  store i64 %add463, ptr %__r0420, align 8, !dbg !724
  %378 = load i64, ptr %__r0420, align 8, !dbg !726
  %379 = load i64, ptr %dX, align 8, !dbg !726
  %cmp464 = icmp uge i64 %378, %379, !dbg !726
  br i1 %cmp464, label %if.then466, label %if.end473, !dbg !724

if.then466:                                       ; preds = %if.then461
  %380 = load i64, ptr %__r0420, align 8, !dbg !728
  %381 = load i64, ptr %__m421, align 8, !dbg !728
  %cmp467 = icmp ult i64 %380, %381, !dbg !728
  br i1 %cmp467, label %if.then469, label %if.end472, !dbg !726

if.then469:                                       ; preds = %if.then466
  %382 = load i64, ptr %__q0418, align 8, !dbg !728
  %dec470 = add i64 %382, -1, !dbg !728
  store i64 %dec470, ptr %__q0418, align 8, !dbg !728
  %383 = load i64, ptr %dX, align 8, !dbg !728
  %384 = load i64, ptr %__r0420, align 8, !dbg !728
  %add471 = add i64 %384, %383, !dbg !728
  store i64 %add471, ptr %__r0420, align 8, !dbg !728
  br label %if.end472, !dbg !728

if.end472:                                        ; preds = %if.then469, %if.then466
  br label %if.end473, !dbg !728

if.end473:                                        ; preds = %if.end472, %if.then461
  br label %if.end474, !dbg !724

if.end474:                                        ; preds = %if.end473, %if.end448
  %385 = load i64, ptr %__m421, align 8, !dbg !713
  %386 = load i64, ptr %__r0420, align 8, !dbg !713
  %sub475 = sub i64 %386, %385, !dbg !713
  store i64 %sub475, ptr %__r0420, align 8, !dbg !713
  %387 = load i64, ptr %__q1417, align 8, !dbg !713
  %mul476 = mul i64 %387, 4294967296, !dbg !713
  %388 = load i64, ptr %__q0418, align 8, !dbg !713
  %or477 = or i64 %mul476, %388, !dbg !713
  store i64 %or477, ptr %q377, align 8, !dbg !713
  %389 = load i64, ptr %__r0420, align 8, !dbg !713
  store i64 %389, ptr %r413, align 8, !dbg !713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m421) #6, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r0420) #6, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r1419) #6, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q0418) #6, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q1417) #6, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d0416) #6, !dbg !712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d1415) #6, !dbg !712
  br label %do.cond478, !dbg !713

do.cond478:                                       ; preds = %if.end474
  br label %do.end479, !dbg !713

do.end479:                                        ; preds = %do.cond478
  br label %do.body480, !dbg !730

do.body480:                                       ; preds = %do.end479
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x0481) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__x0481, metadata !336, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x1482) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__x1482, metadata !338, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x2483) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__x2483, metadata !339, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x3484) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__x3484, metadata !340, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ul485) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__ul485, metadata !341, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 4, ptr %__vl486) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__vl486, metadata !342, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 4, ptr %__uh487) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__uh487, metadata !343, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 4, ptr %__vh488) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__vh488, metadata !344, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__u489) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__u489, metadata !345, metadata !DIExpression()), !dbg !731
  %390 = load i64, ptr %d1340, align 8, !dbg !731
  store i64 %390, ptr %__u489, align 8, !dbg !731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__v490) #6, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %__v490, metadata !346, metadata !DIExpression()), !dbg !731
  %391 = load i64, ptr %q377, align 8, !dbg !731
  store i64 %391, ptr %__v490, align 8, !dbg !731
  %392 = load i64, ptr %__u489, align 8, !dbg !731
  %and491 = and i64 %392, 4294967295, !dbg !731
  %conv492 = trunc i64 %and491 to i32, !dbg !731
  store i32 %conv492, ptr %__ul485, align 4, !dbg !731
  %393 = load i64, ptr %__u489, align 8, !dbg !731
  %shr493 = lshr i64 %393, 32, !dbg !731
  %conv494 = trunc i64 %shr493 to i32, !dbg !731
  store i32 %conv494, ptr %__uh487, align 4, !dbg !731
  %394 = load i64, ptr %__v490, align 8, !dbg !731
  %and495 = and i64 %394, 4294967295, !dbg !731
  %conv496 = trunc i64 %and495 to i32, !dbg !731
  store i32 %conv496, ptr %__vl486, align 4, !dbg !731
  %395 = load i64, ptr %__v490, align 8, !dbg !731
  %shr497 = lshr i64 %395, 32, !dbg !731
  %conv498 = trunc i64 %shr497 to i32, !dbg !731
  store i32 %conv498, ptr %__vh488, align 4, !dbg !731
  %396 = load i32, ptr %__ul485, align 4, !dbg !731
  %conv499 = zext i32 %396 to i64, !dbg !731
  %397 = load i32, ptr %__vl486, align 4, !dbg !731
  %conv500 = zext i32 %397 to i64, !dbg !731
  %mul501 = mul i64 %conv499, %conv500, !dbg !731
  store i64 %mul501, ptr %__x0481, align 8, !dbg !731
  %398 = load i32, ptr %__ul485, align 4, !dbg !731
  %conv502 = zext i32 %398 to i64, !dbg !731
  %399 = load i32, ptr %__vh488, align 4, !dbg !731
  %conv503 = zext i32 %399 to i64, !dbg !731
  %mul504 = mul i64 %conv502, %conv503, !dbg !731
  store i64 %mul504, ptr %__x1482, align 8, !dbg !731
  %400 = load i32, ptr %__uh487, align 4, !dbg !731
  %conv505 = zext i32 %400 to i64, !dbg !731
  %401 = load i32, ptr %__vl486, align 4, !dbg !731
  %conv506 = zext i32 %401 to i64, !dbg !731
  %mul507 = mul i64 %conv505, %conv506, !dbg !731
  store i64 %mul507, ptr %__x2483, align 8, !dbg !731
  %402 = load i32, ptr %__uh487, align 4, !dbg !731
  %conv508 = zext i32 %402 to i64, !dbg !731
  %403 = load i32, ptr %__vh488, align 4, !dbg !731
  %conv509 = zext i32 %403 to i64, !dbg !731
  %mul510 = mul i64 %conv508, %conv509, !dbg !731
  store i64 %mul510, ptr %__x3484, align 8, !dbg !731
  %404 = load i64, ptr %__x0481, align 8, !dbg !731
  %shr511 = lshr i64 %404, 32, !dbg !731
  %405 = load i64, ptr %__x1482, align 8, !dbg !731
  %add512 = add i64 %405, %shr511, !dbg !731
  store i64 %add512, ptr %__x1482, align 8, !dbg !731
  %406 = load i64, ptr %__x2483, align 8, !dbg !731
  %407 = load i64, ptr %__x1482, align 8, !dbg !731
  %add513 = add i64 %407, %406, !dbg !731
  store i64 %add513, ptr %__x1482, align 8, !dbg !731
  %408 = load i64, ptr %__x1482, align 8, !dbg !732
  %409 = load i64, ptr %__x2483, align 8, !dbg !732
  %cmp514 = icmp ult i64 %408, %409, !dbg !732
  br i1 %cmp514, label %if.then516, label %if.end518, !dbg !731

if.then516:                                       ; preds = %do.body480
  %410 = load i64, ptr %__x3484, align 8, !dbg !732
  %add517 = add i64 %410, 4294967296, !dbg !732
  store i64 %add517, ptr %__x3484, align 8, !dbg !732
  br label %if.end518, !dbg !732

if.end518:                                        ; preds = %if.then516, %do.body480
  %411 = load i64, ptr %__x3484, align 8, !dbg !731
  %412 = load i64, ptr %__x1482, align 8, !dbg !731
  %shr519 = lshr i64 %412, 32, !dbg !731
  %add520 = add i64 %411, %shr519, !dbg !731
  store i64 %add520, ptr %n1378, align 8, !dbg !731
  %413 = load i64, ptr %__x1482, align 8, !dbg !731
  %and521 = and i64 %413, 4294967295, !dbg !731
  %shl522 = shl i64 %and521, 32, !dbg !731
  %414 = load i64, ptr %__x0481, align 8, !dbg !731
  %and523 = and i64 %414, 4294967295, !dbg !731
  %add524 = add i64 %shl522, %and523, !dbg !731
  store i64 %add524, ptr %n0341, align 8, !dbg !731
  call void @llvm.lifetime.end.p0(i64 8, ptr %__v490) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__u489) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 4, ptr %__vh488) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 4, ptr %__uh487) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 4, ptr %__vl486) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ul485) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x3484) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x2483) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x1482) #6, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x0481) #6, !dbg !730
  br label %do.cond525, !dbg !731

do.cond525:                                       ; preds = %if.end518
  br label %do.end526, !dbg !731

do.end526:                                        ; preds = %do.cond525
  br label %while.cond, !dbg !734

while.cond:                                       ; preds = %if.end541, %do.end526
  %415 = load i64, ptr %n1378, align 8, !dbg !735
  %416 = load i64, ptr %r413, align 8, !dbg !736
  %cmp527 = icmp ugt i64 %415, %416, !dbg !737
  br i1 %cmp527, label %lor.end, label %lor.rhs, !dbg !738

lor.rhs:                                          ; preds = %while.cond
  %417 = load i64, ptr %n1378, align 8, !dbg !739
  %418 = load i64, ptr %r413, align 8, !dbg !740
  %cmp529 = icmp eq i64 %417, %418, !dbg !741
  br i1 %cmp529, label %land.rhs, label %land.end, !dbg !742

land.rhs:                                         ; preds = %lor.rhs
  %419 = load i64, ptr %n0341, align 8, !dbg !743
  %420 = load ptr, ptr %np.addr, align 8, !dbg !744
  %421 = load i32, ptr %dsize.addr, align 4, !dbg !745
  %sub531 = sub i32 %421, 2, !dbg !746
  %idxprom532 = sext i32 %sub531 to i64, !dbg !744
  %arrayidx533 = getelementptr i64, ptr %420, i64 %idxprom532, !dbg !744
  %422 = load i64, ptr %arrayidx533, align 8, !dbg !744
  %cmp534 = icmp ugt i64 %419, %422, !dbg !747
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %423 = phi i1 [ false, %lor.rhs ], [ %cmp534, %land.rhs ], !dbg !748
  br label %lor.end, !dbg !738

lor.end:                                          ; preds = %land.end, %while.cond
  %424 = phi i1 [ true, %while.cond ], [ %423, %land.end ]
  br i1 %424, label %while.body, label %while.end, !dbg !734

while.body:                                       ; preds = %lor.end
  %425 = load i64, ptr %q377, align 8, !dbg !749
  %dec536 = add i64 %425, -1, !dbg !749
  store i64 %dec536, ptr %q377, align 8, !dbg !749
  %426 = load i64, ptr %dX, align 8, !dbg !751
  %427 = load i64, ptr %r413, align 8, !dbg !752
  %add537 = add i64 %427, %426, !dbg !752
  store i64 %add537, ptr %r413, align 8, !dbg !752
  %428 = load i64, ptr %r413, align 8, !dbg !753
  %429 = load i64, ptr %dX, align 8, !dbg !755
  %cmp538 = icmp ult i64 %428, %429, !dbg !756
  br i1 %cmp538, label %if.then540, label %if.end541, !dbg !757

if.then540:                                       ; preds = %while.body
  br label %while.end, !dbg !758

if.end541:                                        ; preds = %while.body
  %430 = load i64, ptr %n0341, align 8, !dbg !759
  %431 = load i64, ptr %d1340, align 8, !dbg !760
  %cmp542 = icmp ult i64 %430, %431, !dbg !761
  %conv543 = zext i1 %cmp542 to i32, !dbg !761
  %conv544 = sext i32 %conv543 to i64, !dbg !759
  %432 = load i64, ptr %n1378, align 8, !dbg !762
  %sub545 = sub i64 %432, %conv544, !dbg !762
  store i64 %sub545, ptr %n1378, align 8, !dbg !762
  %433 = load i64, ptr %d1340, align 8, !dbg !763
  %434 = load i64, ptr %n0341, align 8, !dbg !764
  %sub546 = sub i64 %434, %433, !dbg !764
  store i64 %sub546, ptr %n0341, align 8, !dbg !764
  br label %while.cond, !dbg !734, !llvm.loop !765

while.end:                                        ; preds = %if.then540, %lor.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %r413) #6, !dbg !767
  br label %if.end547

if.end547:                                        ; preds = %while.end, %if.then411
  %435 = load ptr, ptr %np.addr, align 8, !dbg !768
  %436 = load ptr, ptr %dp.addr, align 8, !dbg !769
  %437 = load i32, ptr %dsize.addr, align 4, !dbg !770
  %438 = load i64, ptr %q377, align 8, !dbg !771
  %call548 = call i64 @mpihelp_submul_1(ptr noundef %435, ptr noundef %436, i32 noundef %437, i64 noundef %438) #7, !dbg !772
  store i64 %call548, ptr %cy_limb, align 8, !dbg !773
  %439 = load i64, ptr %n2379, align 8, !dbg !774
  %440 = load i64, ptr %cy_limb, align 8, !dbg !776
  %cmp549 = icmp ne i64 %439, %440, !dbg !777
  br i1 %cmp549, label %if.then551, label %if.end554, !dbg !778

if.then551:                                       ; preds = %if.end547
  %441 = load ptr, ptr %np.addr, align 8, !dbg !779
  %442 = load ptr, ptr %np.addr, align 8, !dbg !781
  %443 = load ptr, ptr %dp.addr, align 8, !dbg !782
  %444 = load i32, ptr %dsize.addr, align 4, !dbg !783
  %call552 = call i64 @mpihelp_add_n(ptr noundef %441, ptr noundef %442, ptr noundef %443, i32 noundef %444) #7, !dbg !784
  %445 = load i64, ptr %q377, align 8, !dbg !785
  %dec553 = add i64 %445, -1, !dbg !785
  store i64 %dec553, ptr %q377, align 8, !dbg !785
  br label %if.end554, !dbg !786

if.end554:                                        ; preds = %if.then551, %if.end547
  %446 = load i64, ptr %q377, align 8, !dbg !787
  %447 = load ptr, ptr %qp.addr, align 8, !dbg !788
  %448 = load i32, ptr %i339, align 4, !dbg !789
  %idxprom555 = sext i32 %448 to i64, !dbg !788
  %arrayidx556 = getelementptr i64, ptr %447, i64 %idxprom555, !dbg !788
  store i64 %446, ptr %arrayidx556, align 8, !dbg !790
  %449 = load ptr, ptr %np.addr, align 8, !dbg !791
  %450 = load i32, ptr %dsize.addr, align 4, !dbg !792
  %sub557 = sub i32 %450, 1, !dbg !793
  %idxprom558 = sext i32 %sub557 to i64, !dbg !791
  %arrayidx559 = getelementptr i64, ptr %449, i64 %idxprom558, !dbg !791
  %451 = load i64, ptr %arrayidx559, align 8, !dbg !791
  store i64 %451, ptr %n0341, align 8, !dbg !794
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy_limb) #6, !dbg !795
  call void @llvm.lifetime.end.p0(i64 8, ptr %n2379) #6, !dbg !795
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1378) #6, !dbg !795
  call void @llvm.lifetime.end.p0(i64 8, ptr %q377) #6, !dbg !795
  br label %for.inc560, !dbg !796

for.inc560:                                       ; preds = %if.end554
  %452 = load i32, ptr %i339, align 4, !dbg !797
  %dec561 = add i32 %452, -1, !dbg !797
  store i32 %dec561, ptr %i339, align 4, !dbg !797
  br label %for.cond373, !dbg !798, !llvm.loop !799

for.end562:                                       ; preds = %for.cond373
  call void @llvm.lifetime.end.p0(i64 8, ptr %n0341) #6, !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1340) #6, !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %dX) #6, !dbg !801
  call void @llvm.lifetime.end.p0(i64 4, ptr %i339) #6, !dbg !801
  br label %sw.epilog, !dbg !802

sw.epilog:                                        ; preds = %for.end562, %for.end336, %for.end127
  %453 = load i64, ptr %most_significant_q_limb, align 8, !dbg !803
  store i64 %453, ptr %retval, align 8, !dbg !804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup563, !dbg !804

cleanup563:                                       ; preds = %sw.epilog, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %most_significant_q_limb) #6, !dbg !805
  %454 = load i64, ptr %retval, align 8, !dbg !805
  ret i64 %454, !dbg !805

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !806 dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !809 dso_local i64 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !812 dso_local i64 @mpihelp_submul_1(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !815 dso_local i64 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mpihelp_divmod_1(ptr noundef %quot_ptr, ptr noundef %dividend_ptr, i32 noundef %dividend_size, i64 noundef %divisor_limb) #0 align 16 !dbg !816 {
entry:
  %retval = alloca i64, align 8
  %quot_ptr.addr = alloca ptr, align 8
  %dividend_ptr.addr = alloca ptr, align 8
  %dividend_size.addr = alloca i32, align 4
  %divisor_limb.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %n1 = alloca i64, align 8
  %n0 = alloca i64, align 8
  %r = alloca i64, align 8
  %dummy = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %normalization_steps = alloca i32, align 4
  %__d1 = alloca i64, align 8
  %__d0 = alloca i64, align 8
  %__q1 = alloca i64, align 8
  %__q0 = alloca i64, align 8
  %__r1 = alloca i64, align 8
  %__r0 = alloca i64, align 8
  %__m = alloca i64, align 8
  %__d162 = alloca i64, align 8
  %__d063 = alloca i64, align 8
  %__q164 = alloca i64, align 8
  %__q065 = alloca i64, align 8
  %__r166 = alloca i64, align 8
  %__r067 = alloca i64, align 8
  %__m68 = alloca i64, align 8
  %__d1138 = alloca i64, align 8
  %__d0139 = alloca i64, align 8
  %__q1140 = alloca i64, align 8
  %__q0141 = alloca i64, align 8
  %__r1142 = alloca i64, align 8
  %__r0143 = alloca i64, align 8
  %__m144 = alloca i64, align 8
  store ptr %quot_ptr, ptr %quot_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %quot_ptr.addr, metadata !818, metadata !DIExpression()), !dbg !864
  store ptr %dividend_ptr, ptr %dividend_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend_ptr.addr, metadata !819, metadata !DIExpression()), !dbg !865
  store i32 %dividend_size, ptr %dividend_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dividend_size.addr, metadata !820, metadata !DIExpression()), !dbg !866
  store i64 %divisor_limb, ptr %divisor_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor_limb.addr, metadata !821, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %i, metadata !822, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #6, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %n1, metadata !823, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 8, ptr %n0) #6, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %n0, metadata !824, metadata !DIExpression()), !dbg !872
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #6, !dbg !870
  call void @llvm.dbg.declare(metadata ptr %r, metadata !825, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %dummy) #6, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !826, metadata !DIExpression()), !dbg !875
  %0 = load i32, ptr %dividend_size.addr, align 4, !dbg !876
  %tobool = icmp ne i32 %0, 0, !dbg !876
  br i1 %tobool, label %if.end, label %if.then, !dbg !878

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup196, !dbg !879

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %normalization_steps) #6, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %normalization_steps, metadata !827, metadata !DIExpression()), !dbg !881
  %1 = load i64, ptr %divisor_limb.addr, align 8, !dbg !882
  %call = call i32 @count_leading_zeros(i64 noundef %1) #7, !dbg !883
  store i32 %call, ptr %normalization_steps, align 4, !dbg !884
  %2 = load i32, ptr %normalization_steps, align 4, !dbg !885
  %tobool1 = icmp ne i32 %2, 0, !dbg !885
  br i1 %tobool1, label %if.then2, label %if.end122, !dbg !886

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %normalization_steps, align 4, !dbg !887
  %4 = load i64, ptr %divisor_limb.addr, align 8, !dbg !888
  %sh_prom = zext i32 %3 to i64, !dbg !888
  %shl = shl i64 %4, %sh_prom, !dbg !888
  store i64 %shl, ptr %divisor_limb.addr, align 8, !dbg !888
  %5 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !889
  %6 = load i32, ptr %dividend_size.addr, align 4, !dbg !890
  %sub = sub i32 %6, 1, !dbg !891
  %idxprom = sext i32 %sub to i64, !dbg !889
  %arrayidx = getelementptr i64, ptr %5, i64 %idxprom, !dbg !889
  %7 = load i64, ptr %arrayidx, align 8, !dbg !889
  store i64 %7, ptr %n1, align 8, !dbg !892
  %8 = load i64, ptr %n1, align 8, !dbg !893
  %9 = load i32, ptr %normalization_steps, align 4, !dbg !894
  %sub3 = sub i32 64, %9, !dbg !895
  %sh_prom4 = zext i32 %sub3 to i64, !dbg !896
  %shr = lshr i64 %8, %sh_prom4, !dbg !896
  store i64 %shr, ptr %r, align 8, !dbg !897
  %10 = load i32, ptr %dividend_size.addr, align 4, !dbg !898
  %sub5 = sub i32 %10, 2, !dbg !899
  store i32 %sub5, ptr %i, align 4, !dbg !900
  br label %for.cond, !dbg !901

for.cond:                                         ; preds = %for.inc, %if.then2
  %11 = load i32, ptr %i, align 4, !dbg !902
  %cmp = icmp sge i32 %11, 0, !dbg !903
  br i1 %cmp, label %for.body, label %for.end, !dbg !904

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !905
  %13 = load i32, ptr %i, align 4, !dbg !906
  %idxprom6 = sext i32 %13 to i64, !dbg !905
  %arrayidx7 = getelementptr i64, ptr %12, i64 %idxprom6, !dbg !905
  %14 = load i64, ptr %arrayidx7, align 8, !dbg !905
  store i64 %14, ptr %n0, align 8, !dbg !907
  br label %do.body, !dbg !908

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d1) #6, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__d1, metadata !832, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d0) #6, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__d0, metadata !839, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q1) #6, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__q1, metadata !840, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q0) #6, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__q0, metadata !841, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r1) #6, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__r1, metadata !842, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r0) #6, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__r0, metadata !843, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m) #6, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %__m, metadata !844, metadata !DIExpression()), !dbg !909
  %15 = load i64, ptr %divisor_limb.addr, align 8, !dbg !909
  %shr8 = lshr i64 %15, 32, !dbg !909
  store i64 %shr8, ptr %__d1, align 8, !dbg !909
  %16 = load i64, ptr %divisor_limb.addr, align 8, !dbg !909
  %and = and i64 %16, 4294967295, !dbg !909
  store i64 %and, ptr %__d0, align 8, !dbg !909
  %17 = load i64, ptr %r, align 8, !dbg !909
  %18 = load i64, ptr %__d1, align 8, !dbg !909
  %rem = urem i64 %17, %18, !dbg !909
  store i64 %rem, ptr %__r1, align 8, !dbg !909
  %19 = load i64, ptr %r, align 8, !dbg !909
  %20 = load i64, ptr %__d1, align 8, !dbg !909
  %div = udiv i64 %19, %20, !dbg !909
  store i64 %div, ptr %__q1, align 8, !dbg !909
  %21 = load i64, ptr %__q1, align 8, !dbg !909
  %22 = load i64, ptr %__d0, align 8, !dbg !909
  %mul = mul i64 %21, %22, !dbg !909
  store i64 %mul, ptr %__m, align 8, !dbg !909
  %23 = load i64, ptr %__r1, align 8, !dbg !909
  %mul9 = mul i64 %23, 4294967296, !dbg !909
  %24 = load i64, ptr %n1, align 8, !dbg !909
  %25 = load i32, ptr %normalization_steps, align 4, !dbg !909
  %sh_prom10 = zext i32 %25 to i64, !dbg !909
  %shl11 = shl i64 %24, %sh_prom10, !dbg !909
  %26 = load i64, ptr %n0, align 8, !dbg !909
  %27 = load i32, ptr %normalization_steps, align 4, !dbg !909
  %sub12 = sub i32 64, %27, !dbg !909
  %sh_prom13 = zext i32 %sub12 to i64, !dbg !909
  %shr14 = lshr i64 %26, %sh_prom13, !dbg !909
  %or = or i64 %shl11, %shr14, !dbg !909
  %shr15 = lshr i64 %or, 32, !dbg !909
  %or16 = or i64 %mul9, %shr15, !dbg !909
  store i64 %or16, ptr %__r1, align 8, !dbg !909
  %28 = load i64, ptr %__r1, align 8, !dbg !910
  %29 = load i64, ptr %__m, align 8, !dbg !910
  %cmp17 = icmp ult i64 %28, %29, !dbg !910
  br i1 %cmp17, label %if.then18, label %if.end27, !dbg !909

if.then18:                                        ; preds = %do.body
  %30 = load i64, ptr %__q1, align 8, !dbg !912
  %dec = add i64 %30, -1, !dbg !912
  store i64 %dec, ptr %__q1, align 8, !dbg !912
  %31 = load i64, ptr %divisor_limb.addr, align 8, !dbg !912
  %32 = load i64, ptr %__r1, align 8, !dbg !912
  %add = add i64 %32, %31, !dbg !912
  store i64 %add, ptr %__r1, align 8, !dbg !912
  %33 = load i64, ptr %__r1, align 8, !dbg !914
  %34 = load i64, ptr %divisor_limb.addr, align 8, !dbg !914
  %cmp19 = icmp uge i64 %33, %34, !dbg !914
  br i1 %cmp19, label %if.then20, label %if.end26, !dbg !912

if.then20:                                        ; preds = %if.then18
  %35 = load i64, ptr %__r1, align 8, !dbg !916
  %36 = load i64, ptr %__m, align 8, !dbg !916
  %cmp21 = icmp ult i64 %35, %36, !dbg !916
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !914

if.then22:                                        ; preds = %if.then20
  %37 = load i64, ptr %__q1, align 8, !dbg !916
  %dec23 = add i64 %37, -1, !dbg !916
  store i64 %dec23, ptr %__q1, align 8, !dbg !916
  %38 = load i64, ptr %divisor_limb.addr, align 8, !dbg !916
  %39 = load i64, ptr %__r1, align 8, !dbg !916
  %add24 = add i64 %39, %38, !dbg !916
  store i64 %add24, ptr %__r1, align 8, !dbg !916
  br label %if.end25, !dbg !916

if.end25:                                         ; preds = %if.then22, %if.then20
  br label %if.end26, !dbg !916

if.end26:                                         ; preds = %if.end25, %if.then18
  br label %if.end27, !dbg !912

if.end27:                                         ; preds = %if.end26, %do.body
  %40 = load i64, ptr %__m, align 8, !dbg !909
  %41 = load i64, ptr %__r1, align 8, !dbg !909
  %sub28 = sub i64 %41, %40, !dbg !909
  store i64 %sub28, ptr %__r1, align 8, !dbg !909
  %42 = load i64, ptr %__r1, align 8, !dbg !909
  %43 = load i64, ptr %__d1, align 8, !dbg !909
  %rem29 = urem i64 %42, %43, !dbg !909
  store i64 %rem29, ptr %__r0, align 8, !dbg !909
  %44 = load i64, ptr %__r1, align 8, !dbg !909
  %45 = load i64, ptr %__d1, align 8, !dbg !909
  %div30 = udiv i64 %44, %45, !dbg !909
  store i64 %div30, ptr %__q0, align 8, !dbg !909
  %46 = load i64, ptr %__q0, align 8, !dbg !909
  %47 = load i64, ptr %__d0, align 8, !dbg !909
  %mul31 = mul i64 %46, %47, !dbg !909
  store i64 %mul31, ptr %__m, align 8, !dbg !909
  %48 = load i64, ptr %__r0, align 8, !dbg !909
  %mul32 = mul i64 %48, 4294967296, !dbg !909
  %49 = load i64, ptr %n1, align 8, !dbg !909
  %50 = load i32, ptr %normalization_steps, align 4, !dbg !909
  %sh_prom33 = zext i32 %50 to i64, !dbg !909
  %shl34 = shl i64 %49, %sh_prom33, !dbg !909
  %51 = load i64, ptr %n0, align 8, !dbg !909
  %52 = load i32, ptr %normalization_steps, align 4, !dbg !909
  %sub35 = sub i32 64, %52, !dbg !909
  %sh_prom36 = zext i32 %sub35 to i64, !dbg !909
  %shr37 = lshr i64 %51, %sh_prom36, !dbg !909
  %or38 = or i64 %shl34, %shr37, !dbg !909
  %and39 = and i64 %or38, 4294967295, !dbg !909
  %or40 = or i64 %mul32, %and39, !dbg !909
  store i64 %or40, ptr %__r0, align 8, !dbg !909
  %53 = load i64, ptr %__r0, align 8, !dbg !918
  %54 = load i64, ptr %__m, align 8, !dbg !918
  %cmp41 = icmp ult i64 %53, %54, !dbg !918
  br i1 %cmp41, label %if.then42, label %if.end53, !dbg !909

if.then42:                                        ; preds = %if.end27
  %55 = load i64, ptr %__q0, align 8, !dbg !920
  %dec43 = add i64 %55, -1, !dbg !920
  store i64 %dec43, ptr %__q0, align 8, !dbg !920
  %56 = load i64, ptr %divisor_limb.addr, align 8, !dbg !920
  %57 = load i64, ptr %__r0, align 8, !dbg !920
  %add44 = add i64 %57, %56, !dbg !920
  store i64 %add44, ptr %__r0, align 8, !dbg !920
  %58 = load i64, ptr %__r0, align 8, !dbg !922
  %59 = load i64, ptr %divisor_limb.addr, align 8, !dbg !922
  %cmp45 = icmp uge i64 %58, %59, !dbg !922
  br i1 %cmp45, label %if.then46, label %if.end52, !dbg !920

if.then46:                                        ; preds = %if.then42
  %60 = load i64, ptr %__r0, align 8, !dbg !924
  %61 = load i64, ptr %__m, align 8, !dbg !924
  %cmp47 = icmp ult i64 %60, %61, !dbg !924
  br i1 %cmp47, label %if.then48, label %if.end51, !dbg !922

if.then48:                                        ; preds = %if.then46
  %62 = load i64, ptr %__q0, align 8, !dbg !924
  %dec49 = add i64 %62, -1, !dbg !924
  store i64 %dec49, ptr %__q0, align 8, !dbg !924
  %63 = load i64, ptr %divisor_limb.addr, align 8, !dbg !924
  %64 = load i64, ptr %__r0, align 8, !dbg !924
  %add50 = add i64 %64, %63, !dbg !924
  store i64 %add50, ptr %__r0, align 8, !dbg !924
  br label %if.end51, !dbg !924

if.end51:                                         ; preds = %if.then48, %if.then46
  br label %if.end52, !dbg !924

if.end52:                                         ; preds = %if.end51, %if.then42
  br label %if.end53, !dbg !920

if.end53:                                         ; preds = %if.end52, %if.end27
  %65 = load i64, ptr %__m, align 8, !dbg !909
  %66 = load i64, ptr %__r0, align 8, !dbg !909
  %sub54 = sub i64 %66, %65, !dbg !909
  store i64 %sub54, ptr %__r0, align 8, !dbg !909
  %67 = load i64, ptr %__q1, align 8, !dbg !909
  %mul55 = mul i64 %67, 4294967296, !dbg !909
  %68 = load i64, ptr %__q0, align 8, !dbg !909
  %or56 = or i64 %mul55, %68, !dbg !909
  %69 = load ptr, ptr %quot_ptr.addr, align 8, !dbg !909
  %70 = load i32, ptr %i, align 4, !dbg !909
  %add57 = add i32 %70, 1, !dbg !909
  %idxprom58 = sext i32 %add57 to i64, !dbg !909
  %arrayidx59 = getelementptr i64, ptr %69, i64 %idxprom58, !dbg !909
  store i64 %or56, ptr %arrayidx59, align 8, !dbg !909
  %71 = load i64, ptr %__r0, align 8, !dbg !909
  store i64 %71, ptr %r, align 8, !dbg !909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m) #6, !dbg !908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r0) #6, !dbg !908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r1) #6, !dbg !908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q0) #6, !dbg !908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q1) #6, !dbg !908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d0) #6, !dbg !908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d1) #6, !dbg !908
  br label %do.cond, !dbg !909

do.cond:                                          ; preds = %if.end53
  br label %do.end, !dbg !909

do.end:                                           ; preds = %do.cond
  %72 = load i64, ptr %n0, align 8, !dbg !926
  store i64 %72, ptr %n1, align 8, !dbg !927
  br label %for.inc, !dbg !928

for.inc:                                          ; preds = %do.end
  %73 = load i32, ptr %i, align 4, !dbg !929
  %dec60 = add i32 %73, -1, !dbg !929
  store i32 %dec60, ptr %i, align 4, !dbg !929
  br label %for.cond, !dbg !930, !llvm.loop !931

for.end:                                          ; preds = %for.cond
  br label %do.body61, !dbg !933

do.body61:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d162) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %__d162, metadata !845, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d063) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %__d063, metadata !847, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q164) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %__q164, metadata !848, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q065) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %__q065, metadata !849, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r166) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %__r166, metadata !850, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r067) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %__r067, metadata !851, metadata !DIExpression()), !dbg !934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m68) #6, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %__m68, metadata !852, metadata !DIExpression()), !dbg !934
  %74 = load i64, ptr %divisor_limb.addr, align 8, !dbg !934
  %shr69 = lshr i64 %74, 32, !dbg !934
  store i64 %shr69, ptr %__d162, align 8, !dbg !934
  %75 = load i64, ptr %divisor_limb.addr, align 8, !dbg !934
  %and70 = and i64 %75, 4294967295, !dbg !934
  store i64 %and70, ptr %__d063, align 8, !dbg !934
  %76 = load i64, ptr %r, align 8, !dbg !934
  %77 = load i64, ptr %__d162, align 8, !dbg !934
  %rem71 = urem i64 %76, %77, !dbg !934
  store i64 %rem71, ptr %__r166, align 8, !dbg !934
  %78 = load i64, ptr %r, align 8, !dbg !934
  %79 = load i64, ptr %__d162, align 8, !dbg !934
  %div72 = udiv i64 %78, %79, !dbg !934
  store i64 %div72, ptr %__q164, align 8, !dbg !934
  %80 = load i64, ptr %__q164, align 8, !dbg !934
  %81 = load i64, ptr %__d063, align 8, !dbg !934
  %mul73 = mul i64 %80, %81, !dbg !934
  store i64 %mul73, ptr %__m68, align 8, !dbg !934
  %82 = load i64, ptr %__r166, align 8, !dbg !934
  %mul74 = mul i64 %82, 4294967296, !dbg !934
  %83 = load i64, ptr %n1, align 8, !dbg !934
  %84 = load i32, ptr %normalization_steps, align 4, !dbg !934
  %sh_prom75 = zext i32 %84 to i64, !dbg !934
  %shl76 = shl i64 %83, %sh_prom75, !dbg !934
  %shr77 = lshr i64 %shl76, 32, !dbg !934
  %or78 = or i64 %mul74, %shr77, !dbg !934
  store i64 %or78, ptr %__r166, align 8, !dbg !934
  %85 = load i64, ptr %__r166, align 8, !dbg !935
  %86 = load i64, ptr %__m68, align 8, !dbg !935
  %cmp79 = icmp ult i64 %85, %86, !dbg !935
  br i1 %cmp79, label %if.then80, label %if.end91, !dbg !934

if.then80:                                        ; preds = %do.body61
  %87 = load i64, ptr %__q164, align 8, !dbg !937
  %dec81 = add i64 %87, -1, !dbg !937
  store i64 %dec81, ptr %__q164, align 8, !dbg !937
  %88 = load i64, ptr %divisor_limb.addr, align 8, !dbg !937
  %89 = load i64, ptr %__r166, align 8, !dbg !937
  %add82 = add i64 %89, %88, !dbg !937
  store i64 %add82, ptr %__r166, align 8, !dbg !937
  %90 = load i64, ptr %__r166, align 8, !dbg !939
  %91 = load i64, ptr %divisor_limb.addr, align 8, !dbg !939
  %cmp83 = icmp uge i64 %90, %91, !dbg !939
  br i1 %cmp83, label %if.then84, label %if.end90, !dbg !937

if.then84:                                        ; preds = %if.then80
  %92 = load i64, ptr %__r166, align 8, !dbg !941
  %93 = load i64, ptr %__m68, align 8, !dbg !941
  %cmp85 = icmp ult i64 %92, %93, !dbg !941
  br i1 %cmp85, label %if.then86, label %if.end89, !dbg !939

if.then86:                                        ; preds = %if.then84
  %94 = load i64, ptr %__q164, align 8, !dbg !941
  %dec87 = add i64 %94, -1, !dbg !941
  store i64 %dec87, ptr %__q164, align 8, !dbg !941
  %95 = load i64, ptr %divisor_limb.addr, align 8, !dbg !941
  %96 = load i64, ptr %__r166, align 8, !dbg !941
  %add88 = add i64 %96, %95, !dbg !941
  store i64 %add88, ptr %__r166, align 8, !dbg !941
  br label %if.end89, !dbg !941

if.end89:                                         ; preds = %if.then86, %if.then84
  br label %if.end90, !dbg !941

if.end90:                                         ; preds = %if.end89, %if.then80
  br label %if.end91, !dbg !937

if.end91:                                         ; preds = %if.end90, %do.body61
  %97 = load i64, ptr %__m68, align 8, !dbg !934
  %98 = load i64, ptr %__r166, align 8, !dbg !934
  %sub92 = sub i64 %98, %97, !dbg !934
  store i64 %sub92, ptr %__r166, align 8, !dbg !934
  %99 = load i64, ptr %__r166, align 8, !dbg !934
  %100 = load i64, ptr %__d162, align 8, !dbg !934
  %rem93 = urem i64 %99, %100, !dbg !934
  store i64 %rem93, ptr %__r067, align 8, !dbg !934
  %101 = load i64, ptr %__r166, align 8, !dbg !934
  %102 = load i64, ptr %__d162, align 8, !dbg !934
  %div94 = udiv i64 %101, %102, !dbg !934
  store i64 %div94, ptr %__q065, align 8, !dbg !934
  %103 = load i64, ptr %__q065, align 8, !dbg !934
  %104 = load i64, ptr %__d063, align 8, !dbg !934
  %mul95 = mul i64 %103, %104, !dbg !934
  store i64 %mul95, ptr %__m68, align 8, !dbg !934
  %105 = load i64, ptr %__r067, align 8, !dbg !934
  %mul96 = mul i64 %105, 4294967296, !dbg !934
  %106 = load i64, ptr %n1, align 8, !dbg !934
  %107 = load i32, ptr %normalization_steps, align 4, !dbg !934
  %sh_prom97 = zext i32 %107 to i64, !dbg !934
  %shl98 = shl i64 %106, %sh_prom97, !dbg !934
  %and99 = and i64 %shl98, 4294967295, !dbg !934
  %or100 = or i64 %mul96, %and99, !dbg !934
  store i64 %or100, ptr %__r067, align 8, !dbg !934
  %108 = load i64, ptr %__r067, align 8, !dbg !943
  %109 = load i64, ptr %__m68, align 8, !dbg !943
  %cmp101 = icmp ult i64 %108, %109, !dbg !943
  br i1 %cmp101, label %if.then102, label %if.end113, !dbg !934

if.then102:                                       ; preds = %if.end91
  %110 = load i64, ptr %__q065, align 8, !dbg !945
  %dec103 = add i64 %110, -1, !dbg !945
  store i64 %dec103, ptr %__q065, align 8, !dbg !945
  %111 = load i64, ptr %divisor_limb.addr, align 8, !dbg !945
  %112 = load i64, ptr %__r067, align 8, !dbg !945
  %add104 = add i64 %112, %111, !dbg !945
  store i64 %add104, ptr %__r067, align 8, !dbg !945
  %113 = load i64, ptr %__r067, align 8, !dbg !947
  %114 = load i64, ptr %divisor_limb.addr, align 8, !dbg !947
  %cmp105 = icmp uge i64 %113, %114, !dbg !947
  br i1 %cmp105, label %if.then106, label %if.end112, !dbg !945

if.then106:                                       ; preds = %if.then102
  %115 = load i64, ptr %__r067, align 8, !dbg !949
  %116 = load i64, ptr %__m68, align 8, !dbg !949
  %cmp107 = icmp ult i64 %115, %116, !dbg !949
  br i1 %cmp107, label %if.then108, label %if.end111, !dbg !947

if.then108:                                       ; preds = %if.then106
  %117 = load i64, ptr %__q065, align 8, !dbg !949
  %dec109 = add i64 %117, -1, !dbg !949
  store i64 %dec109, ptr %__q065, align 8, !dbg !949
  %118 = load i64, ptr %divisor_limb.addr, align 8, !dbg !949
  %119 = load i64, ptr %__r067, align 8, !dbg !949
  %add110 = add i64 %119, %118, !dbg !949
  store i64 %add110, ptr %__r067, align 8, !dbg !949
  br label %if.end111, !dbg !949

if.end111:                                        ; preds = %if.then108, %if.then106
  br label %if.end112, !dbg !949

if.end112:                                        ; preds = %if.end111, %if.then102
  br label %if.end113, !dbg !945

if.end113:                                        ; preds = %if.end112, %if.end91
  %120 = load i64, ptr %__m68, align 8, !dbg !934
  %121 = load i64, ptr %__r067, align 8, !dbg !934
  %sub114 = sub i64 %121, %120, !dbg !934
  store i64 %sub114, ptr %__r067, align 8, !dbg !934
  %122 = load i64, ptr %__q164, align 8, !dbg !934
  %mul115 = mul i64 %122, 4294967296, !dbg !934
  %123 = load i64, ptr %__q065, align 8, !dbg !934
  %or116 = or i64 %mul115, %123, !dbg !934
  %124 = load ptr, ptr %quot_ptr.addr, align 8, !dbg !934
  %arrayidx117 = getelementptr i64, ptr %124, i64 0, !dbg !934
  store i64 %or116, ptr %arrayidx117, align 8, !dbg !934
  %125 = load i64, ptr %__r067, align 8, !dbg !934
  store i64 %125, ptr %r, align 8, !dbg !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m68) #6, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r067) #6, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r166) #6, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q065) #6, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q164) #6, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d063) #6, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d162) #6, !dbg !933
  br label %do.cond118, !dbg !934

do.cond118:                                       ; preds = %if.end113
  br label %do.end119, !dbg !934

do.end119:                                        ; preds = %do.cond118
  %126 = load i64, ptr %r, align 8, !dbg !951
  %127 = load i32, ptr %normalization_steps, align 4, !dbg !952
  %sh_prom120 = zext i32 %127 to i64, !dbg !953
  %shr121 = lshr i64 %126, %sh_prom120, !dbg !953
  store i64 %shr121, ptr %retval, align 8, !dbg !954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !954

if.end122:                                        ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !955
  br label %cleanup, !dbg !955

cleanup:                                          ; preds = %if.end122, %do.end119
  call void @llvm.lifetime.end.p0(i64 4, ptr %normalization_steps) #6, !dbg !955
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup196 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %128 = load i32, ptr %dividend_size.addr, align 4, !dbg !956
  %sub123 = sub i32 %128, 1, !dbg !957
  store i32 %sub123, ptr %i, align 4, !dbg !958
  %129 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !959
  %130 = load i32, ptr %i, align 4, !dbg !960
  %idxprom124 = sext i32 %130 to i64, !dbg !959
  %arrayidx125 = getelementptr i64, ptr %129, i64 %idxprom124, !dbg !959
  %131 = load i64, ptr %arrayidx125, align 8, !dbg !959
  store i64 %131, ptr %r, align 8, !dbg !961
  %132 = load i64, ptr %r, align 8, !dbg !962
  %133 = load i64, ptr %divisor_limb.addr, align 8, !dbg !964
  %cmp126 = icmp uge i64 %132, %133, !dbg !965
  br i1 %cmp126, label %if.then127, label %if.else, !dbg !966

if.then127:                                       ; preds = %cleanup.cont
  store i64 0, ptr %r, align 8, !dbg !967
  br label %if.end131, !dbg !968

if.else:                                          ; preds = %cleanup.cont
  %134 = load ptr, ptr %quot_ptr.addr, align 8, !dbg !969
  %135 = load i32, ptr %i, align 4, !dbg !970
  %dec128 = add i32 %135, -1, !dbg !970
  store i32 %dec128, ptr %i, align 4, !dbg !970
  %idxprom129 = sext i32 %135 to i64, !dbg !969
  %arrayidx130 = getelementptr i64, ptr %134, i64 %idxprom129, !dbg !969
  store i64 0, ptr %arrayidx130, align 8, !dbg !971
  br label %if.end131

if.end131:                                        ; preds = %if.else, %if.then127
  br label %for.cond132, !dbg !972

for.cond132:                                      ; preds = %for.inc193, %if.end131
  %136 = load i32, ptr %i, align 4, !dbg !973
  %cmp133 = icmp sge i32 %136, 0, !dbg !974
  br i1 %cmp133, label %for.body134, label %for.end195, !dbg !975

for.body134:                                      ; preds = %for.cond132
  %137 = load ptr, ptr %dividend_ptr.addr, align 8, !dbg !976
  %138 = load i32, ptr %i, align 4, !dbg !977
  %idxprom135 = sext i32 %138 to i64, !dbg !976
  %arrayidx136 = getelementptr i64, ptr %137, i64 %idxprom135, !dbg !976
  %139 = load i64, ptr %arrayidx136, align 8, !dbg !976
  store i64 %139, ptr %n0, align 8, !dbg !978
  br label %do.body137, !dbg !979

do.body137:                                       ; preds = %for.body134
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d1138) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__d1138, metadata !853, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %__d0139) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__d0139, metadata !858, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q1140) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__q1140, metadata !859, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %__q0141) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__q0141, metadata !860, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r1142) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__r1142, metadata !861, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %__r0143) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__r0143, metadata !862, metadata !DIExpression()), !dbg !980
  call void @llvm.lifetime.start.p0(i64 8, ptr %__m144) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %__m144, metadata !863, metadata !DIExpression()), !dbg !980
  %140 = load i64, ptr %divisor_limb.addr, align 8, !dbg !980
  %shr145 = lshr i64 %140, 32, !dbg !980
  store i64 %shr145, ptr %__d1138, align 8, !dbg !980
  %141 = load i64, ptr %divisor_limb.addr, align 8, !dbg !980
  %and146 = and i64 %141, 4294967295, !dbg !980
  store i64 %and146, ptr %__d0139, align 8, !dbg !980
  %142 = load i64, ptr %r, align 8, !dbg !980
  %143 = load i64, ptr %__d1138, align 8, !dbg !980
  %rem147 = urem i64 %142, %143, !dbg !980
  store i64 %rem147, ptr %__r1142, align 8, !dbg !980
  %144 = load i64, ptr %r, align 8, !dbg !980
  %145 = load i64, ptr %__d1138, align 8, !dbg !980
  %div148 = udiv i64 %144, %145, !dbg !980
  store i64 %div148, ptr %__q1140, align 8, !dbg !980
  %146 = load i64, ptr %__q1140, align 8, !dbg !980
  %147 = load i64, ptr %__d0139, align 8, !dbg !980
  %mul149 = mul i64 %146, %147, !dbg !980
  store i64 %mul149, ptr %__m144, align 8, !dbg !980
  %148 = load i64, ptr %__r1142, align 8, !dbg !980
  %mul150 = mul i64 %148, 4294967296, !dbg !980
  %149 = load i64, ptr %n0, align 8, !dbg !980
  %shr151 = lshr i64 %149, 32, !dbg !980
  %or152 = or i64 %mul150, %shr151, !dbg !980
  store i64 %or152, ptr %__r1142, align 8, !dbg !980
  %150 = load i64, ptr %__r1142, align 8, !dbg !981
  %151 = load i64, ptr %__m144, align 8, !dbg !981
  %cmp153 = icmp ult i64 %150, %151, !dbg !981
  br i1 %cmp153, label %if.then154, label %if.end165, !dbg !980

if.then154:                                       ; preds = %do.body137
  %152 = load i64, ptr %__q1140, align 8, !dbg !983
  %dec155 = add i64 %152, -1, !dbg !983
  store i64 %dec155, ptr %__q1140, align 8, !dbg !983
  %153 = load i64, ptr %divisor_limb.addr, align 8, !dbg !983
  %154 = load i64, ptr %__r1142, align 8, !dbg !983
  %add156 = add i64 %154, %153, !dbg !983
  store i64 %add156, ptr %__r1142, align 8, !dbg !983
  %155 = load i64, ptr %__r1142, align 8, !dbg !985
  %156 = load i64, ptr %divisor_limb.addr, align 8, !dbg !985
  %cmp157 = icmp uge i64 %155, %156, !dbg !985
  br i1 %cmp157, label %if.then158, label %if.end164, !dbg !983

if.then158:                                       ; preds = %if.then154
  %157 = load i64, ptr %__r1142, align 8, !dbg !987
  %158 = load i64, ptr %__m144, align 8, !dbg !987
  %cmp159 = icmp ult i64 %157, %158, !dbg !987
  br i1 %cmp159, label %if.then160, label %if.end163, !dbg !985

if.then160:                                       ; preds = %if.then158
  %159 = load i64, ptr %__q1140, align 8, !dbg !987
  %dec161 = add i64 %159, -1, !dbg !987
  store i64 %dec161, ptr %__q1140, align 8, !dbg !987
  %160 = load i64, ptr %divisor_limb.addr, align 8, !dbg !987
  %161 = load i64, ptr %__r1142, align 8, !dbg !987
  %add162 = add i64 %161, %160, !dbg !987
  store i64 %add162, ptr %__r1142, align 8, !dbg !987
  br label %if.end163, !dbg !987

if.end163:                                        ; preds = %if.then160, %if.then158
  br label %if.end164, !dbg !987

if.end164:                                        ; preds = %if.end163, %if.then154
  br label %if.end165, !dbg !983

if.end165:                                        ; preds = %if.end164, %do.body137
  %162 = load i64, ptr %__m144, align 8, !dbg !980
  %163 = load i64, ptr %__r1142, align 8, !dbg !980
  %sub166 = sub i64 %163, %162, !dbg !980
  store i64 %sub166, ptr %__r1142, align 8, !dbg !980
  %164 = load i64, ptr %__r1142, align 8, !dbg !980
  %165 = load i64, ptr %__d1138, align 8, !dbg !980
  %rem167 = urem i64 %164, %165, !dbg !980
  store i64 %rem167, ptr %__r0143, align 8, !dbg !980
  %166 = load i64, ptr %__r1142, align 8, !dbg !980
  %167 = load i64, ptr %__d1138, align 8, !dbg !980
  %div168 = udiv i64 %166, %167, !dbg !980
  store i64 %div168, ptr %__q0141, align 8, !dbg !980
  %168 = load i64, ptr %__q0141, align 8, !dbg !980
  %169 = load i64, ptr %__d0139, align 8, !dbg !980
  %mul169 = mul i64 %168, %169, !dbg !980
  store i64 %mul169, ptr %__m144, align 8, !dbg !980
  %170 = load i64, ptr %__r0143, align 8, !dbg !980
  %mul170 = mul i64 %170, 4294967296, !dbg !980
  %171 = load i64, ptr %n0, align 8, !dbg !980
  %and171 = and i64 %171, 4294967295, !dbg !980
  %or172 = or i64 %mul170, %and171, !dbg !980
  store i64 %or172, ptr %__r0143, align 8, !dbg !980
  %172 = load i64, ptr %__r0143, align 8, !dbg !989
  %173 = load i64, ptr %__m144, align 8, !dbg !989
  %cmp173 = icmp ult i64 %172, %173, !dbg !989
  br i1 %cmp173, label %if.then174, label %if.end185, !dbg !980

if.then174:                                       ; preds = %if.end165
  %174 = load i64, ptr %__q0141, align 8, !dbg !991
  %dec175 = add i64 %174, -1, !dbg !991
  store i64 %dec175, ptr %__q0141, align 8, !dbg !991
  %175 = load i64, ptr %divisor_limb.addr, align 8, !dbg !991
  %176 = load i64, ptr %__r0143, align 8, !dbg !991
  %add176 = add i64 %176, %175, !dbg !991
  store i64 %add176, ptr %__r0143, align 8, !dbg !991
  %177 = load i64, ptr %__r0143, align 8, !dbg !993
  %178 = load i64, ptr %divisor_limb.addr, align 8, !dbg !993
  %cmp177 = icmp uge i64 %177, %178, !dbg !993
  br i1 %cmp177, label %if.then178, label %if.end184, !dbg !991

if.then178:                                       ; preds = %if.then174
  %179 = load i64, ptr %__r0143, align 8, !dbg !995
  %180 = load i64, ptr %__m144, align 8, !dbg !995
  %cmp179 = icmp ult i64 %179, %180, !dbg !995
  br i1 %cmp179, label %if.then180, label %if.end183, !dbg !993

if.then180:                                       ; preds = %if.then178
  %181 = load i64, ptr %__q0141, align 8, !dbg !995
  %dec181 = add i64 %181, -1, !dbg !995
  store i64 %dec181, ptr %__q0141, align 8, !dbg !995
  %182 = load i64, ptr %divisor_limb.addr, align 8, !dbg !995
  %183 = load i64, ptr %__r0143, align 8, !dbg !995
  %add182 = add i64 %183, %182, !dbg !995
  store i64 %add182, ptr %__r0143, align 8, !dbg !995
  br label %if.end183, !dbg !995

if.end183:                                        ; preds = %if.then180, %if.then178
  br label %if.end184, !dbg !995

if.end184:                                        ; preds = %if.end183, %if.then174
  br label %if.end185, !dbg !991

if.end185:                                        ; preds = %if.end184, %if.end165
  %184 = load i64, ptr %__m144, align 8, !dbg !980
  %185 = load i64, ptr %__r0143, align 8, !dbg !980
  %sub186 = sub i64 %185, %184, !dbg !980
  store i64 %sub186, ptr %__r0143, align 8, !dbg !980
  %186 = load i64, ptr %__q1140, align 8, !dbg !980
  %mul187 = mul i64 %186, 4294967296, !dbg !980
  %187 = load i64, ptr %__q0141, align 8, !dbg !980
  %or188 = or i64 %mul187, %187, !dbg !980
  %188 = load ptr, ptr %quot_ptr.addr, align 8, !dbg !980
  %189 = load i32, ptr %i, align 4, !dbg !980
  %idxprom189 = sext i32 %189 to i64, !dbg !980
  %arrayidx190 = getelementptr i64, ptr %188, i64 %idxprom189, !dbg !980
  store i64 %or188, ptr %arrayidx190, align 8, !dbg !980
  %190 = load i64, ptr %__r0143, align 8, !dbg !980
  store i64 %190, ptr %r, align 8, !dbg !980
  call void @llvm.lifetime.end.p0(i64 8, ptr %__m144) #6, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r0143) #6, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__r1142) #6, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q0141) #6, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__q1140) #6, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d0139) #6, !dbg !979
  call void @llvm.lifetime.end.p0(i64 8, ptr %__d1138) #6, !dbg !979
  br label %do.cond191, !dbg !980

do.cond191:                                       ; preds = %if.end185
  br label %do.end192, !dbg !980

do.end192:                                        ; preds = %do.cond191
  br label %for.inc193, !dbg !997

for.inc193:                                       ; preds = %do.end192
  %191 = load i32, ptr %i, align 4, !dbg !998
  %dec194 = add i32 %191, -1, !dbg !998
  store i32 %dec194, ptr %i, align 4, !dbg !998
  br label %for.cond132, !dbg !999, !llvm.loop !1000

for.end195:                                       ; preds = %for.cond132
  %192 = load i64, ptr %r, align 8, !dbg !1002
  store i64 %192, ptr %retval, align 8, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup196, !dbg !1003

cleanup196:                                       ; preds = %for.end195, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dummy) #6, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #6, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 8, ptr %n0) #6, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #6, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1004
  %193 = load i64, ptr %retval, align 8, !dbg !1004
  ret i64 %193, !dbg !1004
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #5 align 16 !dbg !1005 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1013, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #6, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !1014, metadata !DIExpression()), !dbg !1017
  store i32 -1, ptr %bitpos, align 4, !dbg !1017
  %0 = load i32, ptr %bitpos, align 4, !dbg !1018
  %1 = load i64, ptr %x.addr, align 8, !dbg !1019
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #8, !dbg !1018, !srcloc !1020
  store i32 %2, ptr %bitpos, align 4, !dbg !1018
  %3 = load i32, ptr %bitpos, align 4, !dbg !1021
  %add = add i32 %3, 1, !dbg !1022
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #6, !dbg !1023
  ret i32 %add, !dbg !1024
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { nounwind memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpih-div.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpih_div\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpih-div.ll lib/crypto/mpi/mpih-div.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/crypto/mpi/mpih-div.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0508c3793e7c183be1dbbc99e7a0cbb")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "UWtype", file: !4, line: 214, baseType: !5)
!4 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 8, !"cf-protection-branch", i32 1}
!12 = !{i32 4, !"function_return_thunk_extern", i32 1}
!13 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{i32 1, !"override-stack-alignment", i32 8}
!16 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!17 = distinct !DISubprogram(name: "mpihelp_mod_1", scope: !1, file: !1, line: 29, type: !18, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!18 = !DISubroutineType(types: !19)
!19 = !{!5, !20, !22, !5}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !4, line: 52, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !4, line: 53, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !38, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !64, !65, !66, !67, !68, !69}
!25 = !DILocalVariable(name: "dividend_ptr", arg: 1, scope: !17, file: !1, line: 29, type: !20)
!26 = !DILocalVariable(name: "dividend_size", arg: 2, scope: !17, file: !1, line: 29, type: !22)
!27 = !DILocalVariable(name: "divisor_limb", arg: 3, scope: !17, file: !1, line: 30, type: !5)
!28 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 32, type: !22)
!29 = !DILocalVariable(name: "n1", scope: !17, file: !1, line: 33, type: !5)
!30 = !DILocalVariable(name: "n0", scope: !17, file: !1, line: 33, type: !5)
!31 = !DILocalVariable(name: "r", scope: !17, file: !1, line: 33, type: !5)
!32 = !DILocalVariable(name: "dummy", scope: !17, file: !1, line: 34, type: !5)
!33 = !DILocalVariable(name: "normalization_steps", scope: !34, file: !1, line: 123, type: !23)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 122, column: 33)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 122, column: 7)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 121, column: 9)
!37 = distinct !DILexicalBlock(scope: !17, file: !1, line: 48, column: 6)
!38 = !DILocalVariable(name: "__d1", scope: !39, file: !1, line: 140, type: !3)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 140, column: 6)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 138, column: 46)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 138, column: 5)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 138, column: 5)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 126, column: 29)
!44 = distinct !DILexicalBlock(scope: !34, file: !1, line: 126, column: 8)
!45 = !DILocalVariable(name: "__d0", scope: !39, file: !1, line: 140, type: !3)
!46 = !DILocalVariable(name: "__q1", scope: !39, file: !1, line: 140, type: !3)
!47 = !DILocalVariable(name: "__q0", scope: !39, file: !1, line: 140, type: !3)
!48 = !DILocalVariable(name: "__r1", scope: !39, file: !1, line: 140, type: !3)
!49 = !DILocalVariable(name: "__r0", scope: !39, file: !1, line: 140, type: !3)
!50 = !DILocalVariable(name: "__m", scope: !39, file: !1, line: 140, type: !3)
!51 = !DILocalVariable(name: "__d1", scope: !52, file: !1, line: 146, type: !3)
!52 = distinct !DILexicalBlock(scope: !43, file: !1, line: 146, column: 5)
!53 = !DILocalVariable(name: "__d0", scope: !52, file: !1, line: 146, type: !3)
!54 = !DILocalVariable(name: "__q1", scope: !52, file: !1, line: 146, type: !3)
!55 = !DILocalVariable(name: "__q0", scope: !52, file: !1, line: 146, type: !3)
!56 = !DILocalVariable(name: "__r1", scope: !52, file: !1, line: 146, type: !3)
!57 = !DILocalVariable(name: "__r0", scope: !52, file: !1, line: 146, type: !3)
!58 = !DILocalVariable(name: "__m", scope: !52, file: !1, line: 146, type: !3)
!59 = !DILocalVariable(name: "__d1", scope: !60, file: !1, line: 165, type: !3)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 165, column: 4)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 163, column: 23)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 163, column: 3)
!63 = distinct !DILexicalBlock(scope: !36, file: !1, line: 163, column: 3)
!64 = !DILocalVariable(name: "__d0", scope: !60, file: !1, line: 165, type: !3)
!65 = !DILocalVariable(name: "__q1", scope: !60, file: !1, line: 165, type: !3)
!66 = !DILocalVariable(name: "__q0", scope: !60, file: !1, line: 165, type: !3)
!67 = !DILocalVariable(name: "__r1", scope: !60, file: !1, line: 165, type: !3)
!68 = !DILocalVariable(name: "__r0", scope: !60, file: !1, line: 165, type: !3)
!69 = !DILocalVariable(name: "__m", scope: !60, file: !1, line: 165, type: !3)
!70 = !DILocation(line: 29, column: 25, scope: !17)
!71 = !DILocation(line: 29, column: 50, scope: !17)
!72 = !DILocation(line: 30, column: 15, scope: !17)
!73 = !DILocation(line: 32, column: 2, scope: !17)
!74 = !DILocation(line: 32, column: 13, scope: !17)
!75 = !DILocation(line: 33, column: 2, scope: !17)
!76 = !DILocation(line: 33, column: 13, scope: !17)
!77 = !DILocation(line: 33, column: 17, scope: !17)
!78 = !DILocation(line: 33, column: 21, scope: !17)
!79 = !DILocation(line: 34, column: 2, scope: !17)
!80 = !DILocation(line: 34, column: 13, scope: !17)
!81 = !DILocation(line: 37, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !17, file: !1, line: 37, column: 6)
!83 = !DILocation(line: 37, column: 6, scope: !17)
!84 = !DILocation(line: 38, column: 3, scope: !82)
!85 = !DILocation(line: 123, column: 4, scope: !34)
!86 = !DILocation(line: 123, column: 8, scope: !34)
!87 = !DILocation(line: 125, column: 46, scope: !34)
!88 = !DILocation(line: 125, column: 26, scope: !34)
!89 = !DILocation(line: 125, column: 24, scope: !34)
!90 = !DILocation(line: 126, column: 8, scope: !44)
!91 = !DILocation(line: 126, column: 8, scope: !34)
!92 = !DILocation(line: 127, column: 22, scope: !43)
!93 = !DILocation(line: 127, column: 18, scope: !43)
!94 = !DILocation(line: 129, column: 10, scope: !43)
!95 = !DILocation(line: 129, column: 23, scope: !43)
!96 = !DILocation(line: 129, column: 37, scope: !43)
!97 = !DILocation(line: 129, column: 8, scope: !43)
!98 = !DILocation(line: 130, column: 9, scope: !43)
!99 = !DILocation(line: 130, column: 36, scope: !43)
!100 = !DILocation(line: 130, column: 34, scope: !43)
!101 = !DILocation(line: 130, column: 12, scope: !43)
!102 = !DILocation(line: 130, column: 7, scope: !43)
!103 = !DILocation(line: 138, column: 14, scope: !42)
!104 = !DILocation(line: 138, column: 28, scope: !42)
!105 = !DILocation(line: 138, column: 12, scope: !42)
!106 = !DILocation(line: 138, column: 10, scope: !42)
!107 = !DILocation(line: 138, column: 33, scope: !41)
!108 = !DILocation(line: 138, column: 35, scope: !41)
!109 = !DILocation(line: 138, column: 5, scope: !42)
!110 = !DILocation(line: 139, column: 11, scope: !40)
!111 = !DILocation(line: 139, column: 24, scope: !40)
!112 = !DILocation(line: 139, column: 9, scope: !40)
!113 = !DILocation(line: 140, column: 6, scope: !40)
!114 = !DILocation(line: 140, column: 6, scope: !39)
!115 = !DILocation(line: 140, column: 6, scope: !116)
!116 = distinct !DILexicalBlock(scope: !39, file: !1, line: 140, column: 6)
!117 = !DILocation(line: 140, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !1, line: 140, column: 6)
!119 = !DILocation(line: 140, column: 6, scope: !120)
!120 = distinct !DILexicalBlock(scope: !118, file: !1, line: 140, column: 6)
!121 = !DILocation(line: 140, column: 6, scope: !122)
!122 = distinct !DILexicalBlock(scope: !120, file: !1, line: 140, column: 6)
!123 = !DILocation(line: 140, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !39, file: !1, line: 140, column: 6)
!125 = !DILocation(line: 140, column: 6, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !1, line: 140, column: 6)
!127 = !DILocation(line: 140, column: 6, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !1, line: 140, column: 6)
!129 = !DILocation(line: 140, column: 6, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !1, line: 140, column: 6)
!131 = !DILocation(line: 144, column: 11, scope: !40)
!132 = !DILocation(line: 144, column: 9, scope: !40)
!133 = !DILocation(line: 145, column: 5, scope: !40)
!134 = !DILocation(line: 138, column: 42, scope: !41)
!135 = !DILocation(line: 138, column: 5, scope: !41)
!136 = distinct !{!136, !109, !137, !138, !139}
!137 = !DILocation(line: 145, column: 5, scope: !42)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !DILocation(line: 146, column: 5, scope: !43)
!141 = !DILocation(line: 146, column: 5, scope: !52)
!142 = !DILocation(line: 146, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !52, file: !1, line: 146, column: 5)
!144 = !DILocation(line: 146, column: 5, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !1, line: 146, column: 5)
!146 = !DILocation(line: 146, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !1, line: 146, column: 5)
!148 = !DILocation(line: 146, column: 5, scope: !149)
!149 = distinct !DILexicalBlock(scope: !147, file: !1, line: 146, column: 5)
!150 = !DILocation(line: 146, column: 5, scope: !151)
!151 = distinct !DILexicalBlock(scope: !52, file: !1, line: 146, column: 5)
!152 = !DILocation(line: 146, column: 5, scope: !153)
!153 = distinct !DILexicalBlock(scope: !151, file: !1, line: 146, column: 5)
!154 = !DILocation(line: 146, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !153, file: !1, line: 146, column: 5)
!156 = !DILocation(line: 146, column: 5, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !1, line: 146, column: 5)
!158 = !DILocation(line: 149, column: 12, scope: !43)
!159 = !DILocation(line: 149, column: 17, scope: !43)
!160 = !DILocation(line: 149, column: 14, scope: !43)
!161 = !DILocation(line: 149, column: 5, scope: !43)
!162 = !DILocation(line: 151, column: 3, scope: !35)
!163 = !DILocation(line: 155, column: 7, scope: !36)
!164 = !DILocation(line: 155, column: 21, scope: !36)
!165 = !DILocation(line: 155, column: 5, scope: !36)
!166 = !DILocation(line: 156, column: 7, scope: !36)
!167 = !DILocation(line: 156, column: 20, scope: !36)
!168 = !DILocation(line: 156, column: 5, scope: !36)
!169 = !DILocation(line: 158, column: 7, scope: !170)
!170 = distinct !DILexicalBlock(scope: !36, file: !1, line: 158, column: 7)
!171 = !DILocation(line: 158, column: 12, scope: !170)
!172 = !DILocation(line: 158, column: 9, scope: !170)
!173 = !DILocation(line: 158, column: 7, scope: !36)
!174 = !DILocation(line: 159, column: 6, scope: !170)
!175 = !DILocation(line: 159, column: 4, scope: !170)
!176 = !DILocation(line: 161, column: 5, scope: !170)
!177 = !DILocation(line: 163, column: 3, scope: !36)
!178 = !DILocation(line: 163, column: 10, scope: !62)
!179 = !DILocation(line: 163, column: 12, scope: !62)
!180 = !DILocation(line: 163, column: 3, scope: !63)
!181 = !DILocation(line: 164, column: 9, scope: !61)
!182 = !DILocation(line: 164, column: 22, scope: !61)
!183 = !DILocation(line: 164, column: 7, scope: !61)
!184 = !DILocation(line: 165, column: 4, scope: !61)
!185 = !DILocation(line: 165, column: 4, scope: !60)
!186 = !DILocation(line: 165, column: 4, scope: !187)
!187 = distinct !DILexicalBlock(scope: !60, file: !1, line: 165, column: 4)
!188 = !DILocation(line: 165, column: 4, scope: !189)
!189 = distinct !DILexicalBlock(scope: !187, file: !1, line: 165, column: 4)
!190 = !DILocation(line: 165, column: 4, scope: !191)
!191 = distinct !DILexicalBlock(scope: !189, file: !1, line: 165, column: 4)
!192 = !DILocation(line: 165, column: 4, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !1, line: 165, column: 4)
!194 = !DILocation(line: 165, column: 4, scope: !195)
!195 = distinct !DILexicalBlock(scope: !60, file: !1, line: 165, column: 4)
!196 = !DILocation(line: 165, column: 4, scope: !197)
!197 = distinct !DILexicalBlock(scope: !195, file: !1, line: 165, column: 4)
!198 = !DILocation(line: 165, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !197, file: !1, line: 165, column: 4)
!200 = !DILocation(line: 165, column: 4, scope: !201)
!201 = distinct !DILexicalBlock(scope: !199, file: !1, line: 165, column: 4)
!202 = !DILocation(line: 166, column: 3, scope: !61)
!203 = !DILocation(line: 163, column: 19, scope: !62)
!204 = !DILocation(line: 163, column: 3, scope: !62)
!205 = distinct !{!205, !180, !206, !138, !139}
!206 = !DILocation(line: 166, column: 3, scope: !63)
!207 = !DILocation(line: 167, column: 10, scope: !36)
!208 = !DILocation(line: 167, column: 3, scope: !36)
!209 = !DILocation(line: 169, column: 1, scope: !17)
!210 = distinct !DISubprogram(name: "count_leading_zeros", scope: !211, file: !211, line: 23, type: !212, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!211 = !DIFile(filename: "./include/linux/count_zeros.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31ae7e2ac9cfc331b9e745b8587e0cf8")
!212 = !DISubroutineType(types: !213)
!213 = !{!23, !7}
!214 = !{!215}
!215 = !DILocalVariable(name: "x", arg: 1, scope: !210, file: !211, line: 23, type: !7)
!216 = !DILocation(line: 23, column: 53, scope: !210)
!217 = !DILocation(line: 28, column: 32, scope: !218)
!218 = distinct !DILexicalBlock(scope: !210, file: !211, line: 25, column: 6)
!219 = !DILocation(line: 28, column: 26, scope: !218)
!220 = !DILocation(line: 28, column: 24, scope: !218)
!221 = !DILocation(line: 28, column: 3, scope: !218)
!222 = distinct !DISubprogram(name: "mpihelp_divrem", scope: !1, file: !1, line: 189, type: !223, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{!5, !20, !22, !20, !22, !20, !22}
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !236, !237, !238, !242, !243, !244, !245, !246, !247, !248, !252, !253, !254, !255, !256, !257, !258, !260, !261, !262, !263, !264, !265, !269, !273, !274, !280, !283, !284, !285, !286, !287, !288, !289, !291, !292, !293, !294, !297, !298, !299, !300, !301, !302, !303, !307, !309, !311, !312, !313, !314, !318, !319, !320, !321, !325, !328, !330, !331, !332, !333, !334, !335, !336, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!226 = !DILocalVariable(name: "qp", arg: 1, scope: !222, file: !1, line: 189, type: !20)
!227 = !DILocalVariable(name: "qextra_limbs", arg: 2, scope: !222, file: !1, line: 189, type: !22)
!228 = !DILocalVariable(name: "np", arg: 3, scope: !222, file: !1, line: 190, type: !20)
!229 = !DILocalVariable(name: "nsize", arg: 4, scope: !222, file: !1, line: 190, type: !22)
!230 = !DILocalVariable(name: "dp", arg: 5, scope: !222, file: !1, line: 190, type: !20)
!231 = !DILocalVariable(name: "dsize", arg: 6, scope: !222, file: !1, line: 190, type: !22)
!232 = !DILocalVariable(name: "most_significant_q_limb", scope: !222, file: !1, line: 192, type: !5)
!233 = !DILocalVariable(name: "i", scope: !234, file: !1, line: 206, type: !22)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 205, column: 3)
!235 = distinct !DILexicalBlock(scope: !222, file: !1, line: 194, column: 17)
!236 = !DILocalVariable(name: "n1", scope: !234, file: !1, line: 207, type: !5)
!237 = !DILocalVariable(name: "d", scope: !234, file: !1, line: 208, type: !5)
!238 = !DILocalVariable(name: "__d1", scope: !239, file: !1, line: 220, type: !3)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 220, column: 5)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 219, column: 4)
!241 = distinct !DILexicalBlock(scope: !234, file: !1, line: 219, column: 4)
!242 = !DILocalVariable(name: "__d0", scope: !239, file: !1, line: 220, type: !3)
!243 = !DILocalVariable(name: "__q1", scope: !239, file: !1, line: 220, type: !3)
!244 = !DILocalVariable(name: "__q0", scope: !239, file: !1, line: 220, type: !3)
!245 = !DILocalVariable(name: "__r1", scope: !239, file: !1, line: 220, type: !3)
!246 = !DILocalVariable(name: "__r0", scope: !239, file: !1, line: 220, type: !3)
!247 = !DILocalVariable(name: "__m", scope: !239, file: !1, line: 220, type: !3)
!248 = !DILocalVariable(name: "__d1", scope: !249, file: !1, line: 224, type: !3)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 224, column: 5)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 223, column: 4)
!251 = distinct !DILexicalBlock(scope: !234, file: !1, line: 223, column: 4)
!252 = !DILocalVariable(name: "__d0", scope: !249, file: !1, line: 224, type: !3)
!253 = !DILocalVariable(name: "__q1", scope: !249, file: !1, line: 224, type: !3)
!254 = !DILocalVariable(name: "__q0", scope: !249, file: !1, line: 224, type: !3)
!255 = !DILocalVariable(name: "__r1", scope: !249, file: !1, line: 224, type: !3)
!256 = !DILocalVariable(name: "__r0", scope: !249, file: !1, line: 224, type: !3)
!257 = !DILocalVariable(name: "__m", scope: !249, file: !1, line: 224, type: !3)
!258 = !DILocalVariable(name: "i", scope: !259, file: !1, line: 232, type: !22)
!259 = distinct !DILexicalBlock(scope: !235, file: !1, line: 231, column: 3)
!260 = !DILocalVariable(name: "n1", scope: !259, file: !1, line: 233, type: !5)
!261 = !DILocalVariable(name: "n0", scope: !259, file: !1, line: 233, type: !5)
!262 = !DILocalVariable(name: "n2", scope: !259, file: !1, line: 233, type: !5)
!263 = !DILocalVariable(name: "d1", scope: !259, file: !1, line: 234, type: !5)
!264 = !DILocalVariable(name: "d0", scope: !259, file: !1, line: 234, type: !5)
!265 = !DILocalVariable(name: "__x", scope: !266, file: !1, line: 243, type: !3)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 243, column: 5)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 242, column: 43)
!268 = distinct !DILexicalBlock(scope: !259, file: !1, line: 242, column: 8)
!269 = !DILocalVariable(name: "q", scope: !270, file: !1, line: 248, type: !5)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 247, column: 56)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 247, column: 4)
!272 = distinct !DILexicalBlock(scope: !259, file: !1, line: 247, column: 4)
!273 = !DILocalVariable(name: "r", scope: !270, file: !1, line: 249, type: !5)
!274 = !DILocalVariable(name: "__x", scope: !275, file: !1, line: 264, type: !3)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 264, column: 7)
!276 = distinct !DILexicalBlock(scope: !277, file: !1, line: 263, column: 18)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 263, column: 10)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 256, column: 19)
!279 = distinct !DILexicalBlock(scope: !270, file: !1, line: 256, column: 9)
!280 = !DILocalVariable(name: "__d1", scope: !281, file: !1, line: 272, type: !3)
!281 = distinct !DILexicalBlock(scope: !282, file: !1, line: 272, column: 6)
!282 = distinct !DILexicalBlock(scope: !279, file: !1, line: 271, column: 12)
!283 = !DILocalVariable(name: "__d0", scope: !281, file: !1, line: 272, type: !3)
!284 = !DILocalVariable(name: "__q1", scope: !281, file: !1, line: 272, type: !3)
!285 = !DILocalVariable(name: "__q0", scope: !281, file: !1, line: 272, type: !3)
!286 = !DILocalVariable(name: "__r1", scope: !281, file: !1, line: 272, type: !3)
!287 = !DILocalVariable(name: "__r0", scope: !281, file: !1, line: 272, type: !3)
!288 = !DILocalVariable(name: "__m", scope: !281, file: !1, line: 272, type: !3)
!289 = !DILocalVariable(name: "__x0", scope: !290, file: !1, line: 273, type: !3)
!290 = distinct !DILexicalBlock(scope: !282, file: !1, line: 273, column: 6)
!291 = !DILocalVariable(name: "__x1", scope: !290, file: !1, line: 273, type: !3)
!292 = !DILocalVariable(name: "__x2", scope: !290, file: !1, line: 273, type: !3)
!293 = !DILocalVariable(name: "__x3", scope: !290, file: !1, line: 273, type: !3)
!294 = !DILocalVariable(name: "__ul", scope: !290, file: !1, line: 273, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "UHWtype", file: !4, line: 215, baseType: !296)
!296 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!297 = !DILocalVariable(name: "__vl", scope: !290, file: !1, line: 273, type: !295)
!298 = !DILocalVariable(name: "__uh", scope: !290, file: !1, line: 273, type: !295)
!299 = !DILocalVariable(name: "__vh", scope: !290, file: !1, line: 273, type: !295)
!300 = !DILocalVariable(name: "__u", scope: !290, file: !1, line: 273, type: !3)
!301 = !DILocalVariable(name: "__v", scope: !290, file: !1, line: 273, type: !3)
!302 = !DILabel(scope: !270, name: "q_test", file: !1, line: 277)
!303 = !DILocalVariable(name: "__x", scope: !304, file: !1, line: 281, type: !3)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 281, column: 6)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 278, column: 41)
!306 = distinct !DILexicalBlock(scope: !270, file: !1, line: 278, column: 9)
!307 = !DILocalVariable(name: "__x", scope: !308, file: !1, line: 288, type: !3)
!308 = distinct !DILexicalBlock(scope: !270, file: !1, line: 288, column: 5)
!309 = !DILocalVariable(name: "i", scope: !310, file: !1, line: 297, type: !22)
!310 = distinct !DILexicalBlock(scope: !235, file: !1, line: 296, column: 3)
!311 = !DILocalVariable(name: "dX", scope: !310, file: !1, line: 298, type: !5)
!312 = !DILocalVariable(name: "d1", scope: !310, file: !1, line: 298, type: !5)
!313 = !DILocalVariable(name: "n0", scope: !310, file: !1, line: 298, type: !5)
!314 = !DILocalVariable(name: "q", scope: !315, file: !1, line: 315, type: !5)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 314, column: 60)
!316 = distinct !DILexicalBlock(scope: !317, file: !1, line: 314, column: 4)
!317 = distinct !DILexicalBlock(scope: !310, file: !1, line: 314, column: 4)
!318 = !DILocalVariable(name: "n1", scope: !315, file: !1, line: 316, type: !5)
!319 = !DILocalVariable(name: "n2", scope: !315, file: !1, line: 316, type: !5)
!320 = !DILocalVariable(name: "cy_limb", scope: !315, file: !1, line: 317, type: !5)
!321 = !DILocalVariable(name: "_i", scope: !322, file: !1, line: 324, type: !22)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 324, column: 6)
!323 = distinct !DILexicalBlock(scope: !324, file: !1, line: 322, column: 12)
!324 = distinct !DILexicalBlock(scope: !315, file: !1, line: 319, column: 9)
!325 = !DILocalVariable(name: "r", scope: !326, file: !1, line: 333, type: !5)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 332, column: 12)
!327 = distinct !DILexicalBlock(scope: !315, file: !1, line: 328, column: 9)
!328 = !DILocalVariable(name: "__d1", scope: !329, file: !1, line: 335, type: !3)
!329 = distinct !DILexicalBlock(scope: !326, file: !1, line: 335, column: 6)
!330 = !DILocalVariable(name: "__d0", scope: !329, file: !1, line: 335, type: !3)
!331 = !DILocalVariable(name: "__q1", scope: !329, file: !1, line: 335, type: !3)
!332 = !DILocalVariable(name: "__q0", scope: !329, file: !1, line: 335, type: !3)
!333 = !DILocalVariable(name: "__r1", scope: !329, file: !1, line: 335, type: !3)
!334 = !DILocalVariable(name: "__r0", scope: !329, file: !1, line: 335, type: !3)
!335 = !DILocalVariable(name: "__m", scope: !329, file: !1, line: 335, type: !3)
!336 = !DILocalVariable(name: "__x0", scope: !337, file: !1, line: 336, type: !3)
!337 = distinct !DILexicalBlock(scope: !326, file: !1, line: 336, column: 6)
!338 = !DILocalVariable(name: "__x1", scope: !337, file: !1, line: 336, type: !3)
!339 = !DILocalVariable(name: "__x2", scope: !337, file: !1, line: 336, type: !3)
!340 = !DILocalVariable(name: "__x3", scope: !337, file: !1, line: 336, type: !3)
!341 = !DILocalVariable(name: "__ul", scope: !337, file: !1, line: 336, type: !295)
!342 = !DILocalVariable(name: "__vl", scope: !337, file: !1, line: 336, type: !295)
!343 = !DILocalVariable(name: "__uh", scope: !337, file: !1, line: 336, type: !295)
!344 = !DILocalVariable(name: "__vh", scope: !337, file: !1, line: 336, type: !295)
!345 = !DILocalVariable(name: "__u", scope: !337, file: !1, line: 336, type: !3)
!346 = !DILocalVariable(name: "__v", scope: !337, file: !1, line: 336, type: !3)
!347 = !DILocation(line: 189, column: 26, scope: !222)
!348 = !DILocation(line: 189, column: 41, scope: !222)
!349 = !DILocation(line: 190, column: 19, scope: !222)
!350 = !DILocation(line: 190, column: 34, scope: !222)
!351 = !DILocation(line: 190, column: 51, scope: !222)
!352 = !DILocation(line: 190, column: 66, scope: !222)
!353 = !DILocation(line: 192, column: 2, scope: !222)
!354 = !DILocation(line: 192, column: 13, scope: !222)
!355 = !DILocation(line: 194, column: 10, scope: !222)
!356 = !DILocation(line: 194, column: 2, scope: !222)
!357 = !DILocation(line: 202, column: 14, scope: !235)
!358 = !DILocation(line: 202, column: 12, scope: !235)
!359 = !DILocation(line: 202, column: 10, scope: !235)
!360 = !DILocation(line: 202, column: 3, scope: !235)
!361 = !DILocation(line: 206, column: 4, scope: !234)
!362 = !DILocation(line: 206, column: 15, scope: !234)
!363 = !DILocation(line: 207, column: 4, scope: !234)
!364 = !DILocation(line: 207, column: 15, scope: !234)
!365 = !DILocation(line: 208, column: 4, scope: !234)
!366 = !DILocation(line: 208, column: 15, scope: !234)
!367 = !DILocation(line: 210, column: 8, scope: !234)
!368 = !DILocation(line: 210, column: 6, scope: !234)
!369 = !DILocation(line: 211, column: 9, scope: !234)
!370 = !DILocation(line: 211, column: 12, scope: !234)
!371 = !DILocation(line: 211, column: 18, scope: !234)
!372 = !DILocation(line: 211, column: 7, scope: !234)
!373 = !DILocation(line: 213, column: 8, scope: !374)
!374 = distinct !DILexicalBlock(scope: !234, file: !1, line: 213, column: 8)
!375 = !DILocation(line: 213, column: 14, scope: !374)
!376 = !DILocation(line: 213, column: 11, scope: !374)
!377 = !DILocation(line: 213, column: 8, scope: !234)
!378 = !DILocation(line: 214, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !1, line: 213, column: 17)
!380 = !DILocation(line: 214, column: 8, scope: !379)
!381 = !DILocation(line: 215, column: 29, scope: !379)
!382 = !DILocation(line: 216, column: 4, scope: !379)
!383 = !DILocation(line: 218, column: 10, scope: !234)
!384 = !DILocation(line: 218, column: 7, scope: !234)
!385 = !DILocation(line: 219, column: 13, scope: !241)
!386 = !DILocation(line: 219, column: 19, scope: !241)
!387 = !DILocation(line: 219, column: 11, scope: !241)
!388 = !DILocation(line: 219, column: 9, scope: !241)
!389 = !DILocation(line: 219, column: 24, scope: !240)
!390 = !DILocation(line: 219, column: 26, scope: !240)
!391 = !DILocation(line: 219, column: 4, scope: !241)
!392 = !DILocation(line: 220, column: 5, scope: !240)
!393 = !DILocation(line: 220, column: 5, scope: !239)
!394 = !DILocation(line: 220, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !239, file: !1, line: 220, column: 5)
!396 = !DILocation(line: 220, column: 5, scope: !397)
!397 = distinct !DILexicalBlock(scope: !395, file: !1, line: 220, column: 5)
!398 = !DILocation(line: 220, column: 5, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !1, line: 220, column: 5)
!400 = !DILocation(line: 220, column: 5, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !1, line: 220, column: 5)
!402 = !DILocation(line: 220, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !239, file: !1, line: 220, column: 5)
!404 = !DILocation(line: 220, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !403, file: !1, line: 220, column: 5)
!406 = !DILocation(line: 220, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !405, file: !1, line: 220, column: 5)
!408 = !DILocation(line: 220, column: 5, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !1, line: 220, column: 5)
!410 = !DILocation(line: 219, column: 33, scope: !240)
!411 = !DILocation(line: 219, column: 4, scope: !240)
!412 = distinct !{!412, !391, !413, !138, !139}
!413 = !DILocation(line: 220, column: 5, scope: !241)
!414 = !DILocation(line: 221, column: 10, scope: !234)
!415 = !DILocation(line: 221, column: 7, scope: !234)
!416 = !DILocation(line: 223, column: 13, scope: !251)
!417 = !DILocation(line: 223, column: 26, scope: !251)
!418 = !DILocation(line: 223, column: 11, scope: !251)
!419 = !DILocation(line: 223, column: 9, scope: !251)
!420 = !DILocation(line: 223, column: 31, scope: !250)
!421 = !DILocation(line: 223, column: 33, scope: !250)
!422 = !DILocation(line: 223, column: 4, scope: !251)
!423 = !DILocation(line: 224, column: 5, scope: !250)
!424 = !DILocation(line: 224, column: 5, scope: !249)
!425 = !DILocation(line: 224, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !249, file: !1, line: 224, column: 5)
!427 = !DILocation(line: 224, column: 5, scope: !428)
!428 = distinct !DILexicalBlock(scope: !426, file: !1, line: 224, column: 5)
!429 = !DILocation(line: 224, column: 5, scope: !430)
!430 = distinct !DILexicalBlock(scope: !428, file: !1, line: 224, column: 5)
!431 = !DILocation(line: 224, column: 5, scope: !432)
!432 = distinct !DILexicalBlock(scope: !430, file: !1, line: 224, column: 5)
!433 = !DILocation(line: 224, column: 5, scope: !434)
!434 = distinct !DILexicalBlock(scope: !249, file: !1, line: 224, column: 5)
!435 = !DILocation(line: 224, column: 5, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !1, line: 224, column: 5)
!437 = !DILocation(line: 224, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !1, line: 224, column: 5)
!439 = !DILocation(line: 224, column: 5, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !1, line: 224, column: 5)
!441 = !DILocation(line: 223, column: 40, scope: !250)
!442 = !DILocation(line: 223, column: 4, scope: !250)
!443 = distinct !{!443, !422, !444, !138, !139}
!444 = !DILocation(line: 224, column: 5, scope: !251)
!445 = !DILocation(line: 226, column: 12, scope: !234)
!446 = !DILocation(line: 226, column: 4, scope: !234)
!447 = !DILocation(line: 226, column: 10, scope: !234)
!448 = !DILocation(line: 227, column: 3, scope: !235)
!449 = !DILocation(line: 228, column: 3, scope: !235)
!450 = !DILocation(line: 232, column: 4, scope: !259)
!451 = !DILocation(line: 232, column: 15, scope: !259)
!452 = !DILocation(line: 233, column: 4, scope: !259)
!453 = !DILocation(line: 233, column: 15, scope: !259)
!454 = !DILocation(line: 233, column: 19, scope: !259)
!455 = !DILocation(line: 233, column: 23, scope: !259)
!456 = !DILocation(line: 234, column: 4, scope: !259)
!457 = !DILocation(line: 234, column: 15, scope: !259)
!458 = !DILocation(line: 234, column: 19, scope: !259)
!459 = !DILocation(line: 236, column: 10, scope: !259)
!460 = !DILocation(line: 236, column: 16, scope: !259)
!461 = !DILocation(line: 236, column: 7, scope: !259)
!462 = !DILocation(line: 237, column: 9, scope: !259)
!463 = !DILocation(line: 237, column: 7, scope: !259)
!464 = !DILocation(line: 238, column: 9, scope: !259)
!465 = !DILocation(line: 238, column: 7, scope: !259)
!466 = !DILocation(line: 239, column: 9, scope: !259)
!467 = !DILocation(line: 239, column: 7, scope: !259)
!468 = !DILocation(line: 240, column: 9, scope: !259)
!469 = !DILocation(line: 240, column: 7, scope: !259)
!470 = !DILocation(line: 242, column: 8, scope: !268)
!471 = !DILocation(line: 242, column: 14, scope: !268)
!472 = !DILocation(line: 242, column: 11, scope: !268)
!473 = !DILocation(line: 242, column: 17, scope: !268)
!474 = !DILocation(line: 242, column: 21, scope: !268)
!475 = !DILocation(line: 242, column: 26, scope: !268)
!476 = !DILocation(line: 242, column: 24, scope: !268)
!477 = !DILocation(line: 242, column: 29, scope: !268)
!478 = !DILocation(line: 242, column: 32, scope: !268)
!479 = !DILocation(line: 242, column: 38, scope: !268)
!480 = !DILocation(line: 242, column: 35, scope: !268)
!481 = !DILocation(line: 242, column: 8, scope: !259)
!482 = !DILocation(line: 243, column: 5, scope: !267)
!483 = !DILocation(line: 243, column: 5, scope: !266)
!484 = !DILocation(line: 244, column: 29, scope: !267)
!485 = !DILocation(line: 245, column: 4, scope: !267)
!486 = !DILocation(line: 247, column: 13, scope: !272)
!487 = !DILocation(line: 247, column: 28, scope: !272)
!488 = !DILocation(line: 247, column: 26, scope: !272)
!489 = !DILocation(line: 247, column: 34, scope: !272)
!490 = !DILocation(line: 247, column: 38, scope: !272)
!491 = !DILocation(line: 247, column: 11, scope: !272)
!492 = !DILocation(line: 247, column: 9, scope: !272)
!493 = !DILocation(line: 247, column: 43, scope: !271)
!494 = !DILocation(line: 247, column: 45, scope: !271)
!495 = !DILocation(line: 247, column: 4, scope: !272)
!496 = !DILocation(line: 248, column: 5, scope: !270)
!497 = !DILocation(line: 248, column: 16, scope: !270)
!498 = !DILocation(line: 249, column: 5, scope: !270)
!499 = !DILocation(line: 249, column: 16, scope: !270)
!500 = !DILocation(line: 251, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !270, file: !1, line: 251, column: 9)
!502 = !DILocation(line: 251, column: 14, scope: !501)
!503 = !DILocation(line: 251, column: 11, scope: !501)
!504 = !DILocation(line: 251, column: 9, scope: !270)
!505 = !DILocation(line: 252, column: 8, scope: !501)
!506 = !DILocation(line: 252, column: 6, scope: !501)
!507 = !DILocation(line: 254, column: 6, scope: !501)
!508 = !DILocation(line: 254, column: 12, scope: !501)
!509 = !DILocation(line: 256, column: 9, scope: !279)
!510 = !DILocation(line: 256, column: 15, scope: !279)
!511 = !DILocation(line: 256, column: 12, scope: !279)
!512 = !DILocation(line: 256, column: 9, scope: !270)
!513 = !DILocation(line: 260, column: 8, scope: !278)
!514 = !DILocation(line: 262, column: 10, scope: !278)
!515 = !DILocation(line: 262, column: 15, scope: !278)
!516 = !DILocation(line: 262, column: 13, scope: !278)
!517 = !DILocation(line: 262, column: 8, scope: !278)
!518 = !DILocation(line: 263, column: 10, scope: !277)
!519 = !DILocation(line: 263, column: 14, scope: !277)
!520 = !DILocation(line: 263, column: 12, scope: !277)
!521 = !DILocation(line: 263, column: 10, scope: !278)
!522 = !DILocation(line: 264, column: 7, scope: !276)
!523 = !DILocation(line: 264, column: 7, scope: !275)
!524 = !DILocation(line: 266, column: 15, scope: !276)
!525 = !DILocation(line: 266, column: 7, scope: !276)
!526 = !DILocation(line: 266, column: 10, scope: !276)
!527 = !DILocation(line: 266, column: 13, scope: !276)
!528 = !DILocation(line: 267, column: 7, scope: !276)
!529 = !DILocation(line: 269, column: 11, scope: !278)
!530 = !DILocation(line: 269, column: 17, scope: !278)
!531 = !DILocation(line: 269, column: 20, scope: !278)
!532 = !DILocation(line: 269, column: 16, scope: !278)
!533 = !DILocation(line: 269, column: 14, scope: !278)
!534 = !DILocation(line: 269, column: 9, scope: !278)
!535 = !DILocation(line: 270, column: 12, scope: !278)
!536 = !DILocation(line: 270, column: 11, scope: !278)
!537 = !DILocation(line: 270, column: 9, scope: !278)
!538 = !DILocation(line: 271, column: 5, scope: !278)
!539 = !DILocation(line: 272, column: 6, scope: !282)
!540 = !DILocation(line: 272, column: 6, scope: !281)
!541 = !DILocation(line: 272, column: 6, scope: !542)
!542 = distinct !DILexicalBlock(scope: !281, file: !1, line: 272, column: 6)
!543 = !DILocation(line: 272, column: 6, scope: !544)
!544 = distinct !DILexicalBlock(scope: !542, file: !1, line: 272, column: 6)
!545 = !DILocation(line: 272, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !544, file: !1, line: 272, column: 6)
!547 = !DILocation(line: 272, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !546, file: !1, line: 272, column: 6)
!549 = !DILocation(line: 272, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !281, file: !1, line: 272, column: 6)
!551 = !DILocation(line: 272, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !550, file: !1, line: 272, column: 6)
!553 = !DILocation(line: 272, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !552, file: !1, line: 272, column: 6)
!555 = !DILocation(line: 272, column: 6, scope: !556)
!556 = distinct !DILexicalBlock(scope: !554, file: !1, line: 272, column: 6)
!557 = !DILocation(line: 273, column: 6, scope: !282)
!558 = !DILocation(line: 273, column: 6, scope: !290)
!559 = !DILocation(line: 273, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !290, file: !1, line: 273, column: 6)
!561 = !DILocation(line: 276, column: 10, scope: !270)
!562 = !DILocation(line: 276, column: 8, scope: !270)
!563 = !DILocation(line: 276, column: 5, scope: !270)
!564 = !DILocation(line: 277, column: 1, scope: !270)
!565 = !DILocation(line: 278, column: 9, scope: !306)
!566 = !DILocation(line: 278, column: 14, scope: !306)
!567 = !DILocation(line: 278, column: 12, scope: !306)
!568 = !DILocation(line: 278, column: 16, scope: !306)
!569 = !DILocation(line: 278, column: 20, scope: !306)
!570 = !DILocation(line: 278, column: 26, scope: !306)
!571 = !DILocation(line: 278, column: 23, scope: !306)
!572 = !DILocation(line: 278, column: 28, scope: !306)
!573 = !DILocation(line: 278, column: 31, scope: !306)
!574 = !DILocation(line: 278, column: 36, scope: !306)
!575 = !DILocation(line: 278, column: 34, scope: !306)
!576 = !DILocation(line: 278, column: 9, scope: !270)
!577 = !DILocation(line: 280, column: 7, scope: !305)
!578 = !DILocation(line: 281, column: 6, scope: !305)
!579 = !DILocation(line: 281, column: 6, scope: !304)
!580 = !DILocation(line: 282, column: 11, scope: !305)
!581 = !DILocation(line: 282, column: 8, scope: !305)
!582 = !DILocation(line: 283, column: 10, scope: !583)
!583 = distinct !DILexicalBlock(scope: !305, file: !1, line: 283, column: 10)
!584 = !DILocation(line: 283, column: 15, scope: !583)
!585 = !DILocation(line: 283, column: 12, scope: !583)
!586 = !DILocation(line: 283, column: 10, scope: !305)
!587 = !DILocation(line: 284, column: 7, scope: !583)
!588 = !DILocation(line: 285, column: 5, scope: !305)
!589 = !DILocation(line: 287, column: 13, scope: !270)
!590 = !DILocation(line: 287, column: 5, scope: !270)
!591 = !DILocation(line: 287, column: 8, scope: !270)
!592 = !DILocation(line: 287, column: 11, scope: !270)
!593 = !DILocation(line: 288, column: 5, scope: !270)
!594 = !DILocation(line: 288, column: 5, scope: !308)
!595 = !DILocation(line: 289, column: 4, scope: !271)
!596 = !DILocation(line: 289, column: 4, scope: !270)
!597 = !DILocation(line: 247, column: 52, scope: !271)
!598 = !DILocation(line: 247, column: 4, scope: !271)
!599 = distinct !{!599, !495, !600, !138, !139}
!600 = !DILocation(line: 289, column: 4, scope: !272)
!601 = !DILocation(line: 290, column: 12, scope: !259)
!602 = !DILocation(line: 290, column: 4, scope: !259)
!603 = !DILocation(line: 290, column: 10, scope: !259)
!604 = !DILocation(line: 291, column: 12, scope: !259)
!605 = !DILocation(line: 291, column: 4, scope: !259)
!606 = !DILocation(line: 291, column: 10, scope: !259)
!607 = !DILocation(line: 292, column: 3, scope: !235)
!608 = !DILocation(line: 293, column: 3, scope: !235)
!609 = !DILocation(line: 297, column: 4, scope: !310)
!610 = !DILocation(line: 297, column: 15, scope: !310)
!611 = !DILocation(line: 298, column: 4, scope: !310)
!612 = !DILocation(line: 298, column: 15, scope: !310)
!613 = !DILocation(line: 298, column: 19, scope: !310)
!614 = !DILocation(line: 298, column: 23, scope: !310)
!615 = !DILocation(line: 300, column: 10, scope: !310)
!616 = !DILocation(line: 300, column: 18, scope: !310)
!617 = !DILocation(line: 300, column: 16, scope: !310)
!618 = !DILocation(line: 300, column: 7, scope: !310)
!619 = !DILocation(line: 301, column: 9, scope: !310)
!620 = !DILocation(line: 301, column: 12, scope: !310)
!621 = !DILocation(line: 301, column: 18, scope: !310)
!622 = !DILocation(line: 301, column: 7, scope: !310)
!623 = !DILocation(line: 302, column: 9, scope: !310)
!624 = !DILocation(line: 302, column: 12, scope: !310)
!625 = !DILocation(line: 302, column: 18, scope: !310)
!626 = !DILocation(line: 302, column: 7, scope: !310)
!627 = !DILocation(line: 303, column: 9, scope: !310)
!628 = !DILocation(line: 303, column: 12, scope: !310)
!629 = !DILocation(line: 303, column: 18, scope: !310)
!630 = !DILocation(line: 303, column: 7, scope: !310)
!631 = !DILocation(line: 305, column: 8, scope: !632)
!632 = distinct !DILexicalBlock(scope: !310, file: !1, line: 305, column: 8)
!633 = !DILocation(line: 305, column: 14, scope: !632)
!634 = !DILocation(line: 305, column: 11, scope: !632)
!635 = !DILocation(line: 305, column: 8, scope: !310)
!636 = !DILocation(line: 306, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 306, column: 9)
!638 = distinct !DILexicalBlock(scope: !632, file: !1, line: 305, column: 18)
!639 = !DILocation(line: 306, column: 14, scope: !637)
!640 = !DILocation(line: 306, column: 12, scope: !637)
!641 = !DILocation(line: 307, column: 9, scope: !637)
!642 = !DILocation(line: 307, column: 24, scope: !637)
!643 = !DILocation(line: 307, column: 28, scope: !637)
!644 = !DILocation(line: 307, column: 32, scope: !637)
!645 = !DILocation(line: 307, column: 38, scope: !637)
!646 = !DILocation(line: 307, column: 12, scope: !637)
!647 = !DILocation(line: 307, column: 43, scope: !637)
!648 = !DILocation(line: 306, column: 9, scope: !638)
!649 = !DILocation(line: 308, column: 20, scope: !650)
!650 = distinct !DILexicalBlock(scope: !637, file: !1, line: 307, column: 49)
!651 = !DILocation(line: 308, column: 24, scope: !650)
!652 = !DILocation(line: 308, column: 28, scope: !650)
!653 = !DILocation(line: 308, column: 32, scope: !650)
!654 = !DILocation(line: 308, column: 6, scope: !650)
!655 = !DILocation(line: 309, column: 11, scope: !650)
!656 = !DILocation(line: 309, column: 14, scope: !650)
!657 = !DILocation(line: 309, column: 20, scope: !650)
!658 = !DILocation(line: 309, column: 9, scope: !650)
!659 = !DILocation(line: 310, column: 30, scope: !650)
!660 = !DILocation(line: 311, column: 5, scope: !650)
!661 = !DILocation(line: 312, column: 4, scope: !638)
!662 = !DILocation(line: 314, column: 13, scope: !317)
!663 = !DILocation(line: 314, column: 28, scope: !317)
!664 = !DILocation(line: 314, column: 26, scope: !317)
!665 = !DILocation(line: 314, column: 36, scope: !317)
!666 = !DILocation(line: 314, column: 34, scope: !317)
!667 = !DILocation(line: 314, column: 42, scope: !317)
!668 = !DILocation(line: 314, column: 11, scope: !317)
!669 = !DILocation(line: 314, column: 9, scope: !317)
!670 = !DILocation(line: 314, column: 47, scope: !316)
!671 = !DILocation(line: 314, column: 49, scope: !316)
!672 = !DILocation(line: 314, column: 4, scope: !317)
!673 = !DILocation(line: 315, column: 5, scope: !315)
!674 = !DILocation(line: 315, column: 16, scope: !315)
!675 = !DILocation(line: 316, column: 5, scope: !315)
!676 = !DILocation(line: 316, column: 16, scope: !315)
!677 = !DILocation(line: 316, column: 20, scope: !315)
!678 = !DILocation(line: 317, column: 5, scope: !315)
!679 = !DILocation(line: 317, column: 16, scope: !315)
!680 = !DILocation(line: 319, column: 9, scope: !324)
!681 = !DILocation(line: 319, column: 14, scope: !324)
!682 = !DILocation(line: 319, column: 11, scope: !324)
!683 = !DILocation(line: 319, column: 9, scope: !315)
!684 = !DILocation(line: 320, column: 8, scope: !685)
!685 = distinct !DILexicalBlock(scope: !324, file: !1, line: 319, column: 28)
!686 = !DILocation(line: 321, column: 11, scope: !685)
!687 = !DILocation(line: 321, column: 14, scope: !685)
!688 = !DILocation(line: 321, column: 9, scope: !685)
!689 = !DILocation(line: 322, column: 5, scope: !685)
!690 = !DILocation(line: 323, column: 11, scope: !323)
!691 = !DILocation(line: 323, column: 14, scope: !323)
!692 = !DILocation(line: 323, column: 20, scope: !323)
!693 = !DILocation(line: 323, column: 9, scope: !323)
!694 = !DILocation(line: 324, column: 6, scope: !323)
!695 = !DILocation(line: 324, column: 6, scope: !322)
!696 = !DILocation(line: 324, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !322, file: !1, line: 324, column: 6)
!698 = !DILocation(line: 324, column: 6, scope: !699)
!699 = distinct !DILexicalBlock(scope: !697, file: !1, line: 324, column: 6)
!700 = distinct !{!700, !696, !696, !138, !139}
!701 = !DILocation(line: 325, column: 6, scope: !323)
!702 = !DILocation(line: 325, column: 12, scope: !323)
!703 = !DILocation(line: 328, column: 9, scope: !327)
!704 = !DILocation(line: 328, column: 15, scope: !327)
!705 = !DILocation(line: 328, column: 12, scope: !327)
!706 = !DILocation(line: 328, column: 9, scope: !315)
!707 = !DILocation(line: 331, column: 8, scope: !708)
!708 = distinct !DILexicalBlock(scope: !327, file: !1, line: 328, column: 19)
!709 = !DILocation(line: 332, column: 5, scope: !708)
!710 = !DILocation(line: 333, column: 6, scope: !326)
!711 = !DILocation(line: 333, column: 17, scope: !326)
!712 = !DILocation(line: 335, column: 6, scope: !326)
!713 = !DILocation(line: 335, column: 6, scope: !329)
!714 = !DILocation(line: 335, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !329, file: !1, line: 335, column: 6)
!716 = !DILocation(line: 335, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !715, file: !1, line: 335, column: 6)
!718 = !DILocation(line: 335, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !717, file: !1, line: 335, column: 6)
!720 = !DILocation(line: 335, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !719, file: !1, line: 335, column: 6)
!722 = !DILocation(line: 335, column: 6, scope: !723)
!723 = distinct !DILexicalBlock(scope: !329, file: !1, line: 335, column: 6)
!724 = !DILocation(line: 335, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !723, file: !1, line: 335, column: 6)
!726 = !DILocation(line: 335, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !725, file: !1, line: 335, column: 6)
!728 = !DILocation(line: 335, column: 6, scope: !729)
!729 = distinct !DILexicalBlock(scope: !727, file: !1, line: 335, column: 6)
!730 = !DILocation(line: 336, column: 6, scope: !326)
!731 = !DILocation(line: 336, column: 6, scope: !337)
!732 = !DILocation(line: 336, column: 6, scope: !733)
!733 = distinct !DILexicalBlock(scope: !337, file: !1, line: 336, column: 6)
!734 = !DILocation(line: 338, column: 6, scope: !326)
!735 = !DILocation(line: 338, column: 13, scope: !326)
!736 = !DILocation(line: 338, column: 18, scope: !326)
!737 = !DILocation(line: 338, column: 16, scope: !326)
!738 = !DILocation(line: 339, column: 13, scope: !326)
!739 = !DILocation(line: 339, column: 17, scope: !326)
!740 = !DILocation(line: 339, column: 23, scope: !326)
!741 = !DILocation(line: 339, column: 20, scope: !326)
!742 = !DILocation(line: 340, column: 10, scope: !326)
!743 = !DILocation(line: 340, column: 13, scope: !326)
!744 = !DILocation(line: 340, column: 18, scope: !326)
!745 = !DILocation(line: 340, column: 21, scope: !326)
!746 = !DILocation(line: 340, column: 27, scope: !326)
!747 = !DILocation(line: 340, column: 16, scope: !326)
!748 = !DILocation(line: 0, scope: !326)
!749 = !DILocation(line: 341, column: 8, scope: !750)
!750 = distinct !DILexicalBlock(scope: !326, file: !1, line: 340, column: 34)
!751 = !DILocation(line: 342, column: 12, scope: !750)
!752 = !DILocation(line: 342, column: 9, scope: !750)
!753 = !DILocation(line: 343, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !1, line: 343, column: 11)
!755 = !DILocation(line: 343, column: 15, scope: !754)
!756 = !DILocation(line: 343, column: 13, scope: !754)
!757 = !DILocation(line: 343, column: 11, scope: !750)
!758 = !DILocation(line: 344, column: 8, scope: !754)
!759 = !DILocation(line: 345, column: 13, scope: !750)
!760 = !DILocation(line: 345, column: 18, scope: !750)
!761 = !DILocation(line: 345, column: 16, scope: !750)
!762 = !DILocation(line: 345, column: 10, scope: !750)
!763 = !DILocation(line: 346, column: 13, scope: !750)
!764 = !DILocation(line: 346, column: 10, scope: !750)
!765 = distinct !{!765, !734, !766, !138, !139}
!766 = !DILocation(line: 347, column: 6, scope: !326)
!767 = !DILocation(line: 348, column: 5, scope: !327)
!768 = !DILocation(line: 353, column: 32, scope: !315)
!769 = !DILocation(line: 353, column: 36, scope: !315)
!770 = !DILocation(line: 353, column: 40, scope: !315)
!771 = !DILocation(line: 353, column: 47, scope: !315)
!772 = !DILocation(line: 353, column: 15, scope: !315)
!773 = !DILocation(line: 353, column: 13, scope: !315)
!774 = !DILocation(line: 355, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !315, file: !1, line: 355, column: 9)
!776 = !DILocation(line: 355, column: 15, scope: !775)
!777 = !DILocation(line: 355, column: 12, scope: !775)
!778 = !DILocation(line: 355, column: 9, scope: !315)
!779 = !DILocation(line: 356, column: 20, scope: !780)
!780 = distinct !DILexicalBlock(scope: !775, file: !1, line: 355, column: 24)
!781 = !DILocation(line: 356, column: 24, scope: !780)
!782 = !DILocation(line: 356, column: 28, scope: !780)
!783 = !DILocation(line: 356, column: 32, scope: !780)
!784 = !DILocation(line: 356, column: 6, scope: !780)
!785 = !DILocation(line: 357, column: 7, scope: !780)
!786 = !DILocation(line: 358, column: 5, scope: !780)
!787 = !DILocation(line: 360, column: 13, scope: !315)
!788 = !DILocation(line: 360, column: 5, scope: !315)
!789 = !DILocation(line: 360, column: 8, scope: !315)
!790 = !DILocation(line: 360, column: 11, scope: !315)
!791 = !DILocation(line: 361, column: 10, scope: !315)
!792 = !DILocation(line: 361, column: 13, scope: !315)
!793 = !DILocation(line: 361, column: 19, scope: !315)
!794 = !DILocation(line: 361, column: 8, scope: !315)
!795 = !DILocation(line: 362, column: 4, scope: !316)
!796 = !DILocation(line: 362, column: 4, scope: !315)
!797 = !DILocation(line: 314, column: 56, scope: !316)
!798 = !DILocation(line: 314, column: 4, scope: !316)
!799 = distinct !{!799, !672, !800, !138, !139}
!800 = !DILocation(line: 362, column: 4, scope: !317)
!801 = !DILocation(line: 363, column: 3, scope: !235)
!802 = !DILocation(line: 364, column: 2, scope: !235)
!803 = !DILocation(line: 366, column: 9, scope: !222)
!804 = !DILocation(line: 366, column: 2, scope: !222)
!805 = !DILocation(line: 367, column: 1, scope: !222)
!806 = !DISubprogram(name: "mpihelp_cmp", scope: !4, file: !4, line: 161, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DISubroutineType(types: !808)
!808 = !{!23, !20, !20, !22}
!809 = !DISubprogram(name: "mpihelp_sub_n", scope: !4, file: !4, line: 155, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DISubroutineType(types: !811)
!811 = !{!5, !20, !20, !20, !22}
!812 = !DISubprogram(name: "mpihelp_submul_1", scope: !4, file: !4, line: 177, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!813 = !DISubroutineType(types: !814)
!814 = !{!5, !20, !20, !22, !5}
!815 = !DISubprogram(name: "mpihelp_add_n", scope: !4, file: !4, line: 148, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = distinct !DISubprogram(name: "mpihelp_divmod_1", scope: !1, file: !1, line: 379, type: !813, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !832, !839, !840, !841, !842, !843, !844, !845, !847, !848, !849, !850, !851, !852, !853, !858, !859, !860, !861, !862, !863}
!818 = !DILocalVariable(name: "quot_ptr", arg: 1, scope: !816, file: !1, line: 379, type: !20)
!819 = !DILocalVariable(name: "dividend_ptr", arg: 2, scope: !816, file: !1, line: 380, type: !20)
!820 = !DILocalVariable(name: "dividend_size", arg: 3, scope: !816, file: !1, line: 380, type: !22)
!821 = !DILocalVariable(name: "divisor_limb", arg: 4, scope: !816, file: !1, line: 381, type: !5)
!822 = !DILocalVariable(name: "i", scope: !816, file: !1, line: 383, type: !22)
!823 = !DILocalVariable(name: "n1", scope: !816, file: !1, line: 384, type: !5)
!824 = !DILocalVariable(name: "n0", scope: !816, file: !1, line: 384, type: !5)
!825 = !DILocalVariable(name: "r", scope: !816, file: !1, line: 384, type: !5)
!826 = !DILocalVariable(name: "dummy", scope: !816, file: !1, line: 385, type: !5)
!827 = !DILocalVariable(name: "normalization_steps", scope: !828, file: !1, line: 471, type: !23)
!828 = distinct !DILexicalBlock(scope: !829, file: !1, line: 470, column: 33)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 470, column: 7)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 469, column: 9)
!831 = distinct !DILexicalBlock(scope: !816, file: !1, line: 398, column: 6)
!832 = !DILocalVariable(name: "__d1", scope: !833, file: !1, line: 488, type: !3)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 488, column: 6)
!834 = distinct !DILexicalBlock(scope: !835, file: !1, line: 486, column: 46)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 486, column: 5)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 486, column: 5)
!837 = distinct !DILexicalBlock(scope: !838, file: !1, line: 474, column: 29)
!838 = distinct !DILexicalBlock(scope: !828, file: !1, line: 474, column: 8)
!839 = !DILocalVariable(name: "__d0", scope: !833, file: !1, line: 488, type: !3)
!840 = !DILocalVariable(name: "__q1", scope: !833, file: !1, line: 488, type: !3)
!841 = !DILocalVariable(name: "__q0", scope: !833, file: !1, line: 488, type: !3)
!842 = !DILocalVariable(name: "__r1", scope: !833, file: !1, line: 488, type: !3)
!843 = !DILocalVariable(name: "__r0", scope: !833, file: !1, line: 488, type: !3)
!844 = !DILocalVariable(name: "__m", scope: !833, file: !1, line: 488, type: !3)
!845 = !DILocalVariable(name: "__d1", scope: !846, file: !1, line: 494, type: !3)
!846 = distinct !DILexicalBlock(scope: !837, file: !1, line: 494, column: 5)
!847 = !DILocalVariable(name: "__d0", scope: !846, file: !1, line: 494, type: !3)
!848 = !DILocalVariable(name: "__q1", scope: !846, file: !1, line: 494, type: !3)
!849 = !DILocalVariable(name: "__q0", scope: !846, file: !1, line: 494, type: !3)
!850 = !DILocalVariable(name: "__r1", scope: !846, file: !1, line: 494, type: !3)
!851 = !DILocalVariable(name: "__r0", scope: !846, file: !1, line: 494, type: !3)
!852 = !DILocalVariable(name: "__m", scope: !846, file: !1, line: 494, type: !3)
!853 = !DILocalVariable(name: "__d1", scope: !854, file: !1, line: 513, type: !3)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 513, column: 4)
!855 = distinct !DILexicalBlock(scope: !856, file: !1, line: 511, column: 23)
!856 = distinct !DILexicalBlock(scope: !857, file: !1, line: 511, column: 3)
!857 = distinct !DILexicalBlock(scope: !830, file: !1, line: 511, column: 3)
!858 = !DILocalVariable(name: "__d0", scope: !854, file: !1, line: 513, type: !3)
!859 = !DILocalVariable(name: "__q1", scope: !854, file: !1, line: 513, type: !3)
!860 = !DILocalVariable(name: "__q0", scope: !854, file: !1, line: 513, type: !3)
!861 = !DILocalVariable(name: "__r1", scope: !854, file: !1, line: 513, type: !3)
!862 = !DILocalVariable(name: "__r0", scope: !854, file: !1, line: 513, type: !3)
!863 = !DILocalVariable(name: "__m", scope: !854, file: !1, line: 513, type: !3)
!864 = !DILocation(line: 379, column: 28, scope: !816)
!865 = !DILocation(line: 380, column: 13, scope: !816)
!866 = !DILocation(line: 380, column: 38, scope: !816)
!867 = !DILocation(line: 381, column: 14, scope: !816)
!868 = !DILocation(line: 383, column: 2, scope: !816)
!869 = !DILocation(line: 383, column: 13, scope: !816)
!870 = !DILocation(line: 384, column: 2, scope: !816)
!871 = !DILocation(line: 384, column: 13, scope: !816)
!872 = !DILocation(line: 384, column: 17, scope: !816)
!873 = !DILocation(line: 384, column: 21, scope: !816)
!874 = !DILocation(line: 385, column: 2, scope: !816)
!875 = !DILocation(line: 385, column: 13, scope: !816)
!876 = !DILocation(line: 387, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !816, file: !1, line: 387, column: 6)
!878 = !DILocation(line: 387, column: 6, scope: !816)
!879 = !DILocation(line: 388, column: 3, scope: !877)
!880 = !DILocation(line: 471, column: 4, scope: !828)
!881 = !DILocation(line: 471, column: 8, scope: !828)
!882 = !DILocation(line: 473, column: 46, scope: !828)
!883 = !DILocation(line: 473, column: 26, scope: !828)
!884 = !DILocation(line: 473, column: 24, scope: !828)
!885 = !DILocation(line: 474, column: 8, scope: !838)
!886 = !DILocation(line: 474, column: 8, scope: !828)
!887 = !DILocation(line: 475, column: 22, scope: !837)
!888 = !DILocation(line: 475, column: 18, scope: !837)
!889 = !DILocation(line: 477, column: 10, scope: !837)
!890 = !DILocation(line: 477, column: 23, scope: !837)
!891 = !DILocation(line: 477, column: 37, scope: !837)
!892 = !DILocation(line: 477, column: 8, scope: !837)
!893 = !DILocation(line: 478, column: 9, scope: !837)
!894 = !DILocation(line: 478, column: 36, scope: !837)
!895 = !DILocation(line: 478, column: 34, scope: !837)
!896 = !DILocation(line: 478, column: 12, scope: !837)
!897 = !DILocation(line: 478, column: 7, scope: !837)
!898 = !DILocation(line: 486, column: 14, scope: !836)
!899 = !DILocation(line: 486, column: 28, scope: !836)
!900 = !DILocation(line: 486, column: 12, scope: !836)
!901 = !DILocation(line: 486, column: 10, scope: !836)
!902 = !DILocation(line: 486, column: 33, scope: !835)
!903 = !DILocation(line: 486, column: 35, scope: !835)
!904 = !DILocation(line: 486, column: 5, scope: !836)
!905 = !DILocation(line: 487, column: 11, scope: !834)
!906 = !DILocation(line: 487, column: 24, scope: !834)
!907 = !DILocation(line: 487, column: 9, scope: !834)
!908 = !DILocation(line: 488, column: 6, scope: !834)
!909 = !DILocation(line: 488, column: 6, scope: !833)
!910 = !DILocation(line: 488, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !833, file: !1, line: 488, column: 6)
!912 = !DILocation(line: 488, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !911, file: !1, line: 488, column: 6)
!914 = !DILocation(line: 488, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !913, file: !1, line: 488, column: 6)
!916 = !DILocation(line: 488, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !915, file: !1, line: 488, column: 6)
!918 = !DILocation(line: 488, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !833, file: !1, line: 488, column: 6)
!920 = !DILocation(line: 488, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !919, file: !1, line: 488, column: 6)
!922 = !DILocation(line: 488, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !921, file: !1, line: 488, column: 6)
!924 = !DILocation(line: 488, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !1, line: 488, column: 6)
!926 = !DILocation(line: 492, column: 11, scope: !834)
!927 = !DILocation(line: 492, column: 9, scope: !834)
!928 = !DILocation(line: 493, column: 5, scope: !834)
!929 = !DILocation(line: 486, column: 42, scope: !835)
!930 = !DILocation(line: 486, column: 5, scope: !835)
!931 = distinct !{!931, !904, !932, !138, !139}
!932 = !DILocation(line: 493, column: 5, scope: !836)
!933 = !DILocation(line: 494, column: 5, scope: !837)
!934 = !DILocation(line: 494, column: 5, scope: !846)
!935 = !DILocation(line: 494, column: 5, scope: !936)
!936 = distinct !DILexicalBlock(scope: !846, file: !1, line: 494, column: 5)
!937 = !DILocation(line: 494, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !1, line: 494, column: 5)
!939 = !DILocation(line: 494, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !938, file: !1, line: 494, column: 5)
!941 = !DILocation(line: 494, column: 5, scope: !942)
!942 = distinct !DILexicalBlock(scope: !940, file: !1, line: 494, column: 5)
!943 = !DILocation(line: 494, column: 5, scope: !944)
!944 = distinct !DILexicalBlock(scope: !846, file: !1, line: 494, column: 5)
!945 = !DILocation(line: 494, column: 5, scope: !946)
!946 = distinct !DILexicalBlock(scope: !944, file: !1, line: 494, column: 5)
!947 = !DILocation(line: 494, column: 5, scope: !948)
!948 = distinct !DILexicalBlock(scope: !946, file: !1, line: 494, column: 5)
!949 = !DILocation(line: 494, column: 5, scope: !950)
!950 = distinct !DILexicalBlock(scope: !948, file: !1, line: 494, column: 5)
!951 = !DILocation(line: 497, column: 12, scope: !837)
!952 = !DILocation(line: 497, column: 17, scope: !837)
!953 = !DILocation(line: 497, column: 14, scope: !837)
!954 = !DILocation(line: 497, column: 5, scope: !837)
!955 = !DILocation(line: 499, column: 3, scope: !829)
!956 = !DILocation(line: 503, column: 7, scope: !830)
!957 = !DILocation(line: 503, column: 21, scope: !830)
!958 = !DILocation(line: 503, column: 5, scope: !830)
!959 = !DILocation(line: 504, column: 7, scope: !830)
!960 = !DILocation(line: 504, column: 20, scope: !830)
!961 = !DILocation(line: 504, column: 5, scope: !830)
!962 = !DILocation(line: 506, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !830, file: !1, line: 506, column: 7)
!964 = !DILocation(line: 506, column: 12, scope: !963)
!965 = !DILocation(line: 506, column: 9, scope: !963)
!966 = !DILocation(line: 506, column: 7, scope: !830)
!967 = !DILocation(line: 507, column: 6, scope: !963)
!968 = !DILocation(line: 507, column: 4, scope: !963)
!969 = !DILocation(line: 509, column: 4, scope: !963)
!970 = !DILocation(line: 509, column: 14, scope: !963)
!971 = !DILocation(line: 509, column: 18, scope: !963)
!972 = !DILocation(line: 511, column: 3, scope: !830)
!973 = !DILocation(line: 511, column: 10, scope: !856)
!974 = !DILocation(line: 511, column: 12, scope: !856)
!975 = !DILocation(line: 511, column: 3, scope: !857)
!976 = !DILocation(line: 512, column: 9, scope: !855)
!977 = !DILocation(line: 512, column: 22, scope: !855)
!978 = !DILocation(line: 512, column: 7, scope: !855)
!979 = !DILocation(line: 513, column: 4, scope: !855)
!980 = !DILocation(line: 513, column: 4, scope: !854)
!981 = !DILocation(line: 513, column: 4, scope: !982)
!982 = distinct !DILexicalBlock(scope: !854, file: !1, line: 513, column: 4)
!983 = !DILocation(line: 513, column: 4, scope: !984)
!984 = distinct !DILexicalBlock(scope: !982, file: !1, line: 513, column: 4)
!985 = !DILocation(line: 513, column: 4, scope: !986)
!986 = distinct !DILexicalBlock(scope: !984, file: !1, line: 513, column: 4)
!987 = !DILocation(line: 513, column: 4, scope: !988)
!988 = distinct !DILexicalBlock(scope: !986, file: !1, line: 513, column: 4)
!989 = !DILocation(line: 513, column: 4, scope: !990)
!990 = distinct !DILexicalBlock(scope: !854, file: !1, line: 513, column: 4)
!991 = !DILocation(line: 513, column: 4, scope: !992)
!992 = distinct !DILexicalBlock(scope: !990, file: !1, line: 513, column: 4)
!993 = !DILocation(line: 513, column: 4, scope: !994)
!994 = distinct !DILexicalBlock(scope: !992, file: !1, line: 513, column: 4)
!995 = !DILocation(line: 513, column: 4, scope: !996)
!996 = distinct !DILexicalBlock(scope: !994, file: !1, line: 513, column: 4)
!997 = !DILocation(line: 514, column: 3, scope: !855)
!998 = !DILocation(line: 511, column: 19, scope: !856)
!999 = !DILocation(line: 511, column: 3, scope: !856)
!1000 = distinct !{!1000, !975, !1001, !138, !139}
!1001 = !DILocation(line: 514, column: 3, scope: !857)
!1002 = !DILocation(line: 515, column: 10, scope: !830)
!1003 = !DILocation(line: 515, column: 3, scope: !830)
!1004 = !DILocation(line: 517, column: 1, scope: !816)
!1005 = distinct !DISubprogram(name: "fls64", scope: !1006, file: !1006, line: 401, type: !1007, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1012)
!1006 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!23, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !1010, line: 31, baseType: !1011)
!1010 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!1011 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1012 = !{!1013, !1014}
!1013 = !DILocalVariable(name: "x", arg: 1, scope: !1005, file: !1006, line: 401, type: !1009)
!1014 = !DILocalVariable(name: "bitpos", scope: !1005, file: !1006, line: 403, type: !23)
!1015 = !DILocation(line: 401, column: 40, scope: !1005)
!1016 = !DILocation(line: 403, column: 2, scope: !1005)
!1017 = !DILocation(line: 403, column: 6, scope: !1005)
!1018 = !DILocation(line: 409, column: 2, scope: !1005)
!1019 = !DILocation(line: 411, column: 14, scope: !1005)
!1020 = !{i64 860196}
!1021 = !DILocation(line: 412, column: 9, scope: !1005)
!1022 = !DILocation(line: 412, column: 16, scope: !1005)
!1023 = !DILocation(line: 413, column: 1, scope: !1005)
!1024 = !DILocation(line: 412, column: 2, scope: !1005)
