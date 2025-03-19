; ModuleID = 'drivers/net/phy/swphy.c'
source_filename = "drivers/net/phy/swphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_swphy_validate_state: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad swphy_validate_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_swphy_read_reg: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad swphy_read_reg ; .previous"

%struct.swmii_regs = type { i16, i16, i16, i16 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"\014swphy: unknown speed\0A\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_swphy_validate_state338 = internal global ptr @swphy_validate_state, section ".discard.addressable", align 8, !dbg !7
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/net/phy/swphy.c\00", align 1, !dbg !22
@speed = internal constant [3 x %struct.swmii_regs] [%struct.swmii_regs { i16 0, i16 96, i16 0, i16 0 }, %struct.swmii_regs { i16 24576, i16 384, i16 0, i16 0 }, %struct.swmii_regs { i16 256, i16 0, i16 3072, i16 12288 }], align 16, !dbg !26
@duplex = internal constant [2 x %struct.swmii_regs] [%struct.swmii_regs { i16 8448, i16 160, i16 1024, i16 4096 }, %struct.swmii_regs { i16 16640, i16 320, i16 2048, i16 8192 }], align 16, !dbg !43
@__UNIQUE_ID___addressable_swphy_read_reg339 = internal global ptr @swphy_read_reg, section ".discard.addressable", align 8, !dbg !24
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_swphy_validate_state338, ptr @__UNIQUE_ID___addressable_swphy_read_reg339], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @swphy_validate_state(ptr noundef %state) #0 align 16 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !72, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #5, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %err, metadata !73, metadata !DIExpression()), !dbg !76
  %0 = load ptr, ptr %state.addr, align 8, !dbg !77
  %link = getelementptr inbounds %struct.fixed_phy_status, ptr %0, i32 0, i32 0, !dbg !79
  %1 = load i32, ptr %link, align 4, !dbg !79
  %tobool = icmp ne i32 %1, 0, !dbg !77
  br i1 %tobool, label %if.then, label %if.end3, !dbg !80

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %state.addr, align 8, !dbg !81
  %speed = getelementptr inbounds %struct.fixed_phy_status, ptr %2, i32 0, i32 1, !dbg !83
  %3 = load i32, ptr %speed, align 4, !dbg !83
  %call = call i32 @swphy_decode_speed(i32 noundef %3) #6, !dbg !84
  store i32 %call, ptr %err, align 4, !dbg !85
  %4 = load i32, ptr %err, align 4, !dbg !86
  %cmp = icmp slt i32 %4, 0, !dbg !88
  br i1 %cmp, label %if.then1, label %if.end, !dbg !89

if.then1:                                         ; preds = %if.then
  br label %do.body, !dbg !90

do.body:                                          ; preds = %if.then1
  br label %do.cond, !dbg !93

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !93

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #7, !dbg !90
  store i32 %call2, ptr %tmp, align 4, !dbg !93
  %5 = load i32, ptr %tmp, align 4, !dbg !90
  store i32 -22, ptr %retval, align 4, !dbg !95
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !95

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !96

if.end3:                                          ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

cleanup:                                          ; preds = %if.end3, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #5, !dbg !98
  %6 = load i32, ptr %retval, align 4, !dbg !98
  ret i32 %6, !dbg !98
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @swphy_decode_speed(i32 noundef %speed) #0 align 16 !dbg !99 {
entry:
  %retval = alloca i32, align 4
  %speed.addr = alloca i32, align 4
  store i32 %speed, ptr %speed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %speed.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i32, ptr %speed.addr, align 4, !dbg !105
  switch i32 %0, label %sw.default [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb1
    i32 10, label %sw.bb2
  ], !dbg !106

sw.bb:                                            ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !107
  br label %return, !dbg !107

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !109
  br label %return, !dbg !109

sw.bb2:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !110
  br label %return, !dbg !110

sw.default:                                       ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !111
  br label %return, !dbg !111

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4, !dbg !112
  ret i32 %1, !dbg !112
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !113 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @swphy_read_reg(i32 noundef %reg, ptr noundef %state) #0 align 16 !dbg !119 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %speed_index = alloca i32, align 4
  %duplex_index = alloca i32, align 4
  %bmsr = alloca i16, align 2
  %estat = alloca i16, align 2
  %lpagb = alloca i16, align 2
  %lpa = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !123, metadata !DIExpression()), !dbg !137
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !124, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %speed_index) #5, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %speed_index, metadata !125, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 4, ptr %duplex_index) #5, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %duplex_index, metadata !126, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 2, ptr %bmsr) #5, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %bmsr, metadata !127, metadata !DIExpression()), !dbg !143
  store i16 8, ptr %bmsr, align 2, !dbg !143
  call void @llvm.lifetime.start.p0(i64 2, ptr %estat) #5, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %estat, metadata !128, metadata !DIExpression()), !dbg !145
  store i16 0, ptr %estat, align 2, !dbg !145
  call void @llvm.lifetime.start.p0(i64 2, ptr %lpagb) #5, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %lpagb, metadata !129, metadata !DIExpression()), !dbg !147
  store i16 0, ptr %lpagb, align 2, !dbg !147
  call void @llvm.lifetime.start.p0(i64 2, ptr %lpa) #5, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %lpa, metadata !130, metadata !DIExpression()), !dbg !149
  store i16 0, ptr %lpa, align 2, !dbg !149
  %0 = load i32, ptr %reg.addr, align 4, !dbg !150
  %cmp = icmp sgt i32 %0, 29, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !154

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !155
  %speed = getelementptr inbounds %struct.fixed_phy_status, ptr %1, i32 0, i32 1, !dbg !156
  %2 = load i32, ptr %speed, align 4, !dbg !156
  %call = call i32 @swphy_decode_speed(i32 noundef %2) #6, !dbg !157
  store i32 %call, ptr %speed_index, align 4, !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !131, metadata !DIExpression()), !dbg !159
  %3 = load i32, ptr %speed_index, align 4, !dbg !159
  %cmp1 = icmp slt i32 %3, 0, !dbg !159
  %lnot = xor i1 %cmp1, true, !dbg !159
  %lnot2 = xor i1 %lnot, true, !dbg !159
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !159
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !159
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !160
  %tobool = icmp ne i32 %4, 0, !dbg !160
  %lnot3 = xor i1 %tobool, true, !dbg !160
  %lnot5 = xor i1 %lnot3, true, !dbg !160
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !160
  %conv = sext i32 %lnot.ext6 to i64, !dbg !160
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !160
  %tobool7 = icmp ne i64 %expval, 0, !dbg !160
  br i1 %tobool7, label %if.then8, label %if.end18, !dbg !159

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !160

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #5, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !134, metadata !DIExpression()), !dbg !161
  store i32 2305, ptr %__flags, align 4, !dbg !161
  br label %do.body9, !dbg !161

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !162

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !162

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !161

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !164
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 127, i32 %5, i64 12) #5, !dbg !164, !srcloc !166
  br label %do.cond11, !dbg !164

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !164

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !161

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !167

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !167

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #5, !dbg !160
  br label %do.cond16, !dbg !161

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !161

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !161

if.end18:                                         ; preds = %do.end17, %if.end
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !159
  %tobool19 = icmp ne i32 %6, 0, !dbg !159
  %lnot20 = xor i1 %tobool19, true, !dbg !159
  %lnot22 = xor i1 %lnot20, true, !dbg !159
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !159
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !159
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !159
  store i64 %expval25, ptr %tmp, align 8, !dbg !160
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #5, !dbg !169
  %7 = load i64, ptr %tmp, align 8, !dbg !159
  %tobool26 = icmp ne i64 %7, 0, !dbg !169
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !170

if.then27:                                        ; preds = %if.end18
  store i32 0, ptr %retval, align 4, !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !171

if.end28:                                         ; preds = %if.end18
  %8 = load ptr, ptr %state.addr, align 8, !dbg !172
  %duplex = getelementptr inbounds %struct.fixed_phy_status, ptr %8, i32 0, i32 2, !dbg !173
  %9 = load i32, ptr %duplex, align 4, !dbg !173
  %tobool29 = icmp ne i32 %9, 0, !dbg !172
  %10 = zext i1 %tobool29 to i64, !dbg !172
  %cond = select i1 %tobool29, i32 1, i32 0, !dbg !172
  store i32 %cond, ptr %duplex_index, align 4, !dbg !174
  %11 = load i32, ptr %speed_index, align 4, !dbg !175
  %idxprom = sext i32 %11 to i64, !dbg !176
  %arrayidx = getelementptr [3 x %struct.swmii_regs], ptr @speed, i64 0, i64 %idxprom, !dbg !176
  %bmsr30 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx, i32 0, i32 0, !dbg !177
  %12 = load i16, ptr %bmsr30, align 8, !dbg !177
  %conv31 = zext i16 %12 to i32, !dbg !176
  %13 = load i32, ptr %duplex_index, align 4, !dbg !178
  %idxprom32 = sext i32 %13 to i64, !dbg !179
  %arrayidx33 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i64 0, i64 %idxprom32, !dbg !179
  %bmsr34 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx33, i32 0, i32 0, !dbg !180
  %14 = load i16, ptr %bmsr34, align 8, !dbg !180
  %conv35 = zext i16 %14 to i32, !dbg !179
  %and = and i32 %conv31, %conv35, !dbg !181
  %15 = load i16, ptr %bmsr, align 2, !dbg !182
  %conv36 = zext i16 %15 to i32, !dbg !182
  %or = or i32 %conv36, %and, !dbg !182
  %conv37 = trunc i32 %or to i16, !dbg !182
  store i16 %conv37, ptr %bmsr, align 2, !dbg !182
  %16 = load i32, ptr %speed_index, align 4, !dbg !183
  %idxprom38 = sext i32 %16 to i64, !dbg !184
  %arrayidx39 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i64 0, i64 %idxprom38, !dbg !184
  %estat40 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx39, i32 0, i32 3, !dbg !185
  %17 = load i16, ptr %estat40, align 2, !dbg !185
  %conv41 = zext i16 %17 to i32, !dbg !184
  %18 = load i32, ptr %duplex_index, align 4, !dbg !186
  %idxprom42 = sext i32 %18 to i64, !dbg !187
  %arrayidx43 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i64 0, i64 %idxprom42, !dbg !187
  %estat44 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx43, i32 0, i32 3, !dbg !188
  %19 = load i16, ptr %estat44, align 2, !dbg !188
  %conv45 = zext i16 %19 to i32, !dbg !187
  %and46 = and i32 %conv41, %conv45, !dbg !189
  %20 = load i16, ptr %estat, align 2, !dbg !190
  %conv47 = zext i16 %20 to i32, !dbg !190
  %or48 = or i32 %conv47, %and46, !dbg !190
  %conv49 = trunc i32 %or48 to i16, !dbg !190
  store i16 %conv49, ptr %estat, align 2, !dbg !190
  %21 = load ptr, ptr %state.addr, align 8, !dbg !191
  %link = getelementptr inbounds %struct.fixed_phy_status, ptr %21, i32 0, i32 0, !dbg !193
  %22 = load i32, ptr %link, align 4, !dbg !193
  %tobool50 = icmp ne i32 %22, 0, !dbg !191
  br i1 %tobool50, label %if.then51, label %if.end91, !dbg !194

if.then51:                                        ; preds = %if.end28
  %23 = load i16, ptr %bmsr, align 2, !dbg !195
  %conv52 = zext i16 %23 to i32, !dbg !195
  %or53 = or i32 %conv52, 36, !dbg !195
  %conv54 = trunc i32 %or53 to i16, !dbg !195
  store i16 %conv54, ptr %bmsr, align 2, !dbg !195
  %24 = load i32, ptr %speed_index, align 4, !dbg !197
  %idxprom55 = sext i32 %24 to i64, !dbg !198
  %arrayidx56 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i64 0, i64 %idxprom55, !dbg !198
  %lpa57 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx56, i32 0, i32 1, !dbg !199
  %25 = load i16, ptr %lpa57, align 2, !dbg !199
  %conv58 = zext i16 %25 to i32, !dbg !198
  %26 = load i32, ptr %duplex_index, align 4, !dbg !200
  %idxprom59 = sext i32 %26 to i64, !dbg !201
  %arrayidx60 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i64 0, i64 %idxprom59, !dbg !201
  %lpa61 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx60, i32 0, i32 1, !dbg !202
  %27 = load i16, ptr %lpa61, align 2, !dbg !202
  %conv62 = zext i16 %27 to i32, !dbg !201
  %and63 = and i32 %conv58, %conv62, !dbg !203
  %28 = load i16, ptr %lpa, align 2, !dbg !204
  %conv64 = zext i16 %28 to i32, !dbg !204
  %or65 = or i32 %conv64, %and63, !dbg !204
  %conv66 = trunc i32 %or65 to i16, !dbg !204
  store i16 %conv66, ptr %lpa, align 2, !dbg !204
  %29 = load i32, ptr %speed_index, align 4, !dbg !205
  %idxprom67 = sext i32 %29 to i64, !dbg !206
  %arrayidx68 = getelementptr [3 x %struct.swmii_regs], ptr @speed, i64 0, i64 %idxprom67, !dbg !206
  %lpagb69 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx68, i32 0, i32 2, !dbg !207
  %30 = load i16, ptr %lpagb69, align 4, !dbg !207
  %conv70 = zext i16 %30 to i32, !dbg !206
  %31 = load i32, ptr %duplex_index, align 4, !dbg !208
  %idxprom71 = sext i32 %31 to i64, !dbg !209
  %arrayidx72 = getelementptr [2 x %struct.swmii_regs], ptr @duplex, i64 0, i64 %idxprom71, !dbg !209
  %lpagb73 = getelementptr inbounds %struct.swmii_regs, ptr %arrayidx72, i32 0, i32 2, !dbg !210
  %32 = load i16, ptr %lpagb73, align 4, !dbg !210
  %conv74 = zext i16 %32 to i32, !dbg !209
  %and75 = and i32 %conv70, %conv74, !dbg !211
  %33 = load i16, ptr %lpagb, align 2, !dbg !212
  %conv76 = zext i16 %33 to i32, !dbg !212
  %or77 = or i32 %conv76, %and75, !dbg !212
  %conv78 = trunc i32 %or77 to i16, !dbg !212
  store i16 %conv78, ptr %lpagb, align 2, !dbg !212
  %34 = load ptr, ptr %state.addr, align 8, !dbg !213
  %pause = getelementptr inbounds %struct.fixed_phy_status, ptr %34, i32 0, i32 3, !dbg !215
  %35 = load i32, ptr %pause, align 4, !dbg !215
  %tobool79 = icmp ne i32 %35, 0, !dbg !213
  br i1 %tobool79, label %if.then80, label %if.end84, !dbg !216

if.then80:                                        ; preds = %if.then51
  %36 = load i16, ptr %lpa, align 2, !dbg !217
  %conv81 = zext i16 %36 to i32, !dbg !217
  %or82 = or i32 %conv81, 1024, !dbg !217
  %conv83 = trunc i32 %or82 to i16, !dbg !217
  store i16 %conv83, ptr %lpa, align 2, !dbg !217
  br label %if.end84, !dbg !218

if.end84:                                         ; preds = %if.then80, %if.then51
  %37 = load ptr, ptr %state.addr, align 8, !dbg !219
  %asym_pause = getelementptr inbounds %struct.fixed_phy_status, ptr %37, i32 0, i32 4, !dbg !221
  %38 = load i32, ptr %asym_pause, align 4, !dbg !221
  %tobool85 = icmp ne i32 %38, 0, !dbg !219
  br i1 %tobool85, label %if.then86, label %if.end90, !dbg !222

if.then86:                                        ; preds = %if.end84
  %39 = load i16, ptr %lpa, align 2, !dbg !223
  %conv87 = zext i16 %39 to i32, !dbg !223
  %or88 = or i32 %conv87, 2048, !dbg !223
  %conv89 = trunc i32 %or88 to i16, !dbg !223
  store i16 %conv89, ptr %lpa, align 2, !dbg !223
  br label %if.end90, !dbg !224

if.end90:                                         ; preds = %if.then86, %if.end84
  br label %if.end91, !dbg !225

if.end91:                                         ; preds = %if.end90, %if.end28
  %40 = load i32, ptr %reg.addr, align 4, !dbg !226
  switch i32 %40, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb92
    i32 2, label %sw.bb94
    i32 3, label %sw.bb94
    i32 5, label %sw.bb95
    i32 10, label %sw.bb97
    i32 15, label %sw.bb99
    i32 13, label %sw.bb101
    i32 14, label %sw.bb101
  ], !dbg !227

sw.bb:                                            ; preds = %if.end91
  store i32 4096, ptr %retval, align 4, !dbg !228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !228

sw.bb92:                                          ; preds = %if.end91
  %41 = load i16, ptr %bmsr, align 2, !dbg !230
  %conv93 = zext i16 %41 to i32, !dbg !230
  store i32 %conv93, ptr %retval, align 4, !dbg !231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !231

sw.bb94:                                          ; preds = %if.end91, %if.end91
  store i32 0, ptr %retval, align 4, !dbg !232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !232

sw.bb95:                                          ; preds = %if.end91
  %42 = load i16, ptr %lpa, align 2, !dbg !233
  %conv96 = zext i16 %42 to i32, !dbg !233
  store i32 %conv96, ptr %retval, align 4, !dbg !234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !234

sw.bb97:                                          ; preds = %if.end91
  %43 = load i16, ptr %lpagb, align 2, !dbg !235
  %conv98 = zext i16 %43 to i32, !dbg !235
  store i32 %conv98, ptr %retval, align 4, !dbg !236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !236

sw.bb99:                                          ; preds = %if.end91
  %44 = load i16, ptr %estat, align 2, !dbg !237
  %conv100 = zext i16 %44 to i32, !dbg !237
  store i32 %conv100, ptr %retval, align 4, !dbg !238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !238

sw.bb101:                                         ; preds = %if.end91, %if.end91
  store i32 -1, ptr %retval, align 4, !dbg !239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !239

sw.default:                                       ; preds = %if.end91
  store i32 65535, ptr %retval, align 4, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !240

cleanup:                                          ; preds = %sw.default, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb94, %sw.bb92, %sw.bb, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %lpa) #5, !dbg !241
  call void @llvm.lifetime.end.p0(i64 2, ptr %lpagb) #5, !dbg !241
  call void @llvm.lifetime.end.p0(i64 2, ptr %estat) #5, !dbg !241
  call void @llvm.lifetime.end.p0(i64 2, ptr %bmsr) #5, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %duplex_index) #5, !dbg !241
  call void @llvm.lifetime.end.p0(i64 4, ptr %speed_index) #5, !dbg !241
  %45 = load i32, ptr %retval, align 4, !dbg !241
  ret i32 %45, !dbg !241
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/net/phy/swphy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbe2a57e074e411ab76021e9474dda68")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_swphy_validate_state338", scope: !9, file: !2, line: 106, type: !20, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/net/phy/.swphy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/net/phy/libphy\22 -D KBUILD_BASENAME=\22swphy\22 -D KBUILD_MODNAME=\22libphy\22 -D __KBUILD_MODNAME=kmod_libphy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/net/phy/swphy.ll drivers/net/phy/swphy.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !19, globals: !21, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 28, baseType: !12, size: 32, elements: !13)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "SWMII_SPEED_10", value: 0)
!15 = !DIEnumerator(name: "SWMII_SPEED_100", value: 1)
!16 = !DIEnumerator(name: "SWMII_SPEED_1000", value: 2)
!17 = !DIEnumerator(name: "SWMII_DUPLEX_HALF", value: 0)
!18 = !DIEnumerator(name: "SWMII_DUPLEX_FULL", value: 1)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !{!0, !7, !22, !24, !26, !43}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !3, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_swphy_read_reg339", scope: !9, file: !2, line: 175, type: !20, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "speed", scope: !9, file: !2, line: 41, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !41)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swmii_regs", file: !2, line: 21, size: 64, elements: !31)
!31 = !{!32, !38, !39, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "bmsr", scope: !30, file: !2, line: 22, baseType: !33, size: 16)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !34, line: 19, baseType: !35)
!34 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !36, line: 24, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "lpa", scope: !30, file: !2, line: 23, baseType: !33, size: 16, offset: 16)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lpagb", scope: !30, file: !2, line: 24, baseType: !33, size: 16, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "estat", scope: !30, file: !2, line: 25, baseType: !33, size: 16, offset: 48)
!41 = !{!42}
!42 = !DISubrange(count: 3)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "duplex", scope: !9, file: !2, line: 56, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 2)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "swphy_validate_state", scope: !2, file: !2, line: 93, type: !58, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !71)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !61}
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_phy_status", file: !64, line: 7, size: 160, elements: !65)
!64 = !DIFile(filename: "./include/linux/phy_fixed.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "902355a3ff856898a88573ae722ff4ee")
!65 = !{!66, !67, !68, !69, !70}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !63, file: !64, line: 8, baseType: !60, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !63, file: !64, line: 9, baseType: !60, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "duplex", scope: !63, file: !64, line: 10, baseType: !60, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pause", scope: !63, file: !64, line: 11, baseType: !60, size: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "asym_pause", scope: !63, file: !64, line: 12, baseType: !60, size: 32, offset: 128)
!71 = !{!72, !73}
!72 = !DILocalVariable(name: "state", arg: 1, scope: !57, file: !2, line: 93, type: !61)
!73 = !DILocalVariable(name: "err", scope: !57, file: !2, line: 95, type: !60)
!74 = !DILocation(line: 93, column: 57, scope: !57)
!75 = !DILocation(line: 95, column: 2, scope: !57)
!76 = !DILocation(line: 95, column: 6, scope: !57)
!77 = !DILocation(line: 97, column: 6, scope: !78)
!78 = distinct !DILexicalBlock(scope: !57, file: !2, line: 97, column: 6)
!79 = !DILocation(line: 97, column: 13, scope: !78)
!80 = !DILocation(line: 97, column: 6, scope: !57)
!81 = !DILocation(line: 98, column: 28, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !2, line: 97, column: 19)
!83 = !DILocation(line: 98, column: 35, scope: !82)
!84 = !DILocation(line: 98, column: 9, scope: !82)
!85 = !DILocation(line: 98, column: 7, scope: !82)
!86 = !DILocation(line: 99, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !2, line: 99, column: 7)
!88 = !DILocation(line: 99, column: 11, scope: !87)
!89 = !DILocation(line: 99, column: 7, scope: !82)
!90 = !DILocation(line: 100, column: 4, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !2, line: 100, column: 4)
!92 = distinct !DILexicalBlock(scope: !87, file: !2, line: 99, column: 16)
!93 = !DILocation(line: 100, column: 4, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !2, line: 100, column: 4)
!95 = !DILocation(line: 101, column: 4, scope: !92)
!96 = !DILocation(line: 103, column: 2, scope: !82)
!97 = !DILocation(line: 104, column: 2, scope: !57)
!98 = !DILocation(line: 105, column: 1, scope: !57)
!99 = distinct !DISubprogram(name: "swphy_decode_speed", scope: !2, file: !2, line: 71, type: !100, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!60, !60}
!102 = !{!103}
!103 = !DILocalVariable(name: "speed", arg: 1, scope: !99, file: !2, line: 71, type: !60)
!104 = !DILocation(line: 71, column: 35, scope: !99)
!105 = !DILocation(line: 73, column: 10, scope: !99)
!106 = !DILocation(line: 73, column: 2, scope: !99)
!107 = !DILocation(line: 75, column: 3, scope: !108)
!108 = distinct !DILexicalBlock(scope: !99, file: !2, line: 73, column: 17)
!109 = !DILocation(line: 77, column: 3, scope: !108)
!110 = !DILocation(line: 79, column: 3, scope: !108)
!111 = !DILocation(line: 81, column: 3, scope: !108)
!112 = !DILocation(line: 83, column: 1, scope: !99)
!113 = !DISubprogram(name: "_printk", scope: !114, file: !114, line: 153, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!115 = !DISubroutineType(types: !116)
!116 = !{!60, !117, null}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!119 = distinct !DISubprogram(name: "swphy_read_reg", scope: !2, file: !2, line: 115, type: !120, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{!60, !60, !61}
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !134}
!123 = !DILocalVariable(name: "reg", arg: 1, scope: !119, file: !2, line: 115, type: !60)
!124 = !DILocalVariable(name: "state", arg: 2, scope: !119, file: !2, line: 115, type: !61)
!125 = !DILocalVariable(name: "speed_index", scope: !119, file: !2, line: 117, type: !60)
!126 = !DILocalVariable(name: "duplex_index", scope: !119, file: !2, line: 117, type: !60)
!127 = !DILocalVariable(name: "bmsr", scope: !119, file: !2, line: 118, type: !33)
!128 = !DILocalVariable(name: "estat", scope: !119, file: !2, line: 119, type: !33)
!129 = !DILocalVariable(name: "lpagb", scope: !119, file: !2, line: 120, type: !33)
!130 = !DILocalVariable(name: "lpa", scope: !119, file: !2, line: 121, type: !33)
!131 = !DILocalVariable(name: "__ret_warn_on", scope: !132, file: !2, line: 127, type: !60)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 127, column: 6)
!133 = distinct !DILexicalBlock(scope: !119, file: !2, line: 127, column: 6)
!134 = !DILocalVariable(name: "__flags", scope: !135, file: !2, line: 127, type: !60)
!135 = distinct !DILexicalBlock(scope: !136, file: !2, line: 127, column: 6)
!136 = distinct !DILexicalBlock(scope: !132, file: !2, line: 127, column: 6)
!137 = !DILocation(line: 115, column: 24, scope: !119)
!138 = !DILocation(line: 115, column: 60, scope: !119)
!139 = !DILocation(line: 117, column: 2, scope: !119)
!140 = !DILocation(line: 117, column: 6, scope: !119)
!141 = !DILocation(line: 117, column: 19, scope: !119)
!142 = !DILocation(line: 118, column: 2, scope: !119)
!143 = !DILocation(line: 118, column: 6, scope: !119)
!144 = !DILocation(line: 119, column: 2, scope: !119)
!145 = !DILocation(line: 119, column: 6, scope: !119)
!146 = !DILocation(line: 120, column: 2, scope: !119)
!147 = !DILocation(line: 120, column: 6, scope: !119)
!148 = !DILocation(line: 121, column: 2, scope: !119)
!149 = !DILocation(line: 121, column: 6, scope: !119)
!150 = !DILocation(line: 123, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !119, file: !2, line: 123, column: 6)
!152 = !DILocation(line: 123, column: 10, scope: !151)
!153 = !DILocation(line: 123, column: 6, scope: !119)
!154 = !DILocation(line: 124, column: 3, scope: !151)
!155 = !DILocation(line: 126, column: 35, scope: !119)
!156 = !DILocation(line: 126, column: 42, scope: !119)
!157 = !DILocation(line: 126, column: 16, scope: !119)
!158 = !DILocation(line: 126, column: 14, scope: !119)
!159 = !DILocation(line: 127, column: 6, scope: !132)
!160 = !DILocation(line: 127, column: 6, scope: !136)
!161 = !DILocation(line: 127, column: 6, scope: !135)
!162 = !DILocation(line: 127, column: 6, scope: !163)
!163 = distinct !DILexicalBlock(scope: !135, file: !2, line: 127, column: 6)
!164 = !DILocation(line: 127, column: 6, scope: !165)
!165 = distinct !DILexicalBlock(scope: !135, file: !2, line: 127, column: 6)
!166 = !{i64 2155895672, i64 2155895701, i64 2155895747, i64 2155895805, i64 2155895859, i64 2155895913, i64 2155895968, i64 2155895999, i64 2155896307, i64 2155896313, i64 2155896360, i64 2155896383, i64 2155896409}
!167 = !DILocation(line: 127, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !135, file: !2, line: 127, column: 6)
!169 = !DILocation(line: 127, column: 6, scope: !133)
!170 = !DILocation(line: 127, column: 6, scope: !119)
!171 = !DILocation(line: 128, column: 3, scope: !133)
!172 = !DILocation(line: 130, column: 17, scope: !119)
!173 = !DILocation(line: 130, column: 24, scope: !119)
!174 = !DILocation(line: 130, column: 15, scope: !119)
!175 = !DILocation(line: 132, column: 16, scope: !119)
!176 = !DILocation(line: 132, column: 10, scope: !119)
!177 = !DILocation(line: 132, column: 29, scope: !119)
!178 = !DILocation(line: 132, column: 43, scope: !119)
!179 = !DILocation(line: 132, column: 36, scope: !119)
!180 = !DILocation(line: 132, column: 57, scope: !119)
!181 = !DILocation(line: 132, column: 34, scope: !119)
!182 = !DILocation(line: 132, column: 7, scope: !119)
!183 = !DILocation(line: 133, column: 17, scope: !119)
!184 = !DILocation(line: 133, column: 11, scope: !119)
!185 = !DILocation(line: 133, column: 30, scope: !119)
!186 = !DILocation(line: 133, column: 45, scope: !119)
!187 = !DILocation(line: 133, column: 38, scope: !119)
!188 = !DILocation(line: 133, column: 59, scope: !119)
!189 = !DILocation(line: 133, column: 36, scope: !119)
!190 = !DILocation(line: 133, column: 8, scope: !119)
!191 = !DILocation(line: 135, column: 6, scope: !192)
!192 = distinct !DILexicalBlock(scope: !119, file: !2, line: 135, column: 6)
!193 = !DILocation(line: 135, column: 13, scope: !192)
!194 = !DILocation(line: 135, column: 6, scope: !119)
!195 = !DILocation(line: 136, column: 8, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !2, line: 135, column: 19)
!197 = !DILocation(line: 138, column: 18, scope: !196)
!198 = !DILocation(line: 138, column: 12, scope: !196)
!199 = !DILocation(line: 138, column: 31, scope: !196)
!200 = !DILocation(line: 138, column: 46, scope: !196)
!201 = !DILocation(line: 138, column: 39, scope: !196)
!202 = !DILocation(line: 138, column: 60, scope: !196)
!203 = !DILocation(line: 138, column: 37, scope: !196)
!204 = !DILocation(line: 138, column: 9, scope: !196)
!205 = !DILocation(line: 139, column: 18, scope: !196)
!206 = !DILocation(line: 139, column: 12, scope: !196)
!207 = !DILocation(line: 139, column: 31, scope: !196)
!208 = !DILocation(line: 139, column: 46, scope: !196)
!209 = !DILocation(line: 139, column: 39, scope: !196)
!210 = !DILocation(line: 139, column: 60, scope: !196)
!211 = !DILocation(line: 139, column: 37, scope: !196)
!212 = !DILocation(line: 139, column: 9, scope: !196)
!213 = !DILocation(line: 141, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !196, file: !2, line: 141, column: 7)
!215 = !DILocation(line: 141, column: 14, scope: !214)
!216 = !DILocation(line: 141, column: 7, scope: !196)
!217 = !DILocation(line: 142, column: 8, scope: !214)
!218 = !DILocation(line: 142, column: 4, scope: !214)
!219 = !DILocation(line: 144, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !196, file: !2, line: 144, column: 7)
!221 = !DILocation(line: 144, column: 14, scope: !220)
!222 = !DILocation(line: 144, column: 7, scope: !196)
!223 = !DILocation(line: 145, column: 8, scope: !220)
!224 = !DILocation(line: 145, column: 4, scope: !220)
!225 = !DILocation(line: 146, column: 2, scope: !196)
!226 = !DILocation(line: 148, column: 10, scope: !119)
!227 = !DILocation(line: 148, column: 2, scope: !119)
!228 = !DILocation(line: 150, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !119, file: !2, line: 148, column: 15)
!230 = !DILocation(line: 152, column: 10, scope: !229)
!231 = !DILocation(line: 152, column: 3, scope: !229)
!232 = !DILocation(line: 155, column: 3, scope: !229)
!233 = !DILocation(line: 157, column: 10, scope: !229)
!234 = !DILocation(line: 157, column: 3, scope: !229)
!235 = !DILocation(line: 159, column: 10, scope: !229)
!236 = !DILocation(line: 159, column: 3, scope: !229)
!237 = !DILocation(line: 161, column: 10, scope: !229)
!238 = !DILocation(line: 161, column: 3, scope: !229)
!239 = !DILocation(line: 169, column: 3, scope: !229)
!240 = !DILocation(line: 172, column: 3, scope: !229)
!241 = !DILocation(line: 174, column: 1, scope: !119)
