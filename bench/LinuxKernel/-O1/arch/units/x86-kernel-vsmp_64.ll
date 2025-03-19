; ModuleID = 'arch/x86/kernel/vsmp_64.c'
source_filename = "arch/x86/kernel/vsmp_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@is_vsmp = internal global i32 -1, align 4, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"arch/x86/kernel/vsmp_64.c\00", align 1, !dbg !10
@apic = external dso_local global ptr, align 8
@apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read206 = internal global ptr @__SCK__apic_call_read, section ".discard.addressable", align 8, !dbg !16
@__SCK__apic_call_read = external dso_local global %struct.static_call_key, align 8
@setup_max_cpus = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"\016vSMP CTL: Capping CPUs to %d (CONFIG_X86_VSMP is unset)\0A\00", align 1, !dbg !28
@.str.2 = private unnamed_addr constant [49 x i8] c"\016vSMP CTL: capabilities:0x%08x  control:0x%08x\0A\00", align 1, !dbg !33
@no_irq_affinity = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\016vSMP CTL: control set to:0x%08x\0A\00", align 1, !dbg !38
@llvm.compiler.used = appending global [1 x ptr] [ptr @apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read206], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @vsmp_init() #0 section ".init.text" align 16 !dbg !53 {
entry:
  call void @detect_vsmp_box() #9, !dbg !56
  %call = call i32 @is_vsmp_box() #10, !dbg !57
  %tobool = icmp ne i32 %call, 0, !dbg !57
  br i1 %tobool, label %if.end, label %if.then, !dbg !59

if.then:                                          ; preds = %entry
  br label %return, !dbg !60

if.end:                                           ; preds = %entry
  store ptr @vsmp_apic_post_init, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 10), align 8, !dbg !61
  call void @vsmp_cap_cpus() #9, !dbg !62
  call void @set_vsmp_ctl() #9, !dbg !63
  br label %return, !dbg !64

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !65
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @detect_vsmp_box() #0 section ".init.text" align 16 !dbg !66 {
entry:
  store i32 0, ptr @is_vsmp, align 4, !dbg !67
  %call = call i32 @early_pci_allowed() #10, !dbg !68
  %tobool = icmp ne i32 %call, 0, !dbg !68
  br i1 %tobool, label %if.end, label %if.then, !dbg !70

if.then:                                          ; preds = %entry
  br label %if.end3, !dbg !71

if.end:                                           ; preds = %entry
  %call1 = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext 31, i8 noundef zeroext 0, i8 noundef zeroext 0) #10, !dbg !72
  %cmp = icmp eq i32 %call1, 269518470, !dbg !74
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !75

if.then2:                                         ; preds = %if.end
  store i32 1, ptr @is_vsmp, align 4, !dbg !76
  br label %if.end3, !dbg !77

if.end3:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !78
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_vsmp_box() #1 align 16 !dbg !79 {
entry:
  %retval = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %0 = load i32, ptr @is_vsmp, align 4, !dbg !90
  %cmp = icmp ne i32 %0, -1, !dbg !91
  br i1 %cmp, label %if.then, label %if.else, !dbg !92

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @is_vsmp, align 4, !dbg !93
  store i32 %1, ptr %retval, align 4, !dbg !94
  br label %return, !dbg !94

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !83, metadata !DIExpression()), !dbg !95
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !95
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !96
  %tobool = icmp ne i32 %2, 0, !dbg !96
  %lnot = xor i1 %tobool, true, !dbg !96
  %lnot1 = xor i1 %lnot, true, !dbg !96
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !96
  %conv = sext i32 %lnot.ext to i64, !dbg !96
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !96
  %tobool2 = icmp ne i64 %expval, 0, !dbg !96
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !95

if.then3:                                         ; preds = %if.else
  br label %do.body, !dbg !96

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !87, metadata !DIExpression()), !dbg !97
  store i32 2307, ptr %__flags, align 4, !dbg !97
  br label %do.body4, !dbg !97

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !98

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !98

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !97

do.body5:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !100
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 78, i32 %3, i64 12) #11, !dbg !100, !srcloc !102
  br label %do.cond6, !dbg !100

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !100

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !97

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !103

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !103

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !96
  br label %do.cond11, !dbg !97

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !97

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !97

if.end:                                           ; preds = %do.end12, %if.else
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !95
  %tobool13 = icmp ne i32 %4, 0, !dbg !95
  %lnot14 = xor i1 %tobool13, true, !dbg !95
  %lnot16 = xor i1 %lnot14, true, !dbg !95
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !95
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !95
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !95
  store i64 %expval19, ptr %tmp, align 8, !dbg !96
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !105
  %5 = load i64, ptr %tmp, align 8, !dbg !95
  store i32 0, ptr %retval, align 4, !dbg !106
  br label %return, !dbg !106

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !107
  ret i32 %6, !dbg !107
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @vsmp_apic_post_init() #1 align 16 !dbg !108 {
entry:
  %0 = load ptr, ptr @apic, align 8, !dbg !109
  %phys_pkg_id = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 25, !dbg !110
  store ptr @apicid_phys_pkg_id, ptr %phys_pkg_id, align 8, !dbg !111
  ret void, !dbg !112
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @vsmp_cap_cpus() #0 section ".init.text" align 16 !dbg !113 {
entry:
  %address = alloca ptr, align 8
  %cfg = alloca i32, align 4
  %topology = alloca i32, align 4
  %node_shift = alloca i32, align 4
  %maxcpus = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp41 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #11, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %address, metadata !115, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 4, ptr %cfg) #11, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !116, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 4, ptr %topology) #11, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %topology, metadata !117, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 4, ptr %node_shift) #11, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %node_shift, metadata !118, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxcpus) #11, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %maxcpus, metadata !119, metadata !DIExpression()), !dbg !132
  %0 = load i32, ptr @setup_max_cpus, align 4, !dbg !133
  %cmp = icmp ne i32 %0, 64, !dbg !135
  br i1 %cmp, label %if.then, label %if.end, !dbg !136

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !137

if.end:                                           ; preds = %entry
  %call = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext 31, i8 noundef zeroext 0, i8 noundef zeroext 16) #10, !dbg !138
  store i32 %call, ptr %cfg, align 4, !dbg !139
  %1 = load i32, ptr %cfg, align 4, !dbg !140
  %add = add i32 %1, 16, !dbg !141
  %conv = zext i32 %add to i64, !dbg !140
  %call1 = call ptr @early_ioremap(i64 noundef %conv, i64 noundef 4) #10, !dbg !142
  store ptr %call1, ptr %address, align 8, !dbg !143
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !120, metadata !DIExpression()), !dbg !144
  %2 = load ptr, ptr %address, align 8, !dbg !144
  %tobool = icmp ne ptr %2, null, !dbg !144
  %lnot = xor i1 %tobool, true, !dbg !144
  %lnot2 = xor i1 %lnot, true, !dbg !144
  %lnot3 = xor i1 %lnot2, true, !dbg !144
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !144
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !144
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !145
  %tobool4 = icmp ne i32 %3, 0, !dbg !145
  %lnot5 = xor i1 %tobool4, true, !dbg !145
  %lnot7 = xor i1 %lnot5, true, !dbg !145
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !145
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !145
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !145
  %tobool10 = icmp ne i64 %expval, 0, !dbg !145
  br i1 %tobool10, label %if.then11, label %if.end21, !dbg !144

if.then11:                                        ; preds = %if.end
  br label %do.body, !dbg !145

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !123, metadata !DIExpression()), !dbg !146
  store i32 2305, ptr %__flags, align 4, !dbg !146
  br label %do.body12, !dbg !146

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !147

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !147

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !146

do.body13:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !149
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 113, i32 %4, i64 12) #11, !dbg !149, !srcloc !151
  br label %do.cond14, !dbg !149

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !149

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !146

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !152

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !152

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !145
  br label %do.cond19, !dbg !146

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !146

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !146

if.end21:                                         ; preds = %do.end20, %if.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !144
  %tobool22 = icmp ne i32 %5, 0, !dbg !144
  %lnot23 = xor i1 %tobool22, true, !dbg !144
  %lnot25 = xor i1 %lnot23, true, !dbg !144
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !144
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !144
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !144
  store i64 %expval28, ptr %tmp, align 8, !dbg !145
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !154
  %6 = load i64, ptr %tmp, align 8, !dbg !144
  %tobool29 = icmp ne i64 %6, 0, !dbg !154
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !155

if.then30:                                        ; preds = %if.end21
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

if.end31:                                         ; preds = %if.end21
  %7 = load ptr, ptr %address, align 8, !dbg !157
  %call32 = call i32 @readl(ptr noundef %7) #10, !dbg !158
  store i32 %call32, ptr %topology, align 4, !dbg !159
  %8 = load i32, ptr %topology, align 4, !dbg !160
  %shr = lshr i32 %8, 16, !dbg !161
  %and = and i32 %shr, 7, !dbg !162
  store i32 %and, ptr %node_shift, align 4, !dbg !163
  %9 = load i32, ptr %node_shift, align 4, !dbg !164
  %tobool33 = icmp ne i32 %9, 0, !dbg !164
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !166

if.then34:                                        ; preds = %if.end31
  store i32 8, ptr %node_shift, align 4, !dbg !167
  br label %if.end35, !dbg !168

if.end35:                                         ; preds = %if.then34, %if.end31
  %10 = load i32, ptr %topology, align 4, !dbg !169
  %11 = load i32, ptr %node_shift, align 4, !dbg !170
  %shl = shl i32 1, %11, !dbg !171
  %sub = sub i32 %shl, 1, !dbg !172
  %and36 = and i32 %10, %sub, !dbg !173
  %add37 = add i32 %and36, 1, !dbg !174
  store i32 %add37, ptr %maxcpus, align 4, !dbg !175
  br label %do.body38, !dbg !176

do.body38:                                        ; preds = %if.end35
  br label %do.cond39, !dbg !178

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !178

do.end40:                                         ; preds = %do.cond39
  %12 = load i32, ptr %maxcpus, align 4, !dbg !176
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %12) #9, !dbg !176
  store i32 %call42, ptr %tmp41, align 4, !dbg !178
  %13 = load i32, ptr %tmp41, align 4, !dbg !176
  %14 = load i32, ptr %maxcpus, align 4, !dbg !180
  store i32 %14, ptr @setup_max_cpus, align 4, !dbg !181
  %15 = load ptr, ptr %address, align 8, !dbg !182
  call void @early_iounmap(ptr noundef %15, i64 noundef 4) #10, !dbg !183
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !184
  br label %cleanup, !dbg !184

cleanup:                                          ; preds = %do.end40, %if.then30, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxcpus) #11, !dbg !184
  call void @llvm.lifetime.end.p0(i64 4, ptr %node_shift) #11, !dbg !184
  call void @llvm.lifetime.end.p0(i64 4, ptr %topology) #11, !dbg !184
  call void @llvm.lifetime.end.p0(i64 4, ptr %cfg) #11, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #11, !dbg !184
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !184

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @set_vsmp_ctl() #0 section ".init.text" align 16 !dbg !185 {
entry:
  %address = alloca ptr, align 8
  %cap = alloca i32, align 4
  %ctl = alloca i32, align 4
  %cfg = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #11, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %address, metadata !187, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %cap) #11, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !188, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %ctl) #11, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %ctl, metadata !189, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %cfg) #11, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %cfg, metadata !190, metadata !DIExpression()), !dbg !196
  %call = call i32 @read_pci_config(i8 noundef zeroext 0, i8 noundef zeroext 31, i8 noundef zeroext 0, i8 noundef zeroext 16) #10, !dbg !197
  store i32 %call, ptr %cfg, align 4, !dbg !198
  %0 = load i32, ptr %cfg, align 4, !dbg !199
  %conv = zext i32 %0 to i64, !dbg !199
  %call1 = call ptr @early_ioremap(i64 noundef %conv, i64 noundef 8) #10, !dbg !200
  store ptr %call1, ptr %address, align 8, !dbg !201
  %1 = load ptr, ptr %address, align 8, !dbg !202
  %call2 = call i32 @readl(ptr noundef %1) #10, !dbg !203
  store i32 %call2, ptr %cap, align 4, !dbg !204
  %2 = load ptr, ptr %address, align 8, !dbg !205
  %add.ptr = getelementptr i8, ptr %2, i64 4, !dbg !206
  %call3 = call i32 @readl(ptr noundef %add.ptr) #10, !dbg !207
  store i32 %call3, ptr %ctl, align 4, !dbg !208
  br label %do.body, !dbg !209

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !211

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !211

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %cap, align 4, !dbg !209
  %4 = load i32, ptr %ctl, align 4, !dbg !209
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %3, i32 noundef %4) #9, !dbg !209
  store i32 %call4, ptr %tmp, align 4, !dbg !211
  %5 = load i32, ptr %tmp, align 4, !dbg !209
  %6 = load i32, ptr %cap, align 4, !dbg !213
  %7 = load i32, ptr %ctl, align 4, !dbg !215
  %and = and i32 %6, %7, !dbg !216
  %conv5 = zext i32 %and to i64, !dbg !213
  %and6 = and i64 %conv5, 256, !dbg !217
  %tobool = icmp ne i64 %and6, 0, !dbg !217
  br i1 %tobool, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %do.end
  %8 = load i32, ptr %ctl, align 4, !dbg !219
  %conv7 = zext i32 %8 to i64, !dbg !219
  %and8 = and i64 %conv7, -257, !dbg !219
  %conv9 = trunc i64 %and8 to i32, !dbg !219
  store i32 %conv9, ptr %ctl, align 4, !dbg !219
  store i32 1, ptr @no_irq_affinity, align 4, !dbg !221
  br label %if.end, !dbg !222

if.end:                                           ; preds = %if.then, %do.end
  %9 = load i32, ptr %ctl, align 4, !dbg !223
  %10 = load ptr, ptr %address, align 8, !dbg !224
  %add.ptr10 = getelementptr i8, ptr %10, i64 4, !dbg !225
  call void @writel(i32 noundef %9, ptr noundef %add.ptr10) #10, !dbg !226
  %11 = load ptr, ptr %address, align 8, !dbg !227
  %add.ptr11 = getelementptr i8, ptr %11, i64 4, !dbg !228
  %call12 = call i32 @readl(ptr noundef %add.ptr11) #10, !dbg !229
  store i32 %call12, ptr %ctl, align 4, !dbg !230
  br label %do.body13, !dbg !231

do.body13:                                        ; preds = %if.end
  br label %do.cond14, !dbg !233

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !233

do.end15:                                         ; preds = %do.cond14
  %12 = load i32, ptr %ctl, align 4, !dbg !231
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %12) #9, !dbg !231
  store i32 %call17, ptr %tmp16, align 4, !dbg !233
  %13 = load i32, ptr %tmp16, align 4, !dbg !231
  %14 = load ptr, ptr %address, align 8, !dbg !235
  call void @early_iounmap(ptr noundef %14, i64 noundef 8) #10, !dbg !236
  call void @llvm.lifetime.end.p0(i64 4, ptr %cfg) #11, !dbg !237
  call void @llvm.lifetime.end.p0(i64 4, ptr %ctl) #11, !dbg !237
  call void @llvm.lifetime.end.p0(i64 4, ptr %cap) #11, !dbg !237
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #11, !dbg !237
  ret void, !dbg !237
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !238 dso_local i32 @early_pci_allowed() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !240 dso_local i32 @read_pci_config(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apicid_phys_pkg_id(i32 noundef %initial_apic_id, i32 noundef %index_msb) #1 align 16 !dbg !246 {
entry:
  %initial_apic_id.addr = alloca i32, align 4
  %index_msb.addr = alloca i32, align 4
  store i32 %initial_apic_id, ptr %initial_apic_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %initial_apic_id.addr, metadata !250, metadata !DIExpression()), !dbg !252
  store i32 %index_msb, ptr %index_msb.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index_msb.addr, metadata !251, metadata !DIExpression()), !dbg !253
  %call = call i32 @read_apic_id() #10, !dbg !254
  %0 = load i32, ptr %index_msb.addr, align 4, !dbg !255
  %shr = lshr i32 %call, %0, !dbg !256
  ret i32 %shr, !dbg !257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_apic_id() #6 align 16 !dbg !258 {
entry:
  %reg = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #11, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !262, metadata !DIExpression()), !dbg !264
  %call = call i32 @apic_read(i32 noundef 32) #10, !dbg !265
  store i32 %call, ptr %reg, align 4, !dbg !264
  %0 = load ptr, ptr @apic, align 8, !dbg !266
  %get_apic_id = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 26, !dbg !267
  %1 = load ptr, ptr %get_apic_id, align 8, !dbg !267
  %2 = load i32, ptr %reg, align 4, !dbg !268
  %conv = zext i32 %2 to i64, !dbg !268
  %call1 = call i32 %1(i64 noundef %conv) #10, !dbg !266
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #11, !dbg !269
  ret i32 %call1, !dbg !270
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apic_read(i32 noundef %reg) #7 align 16 !dbg !18 {
entry:
  %reg.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !27, metadata !DIExpression()), !dbg !271
  store ptr @__SCT__apic_call_read, ptr %tmp, align 8, !dbg !272
  %0 = load ptr, ptr %tmp, align 8, !dbg !272
  %1 = load i32, ptr %reg.addr, align 4, !dbg !274
  %call = call i32 %0(i32 noundef %1) #10, !dbg !275
  ret i32 %call, !dbg !276
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_read(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !277 dso_local ptr @early_ioremap(i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #6 align 16 !dbg !288 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !296, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !298
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #11, !dbg !298, !srcloc !299
  store i32 %1, ptr %ret, align 4, !dbg !298
  %2 = load i32, ptr %ret, align 4, !dbg !298
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !298
  ret i32 %2, !dbg !298
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !300 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !306 dso_local void @early_iounmap(ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #6 align 16 !dbg !309 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !314, metadata !DIExpression()), !dbg !316
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load i32, ptr %val.addr, align 4, !dbg !316
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !316
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #11, !dbg !316, !srcloc !317
  ret void, !dbg !316
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "is_vsmp", scope: !2, file: !3, line: 58, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.vsmp_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/vsmp_64\22 -D KBUILD_BASENAME=\22vsmp_64\22 -D KBUILD_MODNAME=\22vsmp_64\22 -D __KBUILD_MODNAME=kmod_vsmp_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/vsmp_64.ll arch/x86/kernel/vsmp_64.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/vsmp_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc73163cd1e8d6dc96dafa6c06e7b355")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!0, !10, !16, !28, !33, !38}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !12, isLocal: true, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 208, elements: !14)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!15}
!15 = !DISubrange(count: 26)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_read206", scope: !18, file: !19, line: 399, type: !5, isLocal: true, isDefinition: true)
!18 = distinct !DISubprogram(name: "apic_read", scope: !19, file: !19, line: 397, type: !20, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!19 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !22}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !8)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !{!27}
!27 = !DILocalVariable(name: "reg", arg: 1, scope: !18, file: !19, line: 397, type: !22)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 472, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 59)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !3, line: 37, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 392, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 49)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 280, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 35)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 8, !"cf-protection-branch", i32 1}
!48 = !{i32 4, !"function_return_thunk_extern", i32 1}
!49 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!50 = !{i32 1, !"Code Model", i32 2}
!51 = !{i32 1, !"override-stack-alignment", i32 8}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = distinct !DISubprogram(name: "vsmp_init", scope: !3, file: !3, line: 141, type: !54, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{null}
!56 = !DILocation(line: 143, column: 2, scope: !53)
!57 = !DILocation(line: 144, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !3, line: 144, column: 6)
!59 = !DILocation(line: 144, column: 6, scope: !53)
!60 = !DILocation(line: 145, column: 3, scope: !58)
!61 = !DILocation(line: 147, column: 30, scope: !53)
!62 = !DILocation(line: 149, column: 2, scope: !53)
!63 = !DILocation(line: 151, column: 2, scope: !53)
!64 = !DILocation(line: 152, column: 2, scope: !53)
!65 = !DILocation(line: 153, column: 1, scope: !53)
!66 = distinct !DISubprogram(name: "detect_vsmp_box", scope: !3, file: !3, line: 60, type: !54, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!67 = !DILocation(line: 62, column: 10, scope: !66)
!68 = !DILocation(line: 64, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 64, column: 6)
!70 = !DILocation(line: 64, column: 6, scope: !66)
!71 = !DILocation(line: 65, column: 3, scope: !69)
!72 = !DILocation(line: 68, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 68, column: 6)
!74 = !DILocation(line: 68, column: 49, scope: !73)
!75 = !DILocation(line: 68, column: 6, scope: !66)
!76 = !DILocation(line: 70, column: 11, scope: !73)
!77 = !DILocation(line: 70, column: 3, scope: !73)
!78 = !DILocation(line: 71, column: 1, scope: !66)
!79 = distinct !DISubprogram(name: "is_vsmp_box", scope: !3, file: !3, line: 73, type: !80, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{!43}
!82 = !{!83, !87}
!83 = !DILocalVariable(name: "__ret_warn_on", scope: !84, file: !3, line: 78, type: !43)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 78, column: 3)
!85 = distinct !DILexicalBlock(scope: !86, file: !3, line: 77, column: 7)
!86 = distinct !DILexicalBlock(scope: !79, file: !3, line: 75, column: 6)
!87 = !DILocalVariable(name: "__flags", scope: !88, file: !3, line: 78, type: !43)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 78, column: 3)
!89 = distinct !DILexicalBlock(scope: !84, file: !3, line: 78, column: 3)
!90 = !DILocation(line: 75, column: 6, scope: !86)
!91 = !DILocation(line: 75, column: 14, scope: !86)
!92 = !DILocation(line: 75, column: 6, scope: !79)
!93 = !DILocation(line: 76, column: 10, scope: !86)
!94 = !DILocation(line: 76, column: 3, scope: !86)
!95 = !DILocation(line: 78, column: 3, scope: !84)
!96 = !DILocation(line: 78, column: 3, scope: !89)
!97 = !DILocation(line: 78, column: 3, scope: !88)
!98 = !DILocation(line: 78, column: 3, scope: !99)
!99 = distinct !DILexicalBlock(scope: !88, file: !3, line: 78, column: 3)
!100 = !DILocation(line: 78, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !88, file: !3, line: 78, column: 3)
!102 = !{i64 2153229833, i64 2153229862, i64 2153229908, i64 2153229966, i64 2153230020, i64 2153230074, i64 2153230129, i64 2153230160, i64 2153230468, i64 2153230474, i64 2153230521, i64 2153230544, i64 2153230570}
!103 = !DILocation(line: 78, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !88, file: !3, line: 78, column: 3)
!105 = !DILocation(line: 78, column: 3, scope: !85)
!106 = !DILocation(line: 79, column: 3, scope: !85)
!107 = !DILocation(line: 81, column: 1, scope: !79)
!108 = distinct !DISubprogram(name: "vsmp_apic_post_init", scope: !3, file: !3, line: 135, type: !54, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!109 = !DILocation(line: 138, column: 2, scope: !108)
!110 = !DILocation(line: 138, column: 8, scope: !108)
!111 = !DILocation(line: 138, column: 20, scope: !108)
!112 = !DILocation(line: 139, column: 1, scope: !108)
!113 = distinct !DISubprogram(name: "vsmp_cap_cpus", scope: !3, file: !3, line: 96, type: !54, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !123}
!115 = !DILocalVariable(name: "address", scope: !113, file: !3, line: 99, type: !5)
!116 = !DILocalVariable(name: "cfg", scope: !113, file: !3, line: 100, type: !8)
!117 = !DILocalVariable(name: "topology", scope: !113, file: !3, line: 100, type: !8)
!118 = !DILocalVariable(name: "node_shift", scope: !113, file: !3, line: 100, type: !8)
!119 = !DILocalVariable(name: "maxcpus", scope: !113, file: !3, line: 100, type: !8)
!120 = !DILocalVariable(name: "__ret_warn_on", scope: !121, file: !3, line: 113, type: !43)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 113, column: 6)
!122 = distinct !DILexicalBlock(scope: !113, file: !3, line: 113, column: 6)
!123 = !DILocalVariable(name: "__flags", scope: !124, file: !3, line: 113, type: !43)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 113, column: 6)
!125 = distinct !DILexicalBlock(scope: !121, file: !3, line: 113, column: 6)
!126 = !DILocation(line: 99, column: 2, scope: !113)
!127 = !DILocation(line: 99, column: 16, scope: !113)
!128 = !DILocation(line: 100, column: 2, scope: !113)
!129 = !DILocation(line: 100, column: 15, scope: !113)
!130 = !DILocation(line: 100, column: 20, scope: !113)
!131 = !DILocation(line: 100, column: 30, scope: !113)
!132 = !DILocation(line: 100, column: 42, scope: !113)
!133 = !DILocation(line: 107, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !113, file: !3, line: 107, column: 6)
!135 = !DILocation(line: 107, column: 21, scope: !134)
!136 = !DILocation(line: 107, column: 6, scope: !113)
!137 = !DILocation(line: 108, column: 3, scope: !134)
!138 = !DILocation(line: 111, column: 8, scope: !113)
!139 = !DILocation(line: 111, column: 6, scope: !113)
!140 = !DILocation(line: 112, column: 26, scope: !113)
!141 = !DILocation(line: 112, column: 30, scope: !113)
!142 = !DILocation(line: 112, column: 12, scope: !113)
!143 = !DILocation(line: 112, column: 10, scope: !113)
!144 = !DILocation(line: 113, column: 6, scope: !121)
!145 = !DILocation(line: 113, column: 6, scope: !125)
!146 = !DILocation(line: 113, column: 6, scope: !124)
!147 = !DILocation(line: 113, column: 6, scope: !148)
!148 = distinct !DILexicalBlock(scope: !124, file: !3, line: 113, column: 6)
!149 = !DILocation(line: 113, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !124, file: !3, line: 113, column: 6)
!151 = !{i64 2153231501, i64 2153231530, i64 2153231576, i64 2153231634, i64 2153231688, i64 2153231742, i64 2153231797, i64 2153231828, i64 2153232136, i64 2153232142, i64 2153232189, i64 2153232212, i64 2153232238}
!152 = !DILocation(line: 113, column: 6, scope: !153)
!153 = distinct !DILexicalBlock(scope: !124, file: !3, line: 113, column: 6)
!154 = !DILocation(line: 113, column: 6, scope: !122)
!155 = !DILocation(line: 113, column: 6, scope: !113)
!156 = !DILocation(line: 114, column: 3, scope: !122)
!157 = !DILocation(line: 116, column: 19, scope: !113)
!158 = !DILocation(line: 116, column: 13, scope: !113)
!159 = !DILocation(line: 116, column: 11, scope: !113)
!160 = !DILocation(line: 117, column: 16, scope: !113)
!161 = !DILocation(line: 117, column: 25, scope: !113)
!162 = !DILocation(line: 117, column: 32, scope: !113)
!163 = !DILocation(line: 117, column: 13, scope: !113)
!164 = !DILocation(line: 118, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !113, file: !3, line: 118, column: 6)
!166 = !DILocation(line: 118, column: 6, scope: !113)
!167 = !DILocation(line: 120, column: 14, scope: !165)
!168 = !DILocation(line: 120, column: 3, scope: !165)
!169 = !DILocation(line: 121, column: 13, scope: !113)
!170 = !DILocation(line: 121, column: 31, scope: !113)
!171 = !DILocation(line: 121, column: 28, scope: !113)
!172 = !DILocation(line: 121, column: 43, scope: !113)
!173 = !DILocation(line: 121, column: 22, scope: !113)
!174 = !DILocation(line: 121, column: 49, scope: !113)
!175 = !DILocation(line: 121, column: 10, scope: !113)
!176 = !DILocation(line: 123, column: 2, scope: !177)
!177 = distinct !DILexicalBlock(scope: !113, file: !3, line: 123, column: 2)
!178 = !DILocation(line: 123, column: 2, scope: !179)
!179 = distinct !DILexicalBlock(scope: !177, file: !3, line: 123, column: 2)
!180 = !DILocation(line: 125, column: 19, scope: !113)
!181 = !DILocation(line: 125, column: 17, scope: !113)
!182 = !DILocation(line: 126, column: 16, scope: !113)
!183 = !DILocation(line: 126, column: 2, scope: !113)
!184 = !DILocation(line: 128, column: 1, scope: !113)
!185 = distinct !DISubprogram(name: "set_vsmp_ctl", scope: !3, file: !3, line: 27, type: !54, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!186 = !{!187, !188, !189, !190}
!187 = !DILocalVariable(name: "address", scope: !185, file: !3, line: 29, type: !5)
!188 = !DILocalVariable(name: "cap", scope: !185, file: !3, line: 30, type: !8)
!189 = !DILocalVariable(name: "ctl", scope: !185, file: !3, line: 30, type: !8)
!190 = !DILocalVariable(name: "cfg", scope: !185, file: !3, line: 30, type: !8)
!191 = !DILocation(line: 29, column: 2, scope: !185)
!192 = !DILocation(line: 29, column: 16, scope: !185)
!193 = !DILocation(line: 30, column: 2, scope: !185)
!194 = !DILocation(line: 30, column: 15, scope: !185)
!195 = !DILocation(line: 30, column: 20, scope: !185)
!196 = !DILocation(line: 30, column: 25, scope: !185)
!197 = !DILocation(line: 33, column: 8, scope: !185)
!198 = !DILocation(line: 33, column: 6, scope: !185)
!199 = !DILocation(line: 34, column: 26, scope: !185)
!200 = !DILocation(line: 34, column: 12, scope: !185)
!201 = !DILocation(line: 34, column: 10, scope: !185)
!202 = !DILocation(line: 35, column: 14, scope: !185)
!203 = !DILocation(line: 35, column: 8, scope: !185)
!204 = !DILocation(line: 35, column: 6, scope: !185)
!205 = !DILocation(line: 36, column: 14, scope: !185)
!206 = !DILocation(line: 36, column: 22, scope: !185)
!207 = !DILocation(line: 36, column: 8, scope: !185)
!208 = !DILocation(line: 36, column: 6, scope: !185)
!209 = !DILocation(line: 37, column: 2, scope: !210)
!210 = distinct !DILexicalBlock(scope: !185, file: !3, line: 37, column: 2)
!211 = !DILocation(line: 37, column: 2, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !3, line: 37, column: 2)
!213 = !DILocation(line: 42, column: 6, scope: !214)
!214 = distinct !DILexicalBlock(scope: !185, file: !3, line: 42, column: 6)
!215 = !DILocation(line: 42, column: 12, scope: !214)
!216 = !DILocation(line: 42, column: 10, scope: !214)
!217 = !DILocation(line: 42, column: 16, scope: !214)
!218 = !DILocation(line: 42, column: 6, scope: !185)
!219 = !DILocation(line: 43, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !3, line: 42, column: 26)
!221 = !DILocation(line: 47, column: 19, scope: !220)
!222 = !DILocation(line: 49, column: 2, scope: !220)
!223 = !DILocation(line: 52, column: 9, scope: !185)
!224 = !DILocation(line: 52, column: 14, scope: !185)
!225 = !DILocation(line: 52, column: 22, scope: !185)
!226 = !DILocation(line: 52, column: 2, scope: !185)
!227 = !DILocation(line: 53, column: 14, scope: !185)
!228 = !DILocation(line: 53, column: 22, scope: !185)
!229 = !DILocation(line: 53, column: 8, scope: !185)
!230 = !DILocation(line: 53, column: 6, scope: !185)
!231 = !DILocation(line: 54, column: 2, scope: !232)
!232 = distinct !DILexicalBlock(scope: !185, file: !3, line: 54, column: 2)
!233 = !DILocation(line: 54, column: 2, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !3, line: 54, column: 2)
!235 = !DILocation(line: 56, column: 16, scope: !185)
!236 = !DILocation(line: 56, column: 2, scope: !185)
!237 = !DILocation(line: 57, column: 1, scope: !185)
!238 = !DISubprogram(name: "early_pci_allowed", scope: !239, file: !239, line: 17, type: !80, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DIFile(filename: "./arch/x86/include/asm/pci-direct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09799ff96bfe39e3d200f5cb3dffbc74")
!240 = !DISubprogram(name: "read_pci_config", scope: !239, file: !239, line: 10, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{!22, !243, !243, !243, !243}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !245)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = distinct !DISubprogram(name: "apicid_phys_pkg_id", scope: !3, file: !3, line: 130, type: !247, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!43, !43, !43}
!249 = !{!250, !251}
!250 = !DILocalVariable(name: "initial_apic_id", arg: 1, scope: !246, file: !3, line: 130, type: !43)
!251 = !DILocalVariable(name: "index_msb", arg: 2, scope: !246, file: !3, line: 130, type: !43)
!252 = !DILocation(line: 130, column: 35, scope: !246)
!253 = !DILocation(line: 130, column: 56, scope: !246)
!254 = !DILocation(line: 132, column: 9, scope: !246)
!255 = !DILocation(line: 132, column: 27, scope: !246)
!256 = !DILocation(line: 132, column: 24, scope: !246)
!257 = !DILocation(line: 132, column: 2, scope: !246)
!258 = distinct !DISubprogram(name: "read_apic_id", scope: !19, file: !19, line: 522, type: !259, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!8}
!261 = !{!262}
!262 = !DILocalVariable(name: "reg", scope: !258, file: !19, line: 524, type: !8)
!263 = !DILocation(line: 524, column: 2, scope: !258)
!264 = !DILocation(line: 524, column: 15, scope: !258)
!265 = !DILocation(line: 524, column: 21, scope: !258)
!266 = !DILocation(line: 526, column: 9, scope: !258)
!267 = !DILocation(line: 526, column: 15, scope: !258)
!268 = !DILocation(line: 526, column: 27, scope: !258)
!269 = !DILocation(line: 527, column: 1, scope: !258)
!270 = !DILocation(line: 526, column: 2, scope: !258)
!271 = !DILocation(line: 397, column: 42, scope: !18)
!272 = !DILocation(line: 399, column: 9, scope: !273)
!273 = distinct !DILexicalBlock(scope: !18, file: !19, line: 399, column: 9)
!274 = !DILocation(line: 399, column: 37, scope: !18)
!275 = !DILocation(line: 399, column: 9, scope: !18)
!276 = !DILocation(line: 399, column: 2, scope: !18)
!277 = !DISubprogram(name: "early_ioremap", scope: !278, file: !278, line: 11, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DIFile(filename: "./include/asm-generic/early_ioremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f963a4865cd884f109103123c55bb3b2")
!279 = !DISubroutineType(types: !280)
!280 = !{!5, !281, !287}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !282, line: 164, baseType: !283)
!282 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !282, line: 159, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !286)
!286 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!287 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!288 = distinct !DISubprogram(name: "readl", scope: !289, file: !289, line: 58, type: !290, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !295)
!289 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!290 = !DISubroutineType(types: !291)
!291 = !{!8, !292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!295 = !{!296, !297}
!296 = !DILocalVariable(name: "addr", arg: 1, scope: !288, file: !289, line: 58, type: !292)
!297 = !DILocalVariable(name: "ret", scope: !288, file: !289, line: 58, type: !8)
!298 = !DILocation(line: 58, column: 1, scope: !288)
!299 = !{i64 2151520002}
!300 = !DISubprogram(name: "_printk", scope: !301, file: !301, line: 153, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!302 = !DISubroutineType(types: !303)
!303 = !{!43, !304, null}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!306 = !DISubprogram(name: "early_iounmap", scope: !278, file: !278, line: 19, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !5, !287}
!309 = distinct !DISubprogram(name: "writel", scope: !289, file: !289, line: 66, type: !310, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !8, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!313 = !{!314, !315}
!314 = !DILocalVariable(name: "val", arg: 1, scope: !309, file: !289, line: 66, type: !8)
!315 = !DILocalVariable(name: "addr", arg: 2, scope: !309, file: !289, line: 66, type: !312)
!316 = !DILocation(line: 66, column: 1, scope: !309)
!317 = !{i64 2151522395}
