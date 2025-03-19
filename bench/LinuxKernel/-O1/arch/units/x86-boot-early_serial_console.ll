; ModuleID = 'arch/x86/boot/early_serial_console.c'
source_filename = "arch/x86/boot/early_serial_console.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type { i64, i64, i32 }
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.port_io_ops = type { ptr, ptr, ptr }

@early_serial_base = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"earlyprintk\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1, !dbg !17
@parse_earlyprintk.bases = internal constant [2 x i32] [i32 1016, i32 760], align 4, !dbg !22
@boot_params = external dso_local global %struct.boot_params, align 1
@pio_ops = external dso_local global %struct.port_io_ops, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"console\00", align 1, !dbg !29
@.str.5 = private unnamed_addr constant [13 x i8] c"uart8250,io,\00", align 1, !dbg !34
@.str.6 = private unnamed_addr constant [9 x i8] c"uart,io,\00", align 1, !dbg !39

; Function Attrs: nounwind
define dso_local void @console_init() #0 !dbg !71 {
entry:
  call void @parse_earlyprintk() #5, !dbg !72
  %0 = load i32, ptr @early_serial_base, align 4, !dbg !73
  %tobool = icmp ne i32 %0, 0, !dbg !73
  br i1 %tobool, label %if.end, label %if.then, !dbg !75

if.then:                                          ; preds = %entry
  call void @parse_console_uart8250() #5, !dbg !76
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !77
}

; Function Attrs: nounwind
define internal void @parse_earlyprintk() #0 !dbg !24 {
entry:
  %baud = alloca i32, align 4
  %arg = alloca [32 x i8], align 1
  %pos = alloca i32, align 4
  %port = alloca i32, align 4
  %e = alloca ptr, align 4
  %idx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %baud) #6, !dbg !78
  call void @llvm.dbg.declare(metadata ptr %baud, metadata !45, metadata !DIExpression()), !dbg !79
  store i32 9600, ptr %baud, align 4, !dbg !79
  call void @llvm.lifetime.start.p0(i64 32, ptr %arg) #6, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !47, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !51, metadata !DIExpression()), !dbg !83
  store i32 0, ptr %pos, align 4, !dbg !83
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #6, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %port, metadata !52, metadata !DIExpression()), !dbg !85
  store i32 0, ptr %port, align 4, !dbg !85
  %arraydecay = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !86
  %call = call i32 @cmdline_find_option(ptr inreg noundef @.str, ptr inreg noundef %arraydecay, i32 inreg noundef 32) #5, !dbg !87
  %cmp = icmp sgt i32 %call, 0, !dbg !88
  br i1 %cmp, label %if.then, label %if.end64, !dbg !89

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #6, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %e, metadata !53, metadata !DIExpression()), !dbg !91
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !92
  %call2 = call i32 @strncmp(ptr inreg noundef %arraydecay1, ptr inreg noundef @.str.1, i32 inreg noundef 6) #5, !dbg !94
  %tobool = icmp ne i32 %call2, 0, !dbg !94
  br i1 %tobool, label %if.end, label %if.then3, !dbg !95

if.then3:                                         ; preds = %if.then
  store i32 1016, ptr %port, align 4, !dbg !96
  %0 = load i32, ptr %pos, align 4, !dbg !98
  %add = add nsw i32 %0, 6, !dbg !98
  store i32 %add, ptr %pos, align 4, !dbg !98
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then3, %if.then
  %1 = load i32, ptr %pos, align 4, !dbg !100
  %arrayidx = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 %1, !dbg !102
  %2 = load i8, ptr %arrayidx, align 1, !dbg !102
  %conv = sext i8 %2 to i32, !dbg !102
  %cmp4 = icmp eq i32 %conv, 44, !dbg !103
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !104

if.then6:                                         ; preds = %if.end
  %3 = load i32, ptr %pos, align 4, !dbg !105
  %inc = add nsw i32 %3, 1, !dbg !105
  store i32 %inc, ptr %pos, align 4, !dbg !105
  br label %if.end7, !dbg !106

if.end7:                                          ; preds = %if.then6, %if.end
  %4 = load i32, ptr %pos, align 4, !dbg !107
  %cmp8 = icmp eq i32 %4, 7, !dbg !108
  br i1 %cmp8, label %land.lhs.true, label %if.else27, !dbg !109

land.lhs.true:                                    ; preds = %if.end7
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !110
  %5 = load i32, ptr %pos, align 4, !dbg !111
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay10, i32 %5, !dbg !112
  %call11 = call i32 @strncmp(ptr inreg noundef %add.ptr, ptr inreg noundef @.str.2, i32 inreg noundef 2) #5, !dbg !113
  %tobool12 = icmp ne i32 %call11, 0, !dbg !113
  br i1 %tobool12, label %if.else27, label %if.then13, !dbg !114

if.then13:                                        ; preds = %land.lhs.true
  %arraydecay14 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !115
  %6 = load i32, ptr %pos, align 4, !dbg !117
  %add.ptr15 = getelementptr inbounds i8, ptr %arraydecay14, i32 %6, !dbg !118
  %call16 = call i64 @simple_strtoull(ptr inreg noundef %add.ptr15, ptr inreg noundef %e, i32 inreg noundef 16) #5, !dbg !119
  %conv17 = trunc i64 %call16 to i32, !dbg !119
  store i32 %conv17, ptr %port, align 4, !dbg !120
  %7 = load i32, ptr %port, align 4, !dbg !121
  %cmp18 = icmp eq i32 %7, 0, !dbg !123
  br i1 %cmp18, label %if.then24, label %lor.lhs.false, !dbg !124

lor.lhs.false:                                    ; preds = %if.then13
  %arraydecay20 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !125
  %8 = load i32, ptr %pos, align 4, !dbg !126
  %add.ptr21 = getelementptr inbounds i8, ptr %arraydecay20, i32 %8, !dbg !127
  %9 = load ptr, ptr %e, align 4, !dbg !128
  %cmp22 = icmp eq ptr %add.ptr21, %9, !dbg !129
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !130

if.then24:                                        ; preds = %lor.lhs.false, %if.then13
  store i32 1016, ptr %port, align 4, !dbg !131
  br label %if.end26, !dbg !132

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %e, align 4, !dbg !133
  %arraydecay25 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !134
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i32, !dbg !135
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay25 to i32, !dbg !135
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !135
  store i32 %sub.ptr.sub, ptr %pos, align 4, !dbg !136
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then24
  br label %if.end43, !dbg !137

if.else27:                                        ; preds = %land.lhs.true, %if.end7
  %arraydecay28 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !138
  %11 = load i32, ptr %pos, align 4, !dbg !139
  %add.ptr29 = getelementptr inbounds i8, ptr %arraydecay28, i32 %11, !dbg !140
  %call30 = call i32 @strncmp(ptr inreg noundef %add.ptr29, ptr inreg noundef @.str.3, i32 inreg noundef 4) #5, !dbg !141
  %tobool31 = icmp ne i32 %call30, 0, !dbg !141
  br i1 %tobool31, label %if.end42, label %if.then32, !dbg !142

if.then32:                                        ; preds = %if.else27
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #6, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !57, metadata !DIExpression()), !dbg !144
  store i32 0, ptr %idx, align 4, !dbg !144
  %12 = load i32, ptr %pos, align 4, !dbg !145
  %add33 = add nsw i32 %12, 4, !dbg !145
  store i32 %add33, ptr %pos, align 4, !dbg !145
  %13 = load i32, ptr %pos, align 4, !dbg !146
  %inc34 = add nsw i32 %13, 1, !dbg !146
  store i32 %inc34, ptr %pos, align 4, !dbg !146
  %arrayidx35 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 %13, !dbg !148
  %14 = load i8, ptr %arrayidx35, align 1, !dbg !148
  %conv36 = sext i8 %14 to i32, !dbg !148
  %cmp37 = icmp eq i32 %conv36, 49, !dbg !149
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !150

if.then39:                                        ; preds = %if.then32
  store i32 1, ptr %idx, align 4, !dbg !151
  br label %if.end40, !dbg !152

if.end40:                                         ; preds = %if.then39, %if.then32
  %15 = load i32, ptr %idx, align 4, !dbg !153
  %arrayidx41 = getelementptr inbounds [2 x i32], ptr @parse_earlyprintk.bases, i32 0, i32 %15, !dbg !154
  %16 = load i32, ptr %arrayidx41, align 4, !dbg !154
  store i32 %16, ptr %port, align 4, !dbg !155
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #6, !dbg !156
  br label %if.end42, !dbg !157

if.end42:                                         ; preds = %if.end40, %if.else27
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end26
  %17 = load i32, ptr %pos, align 4, !dbg !158
  %arrayidx44 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 %17, !dbg !160
  %18 = load i8, ptr %arrayidx44, align 1, !dbg !160
  %conv45 = sext i8 %18 to i32, !dbg !160
  %cmp46 = icmp eq i32 %conv45, 44, !dbg !161
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !162

if.then48:                                        ; preds = %if.end43
  %19 = load i32, ptr %pos, align 4, !dbg !163
  %inc49 = add nsw i32 %19, 1, !dbg !163
  store i32 %inc49, ptr %pos, align 4, !dbg !163
  br label %if.end50, !dbg !164

if.end50:                                         ; preds = %if.then48, %if.end43
  %arraydecay51 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !165
  %20 = load i32, ptr %pos, align 4, !dbg !166
  %add.ptr52 = getelementptr inbounds i8, ptr %arraydecay51, i32 %20, !dbg !167
  %call53 = call i64 @simple_strtoull(ptr inreg noundef %add.ptr52, ptr inreg noundef %e, i32 inreg noundef 0) #5, !dbg !168
  %conv54 = trunc i64 %call53 to i32, !dbg !168
  store i32 %conv54, ptr %baud, align 4, !dbg !169
  %21 = load i32, ptr %baud, align 4, !dbg !170
  %cmp55 = icmp eq i32 %21, 0, !dbg !172
  br i1 %cmp55, label %if.then62, label %lor.lhs.false57, !dbg !173

lor.lhs.false57:                                  ; preds = %if.end50
  %arraydecay58 = getelementptr inbounds [32 x i8], ptr %arg, i32 0, i32 0, !dbg !174
  %22 = load i32, ptr %pos, align 4, !dbg !175
  %add.ptr59 = getelementptr inbounds i8, ptr %arraydecay58, i32 %22, !dbg !176
  %23 = load ptr, ptr %e, align 4, !dbg !177
  %cmp60 = icmp eq ptr %add.ptr59, %23, !dbg !178
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !179

if.then62:                                        ; preds = %lor.lhs.false57, %if.end50
  store i32 9600, ptr %baud, align 4, !dbg !180
  br label %if.end63, !dbg !181

if.end63:                                         ; preds = %if.then62, %lor.lhs.false57
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #6, !dbg !182
  br label %if.end64, !dbg !183

if.end64:                                         ; preds = %if.end63, %entry
  %24 = load i32, ptr %port, align 4, !dbg !184
  %tobool65 = icmp ne i32 %24, 0, !dbg !184
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !186

if.then66:                                        ; preds = %if.end64
  %25 = load i32, ptr %port, align 4, !dbg !187
  %26 = load i32, ptr %baud, align 4, !dbg !188
  call void @early_serial_init(i32 inreg noundef %25, i32 inreg noundef %26) #5, !dbg !189
  br label %if.end67, !dbg !189

if.end67:                                         ; preds = %if.then66, %if.end64
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #6, !dbg !190
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6, !dbg !190
  call void @llvm.lifetime.end.p0(i64 32, ptr %arg) #6, !dbg !190
  call void @llvm.lifetime.end.p0(i64 4, ptr %baud) #6, !dbg !190
  ret void, !dbg !190
}

; Function Attrs: nounwind
define internal void @parse_console_uart8250() #0 !dbg !191 {
entry:
  %optstr = alloca [64 x i8], align 1
  %options = alloca ptr, align 4
  %baud = alloca i32, align 4
  %port = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr %optstr) #6, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %optstr, metadata !193, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 4, ptr %options) #6, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %options, metadata !197, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 4, ptr %baud) #6, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %baud, metadata !198, metadata !DIExpression()), !dbg !204
  store i32 9600, ptr %baud, align 4, !dbg !204
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #6, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %port, metadata !199, metadata !DIExpression()), !dbg !206
  store i32 0, ptr %port, align 4, !dbg !206
  %arraydecay = getelementptr inbounds [64 x i8], ptr %optstr, i32 0, i32 0, !dbg !207
  %call = call i32 @cmdline_find_option(ptr inreg noundef @.str.4, ptr inreg noundef %arraydecay, i32 inreg noundef 64) #5, !dbg !209
  %cmp = icmp sle i32 %call, 0, !dbg !210
  br i1 %cmp, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !212

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [64 x i8], ptr %optstr, i32 0, i32 0, !dbg !213
  store ptr %arraydecay1, ptr %options, align 4, !dbg !214
  %0 = load ptr, ptr %options, align 4, !dbg !215
  %call2 = call i32 @strncmp(ptr inreg noundef %0, ptr inreg noundef @.str.5, i32 inreg noundef 12) #5, !dbg !217
  %tobool = icmp ne i32 %call2, 0, !dbg !217
  br i1 %tobool, label %if.else, label %if.then3, !dbg !218

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr %options, align 4, !dbg !219
  %add.ptr = getelementptr inbounds i8, ptr %1, i32 12, !dbg !220
  %call4 = call i64 @simple_strtoull(ptr inreg noundef %add.ptr, ptr inreg noundef %options, i32 inreg noundef 0) #5, !dbg !221
  %conv = trunc i64 %call4 to i32, !dbg !221
  store i32 %conv, ptr %port, align 4, !dbg !222
  br label %if.end13, !dbg !223

if.else:                                          ; preds = %if.end
  %2 = load ptr, ptr %options, align 4, !dbg !224
  %call5 = call i32 @strncmp(ptr inreg noundef %2, ptr inreg noundef @.str.6, i32 inreg noundef 8) #5, !dbg !226
  %tobool6 = icmp ne i32 %call5, 0, !dbg !226
  br i1 %tobool6, label %if.else11, label %if.then7, !dbg !227

if.then7:                                         ; preds = %if.else
  %3 = load ptr, ptr %options, align 4, !dbg !228
  %add.ptr8 = getelementptr inbounds i8, ptr %3, i32 8, !dbg !229
  %call9 = call i64 @simple_strtoull(ptr inreg noundef %add.ptr8, ptr inreg noundef %options, i32 inreg noundef 0) #5, !dbg !230
  %conv10 = trunc i64 %call9 to i32, !dbg !230
  store i32 %conv10, ptr %port, align 4, !dbg !231
  br label %if.end12, !dbg !232

if.else11:                                        ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

if.end12:                                         ; preds = %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then3
  %4 = load ptr, ptr %options, align 4, !dbg !234
  %tobool14 = icmp ne ptr %4, null, !dbg !234
  br i1 %tobool14, label %land.lhs.true, label %if.else22, !dbg !236

land.lhs.true:                                    ; preds = %if.end13
  %5 = load ptr, ptr %options, align 4, !dbg !237
  %arrayidx = getelementptr inbounds i8, ptr %5, i32 0, !dbg !237
  %6 = load i8, ptr %arrayidx, align 1, !dbg !237
  %conv15 = sext i8 %6 to i32, !dbg !237
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !238
  br i1 %cmp16, label %if.then18, label %if.else22, !dbg !239

if.then18:                                        ; preds = %land.lhs.true
  %7 = load ptr, ptr %options, align 4, !dbg !240
  %add.ptr19 = getelementptr inbounds i8, ptr %7, i32 1, !dbg !241
  %call20 = call i64 @simple_strtoull(ptr inreg noundef %add.ptr19, ptr inreg noundef %options, i32 inreg noundef 0) #5, !dbg !242
  %conv21 = trunc i64 %call20 to i32, !dbg !242
  store i32 %conv21, ptr %baud, align 4, !dbg !243
  br label %if.end24, !dbg !244

if.else22:                                        ; preds = %land.lhs.true, %if.end13
  %8 = load i32, ptr %port, align 4, !dbg !245
  %call23 = call i32 @probe_baud(i32 inreg noundef %8) #5, !dbg !246
  store i32 %call23, ptr %baud, align 4, !dbg !247
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then18
  %9 = load i32, ptr %port, align 4, !dbg !248
  %tobool25 = icmp ne i32 %9, 0, !dbg !248
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !250

if.then26:                                        ; preds = %if.end24
  %10 = load i32, ptr %port, align 4, !dbg !251
  %11 = load i32, ptr %baud, align 4, !dbg !252
  call void @early_serial_init(i32 inreg noundef %10, i32 inreg noundef %11) #5, !dbg !253
  br label %if.end27, !dbg !253

if.end27:                                         ; preds = %if.then26, %if.end24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !254
  br label %cleanup, !dbg !254

cleanup:                                          ; preds = %if.end27, %if.else11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #6, !dbg !254
  call void @llvm.lifetime.end.p0(i64 4, ptr %baud) #6, !dbg !254
  call void @llvm.lifetime.end.p0(i64 4, ptr %options) #6, !dbg !254
  call void @llvm.lifetime.end.p0(i64 64, ptr %optstr) #6, !dbg !254
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !254

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind
define internal i32 @cmdline_find_option(ptr inreg noundef %option, ptr inreg noundef %buffer, i32 inreg noundef %bufsize) #3 !dbg !255 {
entry:
  %retval = alloca i32, align 4
  %option.addr = alloca ptr, align 4
  %buffer.addr = alloca ptr, align 4
  %bufsize.addr = alloca i32, align 4
  %cmd_line_ptr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %option, ptr %option.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !262, metadata !DIExpression()), !dbg !267
  store ptr %buffer, ptr %buffer.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !263, metadata !DIExpression()), !dbg !268
  store i32 %bufsize, ptr %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !264, metadata !DIExpression()), !dbg !269
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd_line_ptr) #6, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %cmd_line_ptr, metadata !265, metadata !DIExpression()), !dbg !271
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 23), align 1, !dbg !272
  store i32 %0, ptr %cmd_line_ptr, align 4, !dbg !271
  %1 = load i32, ptr %cmd_line_ptr, align 4, !dbg !273
  %cmp = icmp uge i32 %1, 1048576, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !276

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !277

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %cmd_line_ptr, align 4, !dbg !278
  %3 = load ptr, ptr %option.addr, align 4, !dbg !279
  %4 = load ptr, ptr %buffer.addr, align 4, !dbg !280
  %5 = load i32, ptr %bufsize.addr, align 4, !dbg !281
  %call = call i32 @__cmdline_find_option(i32 inreg noundef %2, ptr inreg noundef %3, ptr inreg noundef %4, i32 noundef %5) #5, !dbg !282
  store i32 %call, ptr %retval, align 4, !dbg !283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !283

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd_line_ptr) #6, !dbg !284
  %6 = load i32, ptr %retval, align 4, !dbg !284
  ret i32 %6, !dbg !284
}

declare !dbg !285 dso_local i32 @strncmp(ptr inreg noundef, ptr inreg noundef, i32 inreg noundef) #4

declare !dbg !293 dso_local i64 @simple_strtoull(ptr inreg noundef, ptr inreg noundef, i32 inreg noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @early_serial_init(i32 inreg noundef %port, i32 inreg noundef %baud) #0 !dbg !298 {
entry:
  %port.addr = alloca i32, align 4
  %baud.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %divisor = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !302, metadata !DIExpression()), !dbg !307
  store i32 %baud, ptr %baud.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baud.addr, metadata !303, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #6, !dbg !309
  call void @llvm.dbg.declare(metadata ptr %c, metadata !304, metadata !DIExpression()), !dbg !310
  call void @llvm.lifetime.start.p0(i64 4, ptr %divisor) #6, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %divisor, metadata !306, metadata !DIExpression()), !dbg !312
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !313
  %1 = load i32, ptr %port.addr, align 4, !dbg !314
  %add = add nsw i32 %1, 3, !dbg !315
  %conv = trunc i32 %add to i16, !dbg !314
  call void %0(i8 inreg noundef zeroext 3, i16 inreg noundef zeroext %conv) #5, !dbg !313
  %2 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !316
  %3 = load i32, ptr %port.addr, align 4, !dbg !317
  %add1 = add nsw i32 %3, 1, !dbg !318
  %conv2 = trunc i32 %add1 to i16, !dbg !317
  call void %2(i8 inreg noundef zeroext 0, i16 inreg noundef zeroext %conv2) #5, !dbg !316
  %4 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !319
  %5 = load i32, ptr %port.addr, align 4, !dbg !320
  %add3 = add nsw i32 %5, 2, !dbg !321
  %conv4 = trunc i32 %add3 to i16, !dbg !320
  call void %4(i8 inreg noundef zeroext 0, i16 inreg noundef zeroext %conv4) #5, !dbg !319
  %6 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !322
  %7 = load i32, ptr %port.addr, align 4, !dbg !323
  %add5 = add nsw i32 %7, 4, !dbg !324
  %conv6 = trunc i32 %add5 to i16, !dbg !323
  call void %6(i8 inreg noundef zeroext 3, i16 inreg noundef zeroext %conv6) #5, !dbg !322
  %8 = load i32, ptr %baud.addr, align 4, !dbg !325
  %div = sdiv i32 115200, %8, !dbg !326
  store i32 %div, ptr %divisor, align 4, !dbg !327
  %9 = load ptr, ptr @pio_ops, align 4, !dbg !328
  %10 = load i32, ptr %port.addr, align 4, !dbg !329
  %add7 = add nsw i32 %10, 3, !dbg !330
  %conv8 = trunc i32 %add7 to i16, !dbg !329
  %call = call zeroext i8 %9(i16 inreg noundef zeroext %conv8) #5, !dbg !328
  store i8 %call, ptr %c, align 1, !dbg !331
  %11 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !332
  %12 = load i8, ptr %c, align 1, !dbg !333
  %conv9 = zext i8 %12 to i32, !dbg !333
  %or = or i32 %conv9, 128, !dbg !334
  %conv10 = trunc i32 %or to i8, !dbg !333
  %13 = load i32, ptr %port.addr, align 4, !dbg !335
  %add11 = add nsw i32 %13, 3, !dbg !336
  %conv12 = trunc i32 %add11 to i16, !dbg !335
  call void %11(i8 inreg noundef zeroext %conv10, i16 inreg noundef zeroext %conv12) #5, !dbg !332
  %14 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !337
  %15 = load i32, ptr %divisor, align 4, !dbg !338
  %and = and i32 %15, 255, !dbg !339
  %conv13 = trunc i32 %and to i8, !dbg !338
  %16 = load i32, ptr %port.addr, align 4, !dbg !340
  %add14 = add nsw i32 %16, 0, !dbg !341
  %conv15 = trunc i32 %add14 to i16, !dbg !340
  call void %14(i8 inreg noundef zeroext %conv13, i16 inreg noundef zeroext %conv15) #5, !dbg !337
  %17 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !342
  %18 = load i32, ptr %divisor, align 4, !dbg !343
  %shr = lshr i32 %18, 8, !dbg !344
  %and16 = and i32 %shr, 255, !dbg !345
  %conv17 = trunc i32 %and16 to i8, !dbg !346
  %19 = load i32, ptr %port.addr, align 4, !dbg !347
  %add18 = add nsw i32 %19, 1, !dbg !348
  %conv19 = trunc i32 %add18 to i16, !dbg !347
  call void %17(i8 inreg noundef zeroext %conv17, i16 inreg noundef zeroext %conv19) #5, !dbg !342
  %20 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !349
  %21 = load i8, ptr %c, align 1, !dbg !350
  %conv20 = zext i8 %21 to i32, !dbg !350
  %and21 = and i32 %conv20, -129, !dbg !351
  %conv22 = trunc i32 %and21 to i8, !dbg !350
  %22 = load i32, ptr %port.addr, align 4, !dbg !352
  %add23 = add nsw i32 %22, 3, !dbg !353
  %conv24 = trunc i32 %add23 to i16, !dbg !352
  call void %20(i8 inreg noundef zeroext %conv22, i16 inreg noundef zeroext %conv24) #5, !dbg !349
  %23 = load i32, ptr %port.addr, align 4, !dbg !354
  store i32 %23, ptr @early_serial_base, align 4, !dbg !355
  call void @llvm.lifetime.end.p0(i64 4, ptr %divisor) #6, !dbg !356
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #6, !dbg !356
  ret void, !dbg !356
}

declare !dbg !357 dso_local i32 @__cmdline_find_option(i32 inreg noundef, ptr inreg noundef, ptr inreg noundef, i32 noundef) #4

; Function Attrs: nounwind
define internal i32 @probe_baud(i32 inreg noundef %port) #0 !dbg !360 {
entry:
  %port.addr = alloca i32, align 4
  %lcr = alloca i8, align 1
  %dll = alloca i8, align 1
  %dlh = alloca i8, align 1
  %quot = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 1, ptr %lcr) #6, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %lcr, metadata !365, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 1, ptr %dll) #6, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %dll, metadata !366, metadata !DIExpression()), !dbg !372
  call void @llvm.lifetime.start.p0(i64 1, ptr %dlh) #6, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %dlh, metadata !367, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 4, ptr %quot) #6, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %quot, metadata !368, metadata !DIExpression()), !dbg !375
  %0 = load ptr, ptr @pio_ops, align 4, !dbg !376
  %1 = load i32, ptr %port.addr, align 4, !dbg !377
  %add = add nsw i32 %1, 3, !dbg !378
  %conv = trunc i32 %add to i16, !dbg !377
  %call = call zeroext i8 %0(i16 inreg noundef zeroext %conv) #5, !dbg !376
  store i8 %call, ptr %lcr, align 1, !dbg !379
  %2 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !380
  %3 = load i8, ptr %lcr, align 1, !dbg !381
  %conv1 = zext i8 %3 to i32, !dbg !381
  %or = or i32 %conv1, 128, !dbg !382
  %conv2 = trunc i32 %or to i8, !dbg !381
  %4 = load i32, ptr %port.addr, align 4, !dbg !383
  %add3 = add nsw i32 %4, 3, !dbg !384
  %conv4 = trunc i32 %add3 to i16, !dbg !383
  call void %2(i8 inreg noundef zeroext %conv2, i16 inreg noundef zeroext %conv4) #5, !dbg !380
  %5 = load ptr, ptr @pio_ops, align 4, !dbg !385
  %6 = load i32, ptr %port.addr, align 4, !dbg !386
  %add5 = add nsw i32 %6, 0, !dbg !387
  %conv6 = trunc i32 %add5 to i16, !dbg !386
  %call7 = call zeroext i8 %5(i16 inreg noundef zeroext %conv6) #5, !dbg !385
  store i8 %call7, ptr %dll, align 1, !dbg !388
  %7 = load ptr, ptr @pio_ops, align 4, !dbg !389
  %8 = load i32, ptr %port.addr, align 4, !dbg !390
  %add8 = add nsw i32 %8, 1, !dbg !391
  %conv9 = trunc i32 %add8 to i16, !dbg !390
  %call10 = call zeroext i8 %7(i16 inreg noundef zeroext %conv9) #5, !dbg !389
  store i8 %call10, ptr %dlh, align 1, !dbg !392
  %9 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !393
  %10 = load i8, ptr %lcr, align 1, !dbg !394
  %11 = load i32, ptr %port.addr, align 4, !dbg !395
  %add11 = add nsw i32 %11, 3, !dbg !396
  %conv12 = trunc i32 %add11 to i16, !dbg !395
  call void %9(i8 inreg noundef zeroext %10, i16 inreg noundef zeroext %conv12) #5, !dbg !393
  %12 = load i8, ptr %dlh, align 1, !dbg !397
  %conv13 = zext i8 %12 to i32, !dbg !397
  %shl = shl i32 %conv13, 8, !dbg !398
  %13 = load i8, ptr %dll, align 1, !dbg !399
  %conv14 = zext i8 %13 to i32, !dbg !399
  %or15 = or i32 %shl, %conv14, !dbg !400
  store i32 %or15, ptr %quot, align 4, !dbg !401
  %14 = load i32, ptr %quot, align 4, !dbg !402
  %div = udiv i32 115200, %14, !dbg !403
  call void @llvm.lifetime.end.p0(i64 4, ptr %quot) #6, !dbg !404
  call void @llvm.lifetime.end.p0(i64 1, ptr %dlh) #6, !dbg !404
  call void @llvm.lifetime.end.p0(i64 1, ptr %dll) #6, !dbg !404
  call void @llvm.lifetime.end.p0(i64 1, ptr %lcr) #6, !dbg !404
  ret i32 %div, !dbg !405
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/early_serial_console.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c1499efaad112c35353ba3a8c1e8821")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 12)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 3)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "bases", scope: !24, file: !2, line: 77, type: !61, isLocal: true, isDefinition: true)
!24 = distinct !DISubprogram(name: "parse_earlyprintk", scope: !2, file: !2, line: 46, type: !25, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !44)
!25 = !DISubroutineType(types: !26)
!26 = !{null}
!27 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.early_serial_console.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/early_serial_console\22 -D KBUILD_BASENAME=\22early_serial_console\22 -D KBUILD_MODNAME=\22early_serial_console\22 -D __KBUILD_MODNAME=kmod_early_serial_console -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/early_serial_console.ll arch/x86/boot/early_serial_console.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !28, splitDebugInlining: false, nameTableKind: None)
!28 = !{!0, !7, !12, !17, !22, !29, !34, !39}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 8)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 13)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 9)
!44 = !{!45, !47, !51, !52, !53, !57}
!45 = !DILocalVariable(name: "baud", scope: !24, file: !2, line: 48, type: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DILocalVariable(name: "arg", scope: !24, file: !2, line: 49, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 32)
!51 = !DILocalVariable(name: "pos", scope: !24, file: !2, line: 50, type: !46)
!52 = !DILocalVariable(name: "port", scope: !24, file: !2, line: 51, type: !46)
!53 = !DILocalVariable(name: "e", scope: !54, file: !2, line: 54, type: !56)
!54 = distinct !DILexicalBlock(scope: !55, file: !2, line: 53, column: 64)
!55 = distinct !DILexicalBlock(scope: !24, file: !2, line: 53, column: 6)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!57 = !DILocalVariable(name: "idx", scope: !58, file: !2, line: 78, type: !46)
!58 = distinct !DILexicalBlock(scope: !59, file: !2, line: 76, column: 46)
!59 = distinct !DILexicalBlock(scope: !60, file: !2, line: 76, column: 14)
!60 = distinct !DILexicalBlock(scope: !54, file: !2, line: 70, column: 7)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !63)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!63 = !{!64}
!64 = !DISubrange(count: 2)
!65 = !{i32 1, !"NumRegisterParameters", i32 3}
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 1, !"override-stack-alignment", i32 4}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = distinct !DISubprogram(name: "console_init", scope: !2, file: !2, line: 148, type: !25, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !27)
!72 = !DILocation(line: 150, column: 2, scope: !71)
!73 = !DILocation(line: 152, column: 7, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !2, line: 152, column: 6)
!75 = !DILocation(line: 152, column: 6, scope: !71)
!76 = !DILocation(line: 153, column: 3, scope: !74)
!77 = !DILocation(line: 154, column: 1, scope: !71)
!78 = !DILocation(line: 48, column: 2, scope: !24)
!79 = !DILocation(line: 48, column: 6, scope: !24)
!80 = !DILocation(line: 49, column: 2, scope: !24)
!81 = !DILocation(line: 49, column: 7, scope: !24)
!82 = !DILocation(line: 50, column: 2, scope: !24)
!83 = !DILocation(line: 50, column: 6, scope: !24)
!84 = !DILocation(line: 51, column: 2, scope: !24)
!85 = !DILocation(line: 51, column: 6, scope: !24)
!86 = !DILocation(line: 53, column: 41, scope: !55)
!87 = !DILocation(line: 53, column: 6, scope: !55)
!88 = !DILocation(line: 53, column: 59, scope: !55)
!89 = !DILocation(line: 53, column: 6, scope: !24)
!90 = !DILocation(line: 54, column: 3, scope: !54)
!91 = !DILocation(line: 54, column: 9, scope: !54)
!92 = !DILocation(line: 56, column: 16, scope: !93)
!93 = distinct !DILexicalBlock(scope: !54, file: !2, line: 56, column: 7)
!94 = !DILocation(line: 56, column: 8, scope: !93)
!95 = !DILocation(line: 56, column: 7, scope: !54)
!96 = !DILocation(line: 57, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !2, line: 56, column: 35)
!98 = !DILocation(line: 58, column: 8, scope: !97)
!99 = !DILocation(line: 59, column: 3, scope: !97)
!100 = !DILocation(line: 61, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !54, file: !2, line: 61, column: 7)
!102 = !DILocation(line: 61, column: 7, scope: !101)
!103 = !DILocation(line: 61, column: 16, scope: !101)
!104 = !DILocation(line: 61, column: 7, scope: !54)
!105 = !DILocation(line: 62, column: 7, scope: !101)
!106 = !DILocation(line: 62, column: 4, scope: !101)
!107 = !DILocation(line: 70, column: 7, scope: !60)
!108 = !DILocation(line: 70, column: 11, scope: !60)
!109 = !DILocation(line: 70, column: 16, scope: !60)
!110 = !DILocation(line: 70, column: 28, scope: !60)
!111 = !DILocation(line: 70, column: 34, scope: !60)
!112 = !DILocation(line: 70, column: 32, scope: !60)
!113 = !DILocation(line: 70, column: 20, scope: !60)
!114 = !DILocation(line: 70, column: 7, scope: !54)
!115 = !DILocation(line: 71, column: 27, scope: !116)
!116 = distinct !DILexicalBlock(scope: !60, file: !2, line: 70, column: 49)
!117 = !DILocation(line: 71, column: 33, scope: !116)
!118 = !DILocation(line: 71, column: 31, scope: !116)
!119 = !DILocation(line: 71, column: 11, scope: !116)
!120 = !DILocation(line: 71, column: 9, scope: !116)
!121 = !DILocation(line: 72, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !116, file: !2, line: 72, column: 8)
!123 = !DILocation(line: 72, column: 13, scope: !122)
!124 = !DILocation(line: 72, column: 18, scope: !122)
!125 = !DILocation(line: 72, column: 21, scope: !122)
!126 = !DILocation(line: 72, column: 27, scope: !122)
!127 = !DILocation(line: 72, column: 25, scope: !122)
!128 = !DILocation(line: 72, column: 34, scope: !122)
!129 = !DILocation(line: 72, column: 31, scope: !122)
!130 = !DILocation(line: 72, column: 8, scope: !116)
!131 = !DILocation(line: 73, column: 10, scope: !122)
!132 = !DILocation(line: 73, column: 5, scope: !122)
!133 = !DILocation(line: 75, column: 11, scope: !122)
!134 = !DILocation(line: 75, column: 15, scope: !122)
!135 = !DILocation(line: 75, column: 13, scope: !122)
!136 = !DILocation(line: 75, column: 9, scope: !122)
!137 = !DILocation(line: 76, column: 3, scope: !116)
!138 = !DILocation(line: 76, column: 23, scope: !59)
!139 = !DILocation(line: 76, column: 29, scope: !59)
!140 = !DILocation(line: 76, column: 27, scope: !59)
!141 = !DILocation(line: 76, column: 15, scope: !59)
!142 = !DILocation(line: 76, column: 14, scope: !60)
!143 = !DILocation(line: 78, column: 4, scope: !58)
!144 = !DILocation(line: 78, column: 8, scope: !58)
!145 = !DILocation(line: 81, column: 8, scope: !58)
!146 = !DILocation(line: 83, column: 15, scope: !147)
!147 = distinct !DILexicalBlock(scope: !58, file: !2, line: 83, column: 8)
!148 = !DILocation(line: 83, column: 8, scope: !147)
!149 = !DILocation(line: 83, column: 19, scope: !147)
!150 = !DILocation(line: 83, column: 8, scope: !58)
!151 = !DILocation(line: 84, column: 9, scope: !147)
!152 = !DILocation(line: 84, column: 5, scope: !147)
!153 = !DILocation(line: 86, column: 17, scope: !58)
!154 = !DILocation(line: 86, column: 11, scope: !58)
!155 = !DILocation(line: 86, column: 9, scope: !58)
!156 = !DILocation(line: 87, column: 3, scope: !59)
!157 = !DILocation(line: 87, column: 3, scope: !58)
!158 = !DILocation(line: 89, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !54, file: !2, line: 89, column: 7)
!160 = !DILocation(line: 89, column: 7, scope: !159)
!161 = !DILocation(line: 89, column: 16, scope: !159)
!162 = !DILocation(line: 89, column: 7, scope: !54)
!163 = !DILocation(line: 90, column: 7, scope: !159)
!164 = !DILocation(line: 90, column: 4, scope: !159)
!165 = !DILocation(line: 92, column: 26, scope: !54)
!166 = !DILocation(line: 92, column: 32, scope: !54)
!167 = !DILocation(line: 92, column: 30, scope: !54)
!168 = !DILocation(line: 92, column: 10, scope: !54)
!169 = !DILocation(line: 92, column: 8, scope: !54)
!170 = !DILocation(line: 93, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !54, file: !2, line: 93, column: 7)
!172 = !DILocation(line: 93, column: 12, scope: !171)
!173 = !DILocation(line: 93, column: 17, scope: !171)
!174 = !DILocation(line: 93, column: 20, scope: !171)
!175 = !DILocation(line: 93, column: 26, scope: !171)
!176 = !DILocation(line: 93, column: 24, scope: !171)
!177 = !DILocation(line: 93, column: 33, scope: !171)
!178 = !DILocation(line: 93, column: 30, scope: !171)
!179 = !DILocation(line: 93, column: 7, scope: !54)
!180 = !DILocation(line: 94, column: 9, scope: !171)
!181 = !DILocation(line: 94, column: 4, scope: !171)
!182 = !DILocation(line: 95, column: 2, scope: !55)
!183 = !DILocation(line: 95, column: 2, scope: !54)
!184 = !DILocation(line: 97, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !24, file: !2, line: 97, column: 6)
!186 = !DILocation(line: 97, column: 6, scope: !24)
!187 = !DILocation(line: 98, column: 21, scope: !185)
!188 = !DILocation(line: 98, column: 27, scope: !185)
!189 = !DILocation(line: 98, column: 3, scope: !185)
!190 = !DILocation(line: 99, column: 1, scope: !24)
!191 = distinct !DISubprogram(name: "parse_console_uart8250", scope: !2, file: !2, line: 117, type: !25, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !192)
!192 = !{!193, !197, !198, !199}
!193 = !DILocalVariable(name: "optstr", scope: !191, file: !2, line: 119, type: !194)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 64)
!197 = !DILocalVariable(name: "options", scope: !191, file: !2, line: 119, type: !56)
!198 = !DILocalVariable(name: "baud", scope: !191, file: !2, line: 120, type: !46)
!199 = !DILocalVariable(name: "port", scope: !191, file: !2, line: 121, type: !46)
!200 = !DILocation(line: 119, column: 2, scope: !191)
!201 = !DILocation(line: 119, column: 7, scope: !191)
!202 = !DILocation(line: 119, column: 20, scope: !191)
!203 = !DILocation(line: 120, column: 2, scope: !191)
!204 = !DILocation(line: 120, column: 6, scope: !191)
!205 = !DILocation(line: 121, column: 2, scope: !191)
!206 = !DILocation(line: 121, column: 6, scope: !191)
!207 = !DILocation(line: 127, column: 37, scope: !208)
!208 = distinct !DILexicalBlock(scope: !191, file: !2, line: 127, column: 6)
!209 = !DILocation(line: 127, column: 6, scope: !208)
!210 = !DILocation(line: 127, column: 61, scope: !208)
!211 = !DILocation(line: 127, column: 6, scope: !191)
!212 = !DILocation(line: 128, column: 3, scope: !208)
!213 = !DILocation(line: 130, column: 12, scope: !191)
!214 = !DILocation(line: 130, column: 10, scope: !191)
!215 = !DILocation(line: 132, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !191, file: !2, line: 132, column: 6)
!217 = !DILocation(line: 132, column: 7, scope: !216)
!218 = !DILocation(line: 132, column: 6, scope: !191)
!219 = !DILocation(line: 133, column: 26, scope: !216)
!220 = !DILocation(line: 133, column: 34, scope: !216)
!221 = !DILocation(line: 133, column: 10, scope: !216)
!222 = !DILocation(line: 133, column: 8, scope: !216)
!223 = !DILocation(line: 133, column: 3, scope: !216)
!224 = !DILocation(line: 134, column: 20, scope: !225)
!225 = distinct !DILexicalBlock(scope: !216, file: !2, line: 134, column: 11)
!226 = !DILocation(line: 134, column: 12, scope: !225)
!227 = !DILocation(line: 134, column: 11, scope: !216)
!228 = !DILocation(line: 135, column: 26, scope: !225)
!229 = !DILocation(line: 135, column: 34, scope: !225)
!230 = !DILocation(line: 135, column: 10, scope: !225)
!231 = !DILocation(line: 135, column: 8, scope: !225)
!232 = !DILocation(line: 135, column: 3, scope: !225)
!233 = !DILocation(line: 137, column: 3, scope: !225)
!234 = !DILocation(line: 139, column: 6, scope: !235)
!235 = distinct !DILexicalBlock(scope: !191, file: !2, line: 139, column: 6)
!236 = !DILocation(line: 139, column: 14, scope: !235)
!237 = !DILocation(line: 139, column: 18, scope: !235)
!238 = !DILocation(line: 139, column: 29, scope: !235)
!239 = !DILocation(line: 139, column: 6, scope: !191)
!240 = !DILocation(line: 140, column: 26, scope: !235)
!241 = !DILocation(line: 140, column: 34, scope: !235)
!242 = !DILocation(line: 140, column: 10, scope: !235)
!243 = !DILocation(line: 140, column: 8, scope: !235)
!244 = !DILocation(line: 140, column: 3, scope: !235)
!245 = !DILocation(line: 142, column: 21, scope: !235)
!246 = !DILocation(line: 142, column: 10, scope: !235)
!247 = !DILocation(line: 142, column: 8, scope: !235)
!248 = !DILocation(line: 144, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !191, file: !2, line: 144, column: 6)
!250 = !DILocation(line: 144, column: 6, scope: !191)
!251 = !DILocation(line: 145, column: 21, scope: !249)
!252 = !DILocation(line: 145, column: 27, scope: !249)
!253 = !DILocation(line: 145, column: 3, scope: !249)
!254 = !DILocation(line: 146, column: 1, scope: !191)
!255 = distinct !DISubprogram(name: "cmdline_find_option", scope: !256, file: !256, line: 251, type: !257, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !261)
!256 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!257 = !DISubroutineType(types: !258)
!258 = !{!46, !259, !56, !46}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!261 = !{!262, !263, !264, !265}
!262 = !DILocalVariable(name: "option", arg: 1, scope: !255, file: !256, line: 251, type: !259)
!263 = !DILocalVariable(name: "buffer", arg: 2, scope: !255, file: !256, line: 251, type: !56)
!264 = !DILocalVariable(name: "bufsize", arg: 3, scope: !255, file: !256, line: 251, type: !46)
!265 = !DILocalVariable(name: "cmd_line_ptr", scope: !255, file: !256, line: 253, type: !266)
!266 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!267 = !DILocation(line: 251, column: 51, scope: !255)
!268 = !DILocation(line: 251, column: 65, scope: !255)
!269 = !DILocation(line: 251, column: 77, scope: !255)
!270 = !DILocation(line: 253, column: 2, scope: !255)
!271 = !DILocation(line: 253, column: 16, scope: !255)
!272 = !DILocation(line: 253, column: 47, scope: !255)
!273 = !DILocation(line: 255, column: 6, scope: !274)
!274 = distinct !DILexicalBlock(scope: !255, file: !256, line: 255, column: 6)
!275 = !DILocation(line: 255, column: 19, scope: !274)
!276 = !DILocation(line: 255, column: 6, scope: !255)
!277 = !DILocation(line: 256, column: 3, scope: !274)
!278 = !DILocation(line: 258, column: 31, scope: !255)
!279 = !DILocation(line: 258, column: 45, scope: !255)
!280 = !DILocation(line: 258, column: 53, scope: !255)
!281 = !DILocation(line: 258, column: 61, scope: !255)
!282 = !DILocation(line: 258, column: 9, scope: !255)
!283 = !DILocation(line: 258, column: 2, scope: !255)
!284 = !DILocation(line: 259, column: 1, scope: !255)
!285 = !DISubprogram(name: "strncmp", scope: !256, file: !256, line: 306, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!46, !259, !259, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !289, line: 61, baseType: !290)
!289 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !291, line: 68, baseType: !292)
!291 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!292 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!293 = !DISubprogram(name: "simple_strtoull", scope: !256, file: !256, line: 309, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !259, !297, !292}
!296 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 32)
!298 = distinct !DISubprogram(name: "early_serial_init", scope: !2, file: !2, line: 26, type: !299, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !46, !46}
!301 = !{!302, !303, !304, !306}
!302 = !DILocalVariable(name: "port", arg: 1, scope: !298, file: !2, line: 26, type: !46)
!303 = !DILocalVariable(name: "baud", arg: 2, scope: !298, file: !2, line: 26, type: !46)
!304 = !DILocalVariable(name: "c", scope: !298, file: !2, line: 28, type: !305)
!305 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!306 = !DILocalVariable(name: "divisor", scope: !298, file: !2, line: 29, type: !292)
!307 = !DILocation(line: 26, column: 35, scope: !298)
!308 = !DILocation(line: 26, column: 45, scope: !298)
!309 = !DILocation(line: 28, column: 2, scope: !298)
!310 = !DILocation(line: 28, column: 16, scope: !298)
!311 = !DILocation(line: 29, column: 2, scope: !298)
!312 = !DILocation(line: 29, column: 11, scope: !298)
!313 = !DILocation(line: 31, column: 2, scope: !298)
!314 = !DILocation(line: 31, column: 12, scope: !298)
!315 = !DILocation(line: 31, column: 17, scope: !298)
!316 = !DILocation(line: 32, column: 2, scope: !298)
!317 = !DILocation(line: 32, column: 10, scope: !298)
!318 = !DILocation(line: 32, column: 15, scope: !298)
!319 = !DILocation(line: 33, column: 2, scope: !298)
!320 = !DILocation(line: 33, column: 10, scope: !298)
!321 = !DILocation(line: 33, column: 15, scope: !298)
!322 = !DILocation(line: 34, column: 2, scope: !298)
!323 = !DILocation(line: 34, column: 12, scope: !298)
!324 = !DILocation(line: 34, column: 17, scope: !298)
!325 = !DILocation(line: 36, column: 21, scope: !298)
!326 = !DILocation(line: 36, column: 19, scope: !298)
!327 = !DILocation(line: 36, column: 10, scope: !298)
!328 = !DILocation(line: 37, column: 6, scope: !298)
!329 = !DILocation(line: 37, column: 10, scope: !298)
!330 = !DILocation(line: 37, column: 15, scope: !298)
!331 = !DILocation(line: 37, column: 4, scope: !298)
!332 = !DILocation(line: 38, column: 2, scope: !298)
!333 = !DILocation(line: 38, column: 7, scope: !298)
!334 = !DILocation(line: 38, column: 9, scope: !298)
!335 = !DILocation(line: 38, column: 17, scope: !298)
!336 = !DILocation(line: 38, column: 22, scope: !298)
!337 = !DILocation(line: 39, column: 2, scope: !298)
!338 = !DILocation(line: 39, column: 7, scope: !298)
!339 = !DILocation(line: 39, column: 15, scope: !298)
!340 = !DILocation(line: 39, column: 23, scope: !298)
!341 = !DILocation(line: 39, column: 28, scope: !298)
!342 = !DILocation(line: 40, column: 2, scope: !298)
!343 = !DILocation(line: 40, column: 8, scope: !298)
!344 = !DILocation(line: 40, column: 16, scope: !298)
!345 = !DILocation(line: 40, column: 22, scope: !298)
!346 = !DILocation(line: 40, column: 7, scope: !298)
!347 = !DILocation(line: 40, column: 30, scope: !298)
!348 = !DILocation(line: 40, column: 35, scope: !298)
!349 = !DILocation(line: 41, column: 2, scope: !298)
!350 = !DILocation(line: 41, column: 7, scope: !298)
!351 = !DILocation(line: 41, column: 9, scope: !298)
!352 = !DILocation(line: 41, column: 18, scope: !298)
!353 = !DILocation(line: 41, column: 23, scope: !298)
!354 = !DILocation(line: 43, column: 22, scope: !298)
!355 = !DILocation(line: 43, column: 20, scope: !298)
!356 = !DILocation(line: 44, column: 1, scope: !298)
!357 = !DISubprogram(name: "__cmdline_find_option", scope: !256, file: !256, line: 249, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{!46, !266, !259, !56, !46}
!360 = distinct !DISubprogram(name: "probe_baud", scope: !2, file: !2, line: 102, type: !361, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !27, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{!292, !46}
!363 = !{!364, !365, !366, !367, !368}
!364 = !DILocalVariable(name: "port", arg: 1, scope: !360, file: !2, line: 102, type: !46)
!365 = !DILocalVariable(name: "lcr", scope: !360, file: !2, line: 104, type: !305)
!366 = !DILocalVariable(name: "dll", scope: !360, file: !2, line: 104, type: !305)
!367 = !DILocalVariable(name: "dlh", scope: !360, file: !2, line: 104, type: !305)
!368 = !DILocalVariable(name: "quot", scope: !360, file: !2, line: 105, type: !292)
!369 = !DILocation(line: 102, column: 36, scope: !360)
!370 = !DILocation(line: 104, column: 2, scope: !360)
!371 = !DILocation(line: 104, column: 16, scope: !360)
!372 = !DILocation(line: 104, column: 21, scope: !360)
!373 = !DILocation(line: 104, column: 26, scope: !360)
!374 = !DILocation(line: 105, column: 2, scope: !360)
!375 = !DILocation(line: 105, column: 15, scope: !360)
!376 = !DILocation(line: 107, column: 8, scope: !360)
!377 = !DILocation(line: 107, column: 12, scope: !360)
!378 = !DILocation(line: 107, column: 17, scope: !360)
!379 = !DILocation(line: 107, column: 6, scope: !360)
!380 = !DILocation(line: 108, column: 2, scope: !360)
!381 = !DILocation(line: 108, column: 7, scope: !360)
!382 = !DILocation(line: 108, column: 11, scope: !360)
!383 = !DILocation(line: 108, column: 19, scope: !360)
!384 = !DILocation(line: 108, column: 24, scope: !360)
!385 = !DILocation(line: 109, column: 8, scope: !360)
!386 = !DILocation(line: 109, column: 12, scope: !360)
!387 = !DILocation(line: 109, column: 17, scope: !360)
!388 = !DILocation(line: 109, column: 6, scope: !360)
!389 = !DILocation(line: 110, column: 8, scope: !360)
!390 = !DILocation(line: 110, column: 12, scope: !360)
!391 = !DILocation(line: 110, column: 17, scope: !360)
!392 = !DILocation(line: 110, column: 6, scope: !360)
!393 = !DILocation(line: 111, column: 2, scope: !360)
!394 = !DILocation(line: 111, column: 7, scope: !360)
!395 = !DILocation(line: 111, column: 12, scope: !360)
!396 = !DILocation(line: 111, column: 17, scope: !360)
!397 = !DILocation(line: 112, column: 10, scope: !360)
!398 = !DILocation(line: 112, column: 14, scope: !360)
!399 = !DILocation(line: 112, column: 22, scope: !360)
!400 = !DILocation(line: 112, column: 20, scope: !360)
!401 = !DILocation(line: 112, column: 7, scope: !360)
!402 = !DILocation(line: 114, column: 21, scope: !360)
!403 = !DILocation(line: 114, column: 19, scope: !360)
!404 = !DILocation(line: 115, column: 1, scope: !360)
!405 = !DILocation(line: 114, column: 2, scope: !360)
