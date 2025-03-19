; ModuleID = 'lib/ratelimit.c'
source_filename = "lib/ratelimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol____ratelimit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ___ratelimit ; .previous"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [31 x i8] c"\014%s: %d callbacks suppressed\0A\00", align 1, !dbg !0
@__UNIQUE_ID___addressable____ratelimit150 = internal global ptr @___ratelimit, section ".discard.addressable", align 8, !dbg !7
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable____ratelimit150], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @___ratelimit(ptr noundef %rs, ptr noundef %func) #0 align 16 !dbg !27 {
entry:
  %retval = alloca i32, align 4
  %rs.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %interval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %burst = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %__dummy19 = alloca i64, align 8
  %__dummy220 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %__dummy70 = alloca i64, align 8
  %__dummy271 = alloca i64, align 8
  %tmp74 = alloca i32, align 4
  store ptr %rs, ptr %rs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rs.addr, metadata !81, metadata !DIExpression()), !dbg !104
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !82, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 4, ptr %interval) #6, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %interval, metadata !83, metadata !DIExpression()), !dbg !107
  br label %do.body, !dbg !108

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !110

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !110

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %rs.addr, align 8, !dbg !108
  %interval1 = getelementptr inbounds %struct.ratelimit_state, ptr %0, i32 0, i32 1, !dbg !108
  %1 = load volatile i32, ptr %interval1, align 4, !dbg !108
  store i32 %1, ptr %tmp, align 4, !dbg !110
  %2 = load i32, ptr %tmp, align 4, !dbg !108
  store i32 %2, ptr %interval, align 4, !dbg !107
  call void @llvm.lifetime.start.p0(i64 4, ptr %burst) #6, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %burst, metadata !84, metadata !DIExpression()), !dbg !113
  br label %do.body2, !dbg !114

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !116

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !116

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %rs.addr, align 8, !dbg !114
  %burst6 = getelementptr inbounds %struct.ratelimit_state, ptr %3, i32 0, i32 2, !dbg !114
  %4 = load volatile i32, ptr %burst6, align 8, !dbg !114
  store i32 %4, ptr %tmp5, align 4, !dbg !116
  %5 = load i32, ptr %tmp5, align 4, !dbg !114
  store i32 %5, ptr %burst, align 4, !dbg !113
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !85, metadata !DIExpression()), !dbg !119
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !86, metadata !DIExpression()), !dbg !121
  %6 = load i32, ptr %interval, align 4, !dbg !122
  %tobool = icmp ne i32 %6, 0, !dbg !122
  br i1 %tobool, label %if.end, label %if.then, !dbg !124

if.then:                                          ; preds = %do.end4
  store i32 1, ptr %retval, align 4, !dbg !125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !125

if.end:                                           ; preds = %do.end4
  br label %do.body7, !dbg !126

do.body7:                                         ; preds = %if.end
  br label %do.body8, !dbg !127

do.body8:                                         ; preds = %do.body7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #6, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !87, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #6, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !93, metadata !DIExpression()), !dbg !128
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !128
  %conv = zext i1 %cmp to i32, !dbg !128
  store i32 1, ptr %tmp9, align 4, !dbg !128
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #6, !dbg !129
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #6, !dbg !129
  %7 = load i32, ptr %tmp9, align 4, !dbg !128
  %call = call i64 @arch_local_irq_save() #7, !dbg !129
  store i64 %call, ptr %flags, align 8, !dbg !129
  br label %do.cond10, !dbg !129

do.cond10:                                        ; preds = %do.body8
  br label %do.end11, !dbg !129

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !127

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !127

do.end13:                                         ; preds = %do.cond12
  %8 = load ptr, ptr %rs.addr, align 8, !dbg !126
  %lock = getelementptr inbounds %struct.ratelimit_state, ptr %8, i32 0, i32 0, !dbg !126
  %call15 = call i32 @_raw_spin_trylock(ptr noundef %lock) #7, !dbg !126
  %tobool16 = icmp ne i32 %call15, 0, !dbg !126
  br i1 %tobool16, label %cond.true, label %cond.false, !dbg !126

cond.true:                                        ; preds = %do.end13
  br label %cond.end, !dbg !126

cond.false:                                       ; preds = %do.end13
  br label %do.body17, !dbg !130

do.body17:                                        ; preds = %cond.false
  br label %do.body18, !dbg !131

do.body18:                                        ; preds = %do.body17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy19) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %__dummy19, metadata !94, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy220) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %__dummy220, metadata !99, metadata !DIExpression()), !dbg !132
  %cmp21 = icmp eq ptr %__dummy19, %__dummy220, !dbg !132
  %conv22 = zext i1 %cmp21 to i32, !dbg !132
  store i32 1, ptr %tmp23, align 4, !dbg !132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy220) #6, !dbg !133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy19) #6, !dbg !133
  %9 = load i32, ptr %tmp23, align 4, !dbg !132
  br label %do.body24, !dbg !133

do.body24:                                        ; preds = %do.body18
  br label %do.cond25, !dbg !134

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !134

do.end26:                                         ; preds = %do.cond25
  %10 = load i64, ptr %flags, align 8, !dbg !133
  call void @arch_local_irq_restore(i64 noundef %10) #7, !dbg !133
  br label %do.cond27, !dbg !133

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !133

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !131

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !131

do.end30:                                         ; preds = %do.cond29
  store i32 0, ptr %tmp31, align 4, !dbg !131
  %11 = load i32, ptr %tmp31, align 4, !dbg !130
  br label %cond.end, !dbg !126

cond.end:                                         ; preds = %do.end30, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %11, %do.end30 ], !dbg !126
  store i32 %cond, ptr %tmp14, align 4, !dbg !127
  %12 = load i32, ptr %tmp14, align 4, !dbg !126
  %tobool32 = icmp ne i32 %12, 0, !dbg !136
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !137

if.then33:                                        ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !138

if.end34:                                         ; preds = %cond.end
  %13 = load ptr, ptr %rs.addr, align 8, !dbg !139
  %begin = getelementptr inbounds %struct.ratelimit_state, ptr %13, i32 0, i32 5, !dbg !141
  %14 = load i64, ptr %begin, align 8, !dbg !141
  %tobool35 = icmp ne i64 %14, 0, !dbg !139
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !142

if.then36:                                        ; preds = %if.end34
  %15 = load volatile i64, ptr @jiffies, align 64, !dbg !143
  %16 = load ptr, ptr %rs.addr, align 8, !dbg !144
  %begin37 = getelementptr inbounds %struct.ratelimit_state, ptr %16, i32 0, i32 5, !dbg !145
  store i64 %15, ptr %begin37, align 8, !dbg !146
  br label %if.end38, !dbg !144

if.end38:                                         ; preds = %if.then36, %if.end34
  %17 = load ptr, ptr %rs.addr, align 8, !dbg !147
  %begin39 = getelementptr inbounds %struct.ratelimit_state, ptr %17, i32 0, i32 5, !dbg !147
  %18 = load i64, ptr %begin39, align 8, !dbg !147
  %19 = load i32, ptr %interval, align 4, !dbg !147
  %conv40 = sext i32 %19 to i64, !dbg !147
  %add = add i64 %18, %conv40, !dbg !147
  %20 = load volatile i64, ptr @jiffies, align 64, !dbg !147
  %sub = sub i64 %add, %20, !dbg !147
  %cmp41 = icmp slt i64 %sub, 0, !dbg !147
  br i1 %cmp41, label %if.then43, label %if.end59, !dbg !149

if.then43:                                        ; preds = %if.end38
  %21 = load ptr, ptr %rs.addr, align 8, !dbg !150
  %missed = getelementptr inbounds %struct.ratelimit_state, ptr %21, i32 0, i32 4, !dbg !153
  %22 = load i32, ptr %missed, align 8, !dbg !153
  %tobool44 = icmp ne i32 %22, 0, !dbg !150
  br i1 %tobool44, label %if.then45, label %if.end57, !dbg !154

if.then45:                                        ; preds = %if.then43
  %23 = load ptr, ptr %rs.addr, align 8, !dbg !155
  %flags46 = getelementptr inbounds %struct.ratelimit_state, ptr %23, i32 0, i32 6, !dbg !158
  %24 = load i64, ptr %flags46, align 8, !dbg !158
  %and = and i64 %24, 1, !dbg !159
  %tobool47 = icmp ne i64 %and, 0, !dbg !159
  br i1 %tobool47, label %if.end56, label %if.then48, !dbg !160

if.then48:                                        ; preds = %if.then45
  br label %do.body49, !dbg !161

do.body49:                                        ; preds = %if.then48
  br label %do.cond50, !dbg !164

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !164

do.end51:                                         ; preds = %do.cond50
  %25 = load ptr, ptr %func.addr, align 8, !dbg !161
  %26 = load ptr, ptr %rs.addr, align 8, !dbg !161
  %missed53 = getelementptr inbounds %struct.ratelimit_state, ptr %26, i32 0, i32 4, !dbg !161
  %27 = load i32, ptr %missed53, align 8, !dbg !161
  %call54 = call i32 (ptr, ...) @_printk_deferred(ptr noundef @.str, ptr noundef %25, i32 noundef %27) #8, !dbg !161
  store i32 %call54, ptr %tmp52, align 4, !dbg !164
  %28 = load i32, ptr %tmp52, align 4, !dbg !161
  %29 = load ptr, ptr %rs.addr, align 8, !dbg !166
  %missed55 = getelementptr inbounds %struct.ratelimit_state, ptr %29, i32 0, i32 4, !dbg !167
  store i32 0, ptr %missed55, align 8, !dbg !168
  br label %if.end56, !dbg !169

if.end56:                                         ; preds = %do.end51, %if.then45
  br label %if.end57, !dbg !170

if.end57:                                         ; preds = %if.end56, %if.then43
  %30 = load volatile i64, ptr @jiffies, align 64, !dbg !171
  %31 = load ptr, ptr %rs.addr, align 8, !dbg !172
  %begin58 = getelementptr inbounds %struct.ratelimit_state, ptr %31, i32 0, i32 5, !dbg !173
  store i64 %30, ptr %begin58, align 8, !dbg !174
  %32 = load ptr, ptr %rs.addr, align 8, !dbg !175
  %printed = getelementptr inbounds %struct.ratelimit_state, ptr %32, i32 0, i32 3, !dbg !176
  store i32 0, ptr %printed, align 4, !dbg !177
  br label %if.end59, !dbg !178

if.end59:                                         ; preds = %if.end57, %if.end38
  %33 = load i32, ptr %burst, align 4, !dbg !179
  %tobool60 = icmp ne i32 %33, 0, !dbg !179
  br i1 %tobool60, label %land.lhs.true, label %if.else, !dbg !181

land.lhs.true:                                    ; preds = %if.end59
  %34 = load i32, ptr %burst, align 4, !dbg !182
  %35 = load ptr, ptr %rs.addr, align 8, !dbg !183
  %printed61 = getelementptr inbounds %struct.ratelimit_state, ptr %35, i32 0, i32 3, !dbg !184
  %36 = load i32, ptr %printed61, align 4, !dbg !184
  %cmp62 = icmp sgt i32 %34, %36, !dbg !185
  br i1 %cmp62, label %if.then64, label %if.else, !dbg !186

if.then64:                                        ; preds = %land.lhs.true
  %37 = load ptr, ptr %rs.addr, align 8, !dbg !187
  %printed65 = getelementptr inbounds %struct.ratelimit_state, ptr %37, i32 0, i32 3, !dbg !189
  %38 = load i32, ptr %printed65, align 4, !dbg !190
  %inc = add i32 %38, 1, !dbg !190
  store i32 %inc, ptr %printed65, align 4, !dbg !190
  store i32 1, ptr %ret, align 4, !dbg !191
  br label %if.end68, !dbg !192

if.else:                                          ; preds = %land.lhs.true, %if.end59
  %39 = load ptr, ptr %rs.addr, align 8, !dbg !193
  %missed66 = getelementptr inbounds %struct.ratelimit_state, ptr %39, i32 0, i32 4, !dbg !195
  %40 = load i32, ptr %missed66, align 8, !dbg !196
  %inc67 = add i32 %40, 1, !dbg !196
  store i32 %inc67, ptr %missed66, align 8, !dbg !196
  store i32 0, ptr %ret, align 4, !dbg !197
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then64
  br label %do.body69, !dbg !198

do.body69:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy70) #6, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__dummy70, metadata !100, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy271) #6, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__dummy271, metadata !103, metadata !DIExpression()), !dbg !199
  %cmp72 = icmp eq ptr %__dummy70, %__dummy271, !dbg !199
  %conv73 = zext i1 %cmp72 to i32, !dbg !199
  store i32 1, ptr %tmp74, align 4, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy271) #6, !dbg !200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy70) #6, !dbg !200
  %41 = load i32, ptr %tmp74, align 4, !dbg !199
  %42 = load ptr, ptr %rs.addr, align 8, !dbg !200
  %lock75 = getelementptr inbounds %struct.ratelimit_state, ptr %42, i32 0, i32 0, !dbg !200
  %43 = load i64, ptr %flags, align 8, !dbg !200
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock75, i64 noundef %43) #7, !dbg !200
  br label %do.cond76, !dbg !200

do.cond76:                                        ; preds = %do.body69
  br label %do.end77, !dbg !200

do.end77:                                         ; preds = %do.cond76
  %44 = load i32, ptr %ret, align 4, !dbg !201
  store i32 %44, ptr %retval, align 4, !dbg !202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !202

cleanup:                                          ; preds = %do.end77, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !203
  call void @llvm.lifetime.end.p0(i64 4, ptr %burst) #6, !dbg !203
  call void @llvm.lifetime.end.p0(i64 4, ptr %interval) #6, !dbg !203
  %45 = load i32, ptr %retval, align 4, !dbg !203
  ret i32 %45, !dbg !203
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !204 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !209, metadata !DIExpression()), !dbg !211
  %call = call i64 @arch_local_save_flags() #7, !dbg !212
  store i64 %call, ptr %flags, align 8, !dbg !211
  call void @arch_local_irq_disable() #7, !dbg !213
  %0 = load i64, ptr %flags, align 8, !dbg !214
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !215
  ret i64 %0, !dbg !216
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !217 dso_local i32 @_raw_spin_trylock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !222 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !226, metadata !DIExpression()), !dbg !227
  %0 = load i64, ptr %flags.addr, align 8, !dbg !228
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #7, !dbg !230
  %tobool = icmp ne i32 %call, 0, !dbg !230
  br i1 %tobool, label %if.end, label %if.then, !dbg !231

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #7, !dbg !232
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !233
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !234 dso_local i32 @_printk_deferred(ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !238 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !241 {
entry:
  %call = call i64 @native_save_fl() #7, !dbg !242
  ret i64 %call, !dbg !243
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !244 {
entry:
  call void @native_irq_disable() #7, !dbg !247
  ret void, !dbg !248
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !249 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !251, metadata !DIExpression()), !dbg !253
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #6, !dbg !254, !srcloc !255
  %0 = load i64, ptr %flags, align 8, !dbg !256
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !257
  ret i64 %0, !dbg !258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !259 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !260, !srcloc !261
  ret void, !dbg !262
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !263 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = load i64, ptr %flags.addr, align 8, !dbg !269
  %and = and i64 %0, 512, !dbg !270
  %tobool = icmp ne i64 %and, 0, !dbg !271
  %lnot = xor i1 %tobool, true, !dbg !271
  %lnot.ext = zext i1 %lnot to i32, !dbg !271
  ret i32 %lnot.ext, !dbg !272
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !273 {
entry:
  call void @native_irq_enable() #7, !dbg !274
  ret void, !dbg !275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !276 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !277, !srcloc !278
  ret void, !dbg !279
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/ratelimit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54af45fd9f408b5d0e26dd11be74d69a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable____ratelimit150", scope: !9, file: !2, line: 76, type: !16, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.ratelimit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/ratelimit\22 -D KBUILD_BASENAME=\22ratelimit\22 -D KBUILD_MODNAME=\22ratelimit\22 -D __KBUILD_MODNAME=kmod_ratelimit -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/ratelimit.ll lib/ratelimit.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !17, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !15, !16}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!0, !7}
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 8, !"cf-protection-branch", i32 1}
!22 = !{i32 4, !"function_return_thunk_extern", i32 1}
!23 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!24 = !{i32 1, !"Code Model", i32 2}
!25 = !{i32 1, !"override-stack-alignment", i32 8}
!26 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!27 = distinct !DISubprogram(name: "___ratelimit", scope: !2, file: !2, line: 27, type: !28, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !80)
!28 = !DISubroutineType(types: !29)
!29 = !{!14, !30, !78}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !32, line: 15, size: 320, elements: !33)
!32 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!33 = !{!34, !71, !72, !73, !74, !75, !77}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !31, file: !32, line: 16, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !36, line: 23, baseType: !37)
!36 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !36, line: 14, size: 32, elements: !38)
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !37, file: !36, line: 15, baseType: !40, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !41, line: 44, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !41, line: 14, size: 32, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !41, line: 15, baseType: !45, size: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !41, line: 15, size: 32, elements: !46)
!46 = !{!47, !53, !63}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !45, file: !41, line: 16, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !49, line: 174, baseType: !50)
!49 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 172, size: 32, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !50, file: !49, line: 173, baseType: !14, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !41, line: 24, baseType: !54, size: 16)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !41, line: 24, size: 16, elements: !55)
!55 = !{!56, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !54, file: !41, line: 25, baseType: !57, size: 8)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !58, line: 17, baseType: !59)
!58 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !60, line: 21, baseType: !61)
!60 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !54, file: !41, line: 26, baseType: !57, size: 8, offset: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !41, line: 28, baseType: !64, size: 32)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !41, line: 28, size: 32, elements: !65)
!65 = !{!66, !70}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !64, file: !41, line: 29, baseType: !67, size: 16)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !58, line: 19, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !60, line: 24, baseType: !69)
!69 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !64, file: !41, line: 30, baseType: !67, size: 16, offset: 16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !31, file: !32, line: 18, baseType: !14, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !31, file: !32, line: 19, baseType: !14, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !31, file: !32, line: 20, baseType: !14, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !31, file: !32, line: 21, baseType: !14, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !31, file: !32, line: 22, baseType: !76, size: 64, offset: 192)
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !31, file: !32, line: 23, baseType: !76, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !93, !94, !99, !100, !103}
!81 = !DILocalVariable(name: "rs", arg: 1, scope: !27, file: !2, line: 27, type: !30)
!82 = !DILocalVariable(name: "func", arg: 2, scope: !27, file: !2, line: 27, type: !78)
!83 = !DILocalVariable(name: "interval", scope: !27, file: !2, line: 33, type: !14)
!84 = !DILocalVariable(name: "burst", scope: !27, file: !2, line: 34, type: !14)
!85 = !DILocalVariable(name: "flags", scope: !27, file: !2, line: 35, type: !76)
!86 = !DILocalVariable(name: "ret", scope: !27, file: !2, line: 36, type: !14)
!87 = !DILocalVariable(name: "__dummy", scope: !88, file: !2, line: 47, type: !76)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 47, column: 7)
!89 = distinct !DILexicalBlock(scope: !90, file: !2, line: 47, column: 7)
!90 = distinct !DILexicalBlock(scope: !91, file: !2, line: 47, column: 7)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 47, column: 7)
!92 = distinct !DILexicalBlock(scope: !27, file: !2, line: 47, column: 6)
!93 = !DILocalVariable(name: "__dummy2", scope: !88, file: !2, line: 47, type: !76)
!94 = !DILocalVariable(name: "__dummy", scope: !95, file: !2, line: 47, type: !76)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 47, column: 7)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 47, column: 7)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 47, column: 7)
!98 = distinct !DILexicalBlock(scope: !91, file: !2, line: 47, column: 7)
!99 = !DILocalVariable(name: "__dummy2", scope: !95, file: !2, line: 47, type: !76)
!100 = !DILocalVariable(name: "__dummy", scope: !101, file: !2, line: 72, type: !76)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 72, column: 2)
!102 = distinct !DILexicalBlock(scope: !27, file: !2, line: 72, column: 2)
!103 = !DILocalVariable(name: "__dummy2", scope: !101, file: !2, line: 72, type: !76)
!104 = !DILocation(line: 27, column: 42, scope: !27)
!105 = !DILocation(line: 27, column: 58, scope: !27)
!106 = !DILocation(line: 33, column: 2, scope: !27)
!107 = !DILocation(line: 33, column: 6, scope: !27)
!108 = !DILocation(line: 33, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !27, file: !2, line: 33, column: 17)
!110 = !DILocation(line: 33, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !109, file: !2, line: 33, column: 17)
!112 = !DILocation(line: 34, column: 2, scope: !27)
!113 = !DILocation(line: 34, column: 6, scope: !27)
!114 = !DILocation(line: 34, column: 14, scope: !115)
!115 = distinct !DILexicalBlock(scope: !27, file: !2, line: 34, column: 14)
!116 = !DILocation(line: 34, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !115, file: !2, line: 34, column: 14)
!118 = !DILocation(line: 35, column: 2, scope: !27)
!119 = !DILocation(line: 35, column: 16, scope: !27)
!120 = !DILocation(line: 36, column: 2, scope: !27)
!121 = !DILocation(line: 36, column: 6, scope: !27)
!122 = !DILocation(line: 38, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !27, file: !2, line: 38, column: 6)
!124 = !DILocation(line: 38, column: 6, scope: !27)
!125 = !DILocation(line: 39, column: 3, scope: !123)
!126 = !DILocation(line: 47, column: 7, scope: !91)
!127 = !DILocation(line: 47, column: 7, scope: !90)
!128 = !DILocation(line: 47, column: 7, scope: !88)
!129 = !DILocation(line: 47, column: 7, scope: !89)
!130 = !DILocation(line: 47, column: 7, scope: !98)
!131 = !DILocation(line: 47, column: 7, scope: !97)
!132 = !DILocation(line: 47, column: 7, scope: !95)
!133 = !DILocation(line: 47, column: 7, scope: !96)
!134 = !DILocation(line: 47, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !96, file: !2, line: 47, column: 7)
!136 = !DILocation(line: 47, column: 7, scope: !92)
!137 = !DILocation(line: 47, column: 6, scope: !27)
!138 = !DILocation(line: 48, column: 3, scope: !92)
!139 = !DILocation(line: 50, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !27, file: !2, line: 50, column: 6)
!141 = !DILocation(line: 50, column: 11, scope: !140)
!142 = !DILocation(line: 50, column: 6, scope: !27)
!143 = !DILocation(line: 51, column: 15, scope: !140)
!144 = !DILocation(line: 51, column: 3, scope: !140)
!145 = !DILocation(line: 51, column: 7, scope: !140)
!146 = !DILocation(line: 51, column: 13, scope: !140)
!147 = !DILocation(line: 53, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !27, file: !2, line: 53, column: 6)
!149 = !DILocation(line: 53, column: 6, scope: !27)
!150 = !DILocation(line: 54, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 54, column: 7)
!152 = distinct !DILexicalBlock(scope: !148, file: !2, line: 53, column: 52)
!153 = !DILocation(line: 54, column: 11, scope: !151)
!154 = !DILocation(line: 54, column: 7, scope: !152)
!155 = !DILocation(line: 55, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 55, column: 8)
!157 = distinct !DILexicalBlock(scope: !151, file: !2, line: 54, column: 19)
!158 = !DILocation(line: 55, column: 14, scope: !156)
!159 = !DILocation(line: 55, column: 20, scope: !156)
!160 = !DILocation(line: 55, column: 8, scope: !157)
!161 = !DILocation(line: 56, column: 5, scope: !162)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 56, column: 5)
!163 = distinct !DILexicalBlock(scope: !156, file: !2, line: 55, column: 49)
!164 = !DILocation(line: 56, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !2, line: 56, column: 5)
!166 = !DILocation(line: 59, column: 5, scope: !163)
!167 = !DILocation(line: 59, column: 9, scope: !163)
!168 = !DILocation(line: 59, column: 16, scope: !163)
!169 = !DILocation(line: 60, column: 4, scope: !163)
!170 = !DILocation(line: 61, column: 3, scope: !157)
!171 = !DILocation(line: 62, column: 17, scope: !152)
!172 = !DILocation(line: 62, column: 3, scope: !152)
!173 = !DILocation(line: 62, column: 7, scope: !152)
!174 = !DILocation(line: 62, column: 15, scope: !152)
!175 = !DILocation(line: 63, column: 3, scope: !152)
!176 = !DILocation(line: 63, column: 7, scope: !152)
!177 = !DILocation(line: 63, column: 15, scope: !152)
!178 = !DILocation(line: 64, column: 2, scope: !152)
!179 = !DILocation(line: 65, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !27, file: !2, line: 65, column: 6)
!181 = !DILocation(line: 65, column: 12, scope: !180)
!182 = !DILocation(line: 65, column: 15, scope: !180)
!183 = !DILocation(line: 65, column: 23, scope: !180)
!184 = !DILocation(line: 65, column: 27, scope: !180)
!185 = !DILocation(line: 65, column: 21, scope: !180)
!186 = !DILocation(line: 65, column: 6, scope: !27)
!187 = !DILocation(line: 66, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !180, file: !2, line: 65, column: 36)
!189 = !DILocation(line: 66, column: 7, scope: !188)
!190 = !DILocation(line: 66, column: 14, scope: !188)
!191 = !DILocation(line: 67, column: 7, scope: !188)
!192 = !DILocation(line: 68, column: 2, scope: !188)
!193 = !DILocation(line: 69, column: 3, scope: !194)
!194 = distinct !DILexicalBlock(scope: !180, file: !2, line: 68, column: 9)
!195 = !DILocation(line: 69, column: 7, scope: !194)
!196 = !DILocation(line: 69, column: 13, scope: !194)
!197 = !DILocation(line: 70, column: 7, scope: !194)
!198 = !DILocation(line: 72, column: 2, scope: !27)
!199 = !DILocation(line: 72, column: 2, scope: !101)
!200 = !DILocation(line: 72, column: 2, scope: !102)
!201 = !DILocation(line: 74, column: 9, scope: !27)
!202 = !DILocation(line: 74, column: 2, scope: !27)
!203 = !DILocation(line: 75, column: 1, scope: !27)
!204 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !205, file: !205, line: 101, type: !206, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !208)
!205 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!206 = !DISubroutineType(types: !207)
!207 = !{!76}
!208 = !{!209}
!209 = !DILocalVariable(name: "flags", scope: !204, file: !205, line: 103, type: !76)
!210 = !DILocation(line: 103, column: 2, scope: !204)
!211 = !DILocation(line: 103, column: 16, scope: !204)
!212 = !DILocation(line: 103, column: 24, scope: !204)
!213 = !DILocation(line: 104, column: 2, scope: !204)
!214 = !DILocation(line: 105, column: 9, scope: !204)
!215 = !DILocation(line: 106, column: 1, scope: !204)
!216 = !DILocation(line: 105, column: 2, scope: !204)
!217 = !DISubprogram(name: "_raw_spin_trylock", scope: !218, file: !218, line: 37, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!219 = !DISubroutineType(types: !220)
!220 = !{!14, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!222 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !205, file: !205, line: 132, type: !223, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !76}
!225 = !{!226}
!226 = !DILocalVariable(name: "flags", arg: 1, scope: !222, file: !205, line: 132, type: !76)
!227 = !DILocation(line: 132, column: 66, scope: !222)
!228 = !DILocation(line: 134, column: 32, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !205, line: 134, column: 6)
!230 = !DILocation(line: 134, column: 7, scope: !229)
!231 = !DILocation(line: 134, column: 6, scope: !222)
!232 = !DILocation(line: 135, column: 3, scope: !229)
!233 = !DILocation(line: 136, column: 1, scope: !222)
!234 = !DISubprogram(name: "_printk_deferred", scope: !235, file: !235, line: 158, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!236 = !DISubroutineType(types: !237)
!237 = !{!14, !78, null}
!238 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !218, file: !218, line: 43, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !221, !76}
!241 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !205, file: !205, line: 65, type: !206, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!242 = !DILocation(line: 67, column: 9, scope: !241)
!243 = !DILocation(line: 67, column: 2, scope: !241)
!244 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !205, file: !205, line: 70, type: !245, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!245 = !DISubroutineType(types: !246)
!246 = !{null}
!247 = !DILocation(line: 72, column: 2, scope: !244)
!248 = !DILocation(line: 73, column: 1, scope: !244)
!249 = distinct !DISubprogram(name: "native_save_fl", scope: !205, file: !205, line: 17, type: !206, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !250)
!250 = !{!251}
!251 = !DILocalVariable(name: "flags", scope: !249, file: !205, line: 19, type: !76)
!252 = !DILocation(line: 19, column: 2, scope: !249)
!253 = !DILocation(line: 19, column: 16, scope: !249)
!254 = !DILocation(line: 26, column: 2, scope: !249)
!255 = !{i64 1424536, i64 1424557}
!256 = !DILocation(line: 32, column: 9, scope: !249)
!257 = !DILocation(line: 33, column: 1, scope: !249)
!258 = !DILocation(line: 32, column: 2, scope: !249)
!259 = distinct !DISubprogram(name: "native_irq_disable", scope: !205, file: !205, line: 35, type: !245, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!260 = !DILocation(line: 37, column: 2, scope: !259)
!261 = !{i64 1424740}
!262 = !DILocation(line: 38, column: 1, scope: !259)
!263 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !205, file: !205, line: 120, type: !264, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!14, !76}
!266 = !{!267}
!267 = !DILocalVariable(name: "flags", arg: 1, scope: !263, file: !205, line: 120, type: !76)
!268 = !DILocation(line: 120, column: 67, scope: !263)
!269 = !DILocation(line: 122, column: 11, scope: !263)
!270 = !DILocation(line: 122, column: 17, scope: !263)
!271 = !DILocation(line: 122, column: 9, scope: !263)
!272 = !DILocation(line: 122, column: 2, scope: !263)
!273 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !205, file: !205, line: 75, type: !245, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!274 = !DILocation(line: 77, column: 2, scope: !273)
!275 = !DILocation(line: 78, column: 1, scope: !273)
!276 = distinct !DISubprogram(name: "native_irq_enable", scope: !205, file: !205, line: 40, type: !245, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!277 = !DILocation(line: 42, column: 2, scope: !276)
!278 = !{i64 1424832}
!279 = !DILocation(line: 43, column: 1, scope: !276)
