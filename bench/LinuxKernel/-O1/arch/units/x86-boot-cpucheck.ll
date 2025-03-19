; ModuleID = 'arch/x86/boot/cpucheck.c'
source_filename = "arch/x86/boot/cpucheck.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.cpu_features = type { i32, i32, i32, [22 x i32] }
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
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.0, %union.anon.7, i8, i8 }>
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i16, i16, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { i8, i8, i16, i32, i64 }
%struct.msr = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }

@cpu = external dso_local global %struct.cpu_features, align 4
@err_flags = internal global [22 x i32] zeroinitializer, align 4, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"forcepae\00", align 1, !dbg !12
@.str.1 = private unnamed_addr constant [35 x i8] c"WARNING: Forcing PAE in CPU flags\0A\00", align 1, !dbg !18
@.str.2 = private unnamed_addr constant [77 x i8] c"WARNING: PAE disabled. Use parameter 'forcepae' to enable at your own risk!\0A\00", align 1, !dbg !23
@req_flags = internal constant <{ i32, i32, [20 x i32] }> <{ i32 117473641, i32 536870912, [20 x i32] zeroinitializer }>, align 4, !dbg !32
@cpu_vendor = external dso_local global [3 x i32], align 4
@boot_params = external dso_local global %struct.boot_params, align 1

; Function Attrs: nounwind
define dso_local i32 @check_cpu(ptr inreg noundef %cpu_level_ptr, ptr inreg noundef %req_level_ptr, ptr inreg noundef %err_flags_ptr) #0 !dbg !45 {
entry:
  %cpu_level_ptr.addr = alloca ptr, align 4
  %req_level_ptr.addr = alloca ptr, align 4
  %err_flags_ptr.addr = alloca ptr, align 4
  %err = alloca i32, align 4
  %m = alloca %struct.msr, align 4
  %m23 = alloca %struct.msr, align 4
  %m32 = alloca %struct.msr, align 4
  %m_tmp = alloca %struct.msr, align 4
  %level = alloca i32, align 4
  store ptr %cpu_level_ptr, ptr %cpu_level_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu_level_ptr.addr, metadata !51, metadata !DIExpression()), !dbg !81
  store ptr %req_level_ptr, ptr %req_level_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %req_level_ptr.addr, metadata !52, metadata !DIExpression()), !dbg !82
  store ptr %err_flags_ptr, ptr %err_flags_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err_flags_ptr.addr, metadata !53, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %err, metadata !54, metadata !DIExpression()), !dbg !85
  call void @llvm.memset.p0.i32(ptr align 4 getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3), i8 0, i32 88, i1 false), !dbg !86
  store i32 3, ptr @cpu, align 4, !dbg !87
  %call = call i32 @has_eflag(i32 inreg noundef 262144) #9, !dbg !88
  %tobool = icmp ne i32 %call, 0, !dbg !88
  br i1 %tobool, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  store i32 4, ptr @cpu, align 4, !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then, %entry
  call void @get_cpuflags() #9, !dbg !93
  %call1 = call i32 @check_cpuflags() #9, !dbg !94
  store i32 %call1, ptr %err, align 4, !dbg !95
  br i1 true, label %cond.true, label %cond.false, !dbg !96

cond.true:                                        ; preds = %if.end
  %call2 = call zeroext i1 @constant_test_bit(i32 inreg noundef 61, ptr inreg noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #9, !dbg !97
  br i1 %call2, label %if.then4, label %if.end5, !dbg !97

cond.false:                                       ; preds = %if.end
  %call3 = call zeroext i1 @variable_test_bit(i32 inreg noundef 61, ptr inreg noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #9, !dbg !97
  br i1 %call3, label %if.then4, label %if.end5, !dbg !96

if.then4:                                         ; preds = %cond.false, %cond.true
  store i32 64, ptr @cpu, align 4, !dbg !99
  br label %if.end5, !dbg !100

if.end5:                                          ; preds = %if.then4, %cond.false, %cond.true
  %0 = load i32, ptr %err, align 4, !dbg !101
  %cmp = icmp eq i32 %0, 1, !dbg !102
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !103

land.lhs.true:                                    ; preds = %if.end5
  %1 = load i32, ptr @err_flags, align 4, !dbg !104
  %and = and i32 %1, -100663297, !dbg !105
  %tobool6 = icmp ne i32 %and, 0, !dbg !105
  br i1 %tobool6, label %if.else, label %land.lhs.true7, !dbg !106

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = call i32 @is_amd() #9, !dbg !107
  %tobool9 = icmp ne i32 %call8, 0, !dbg !107
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !108

if.then10:                                        ; preds = %land.lhs.true7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #8, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %m, metadata !55, metadata !DIExpression()), !dbg !110
  call void @boot_rdmsr(i32 inreg noundef -1073676267, ptr inreg noundef %m) #9, !dbg !111
  %2 = getelementptr inbounds %struct.msr, ptr %m, i32 0, i32 0, !dbg !112
  %l = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !112
  %3 = load i32, ptr %l, align 4, !dbg !113
  %and11 = and i32 %3, -32769, !dbg !113
  store i32 %and11, ptr %l, align 4, !dbg !113
  call void @boot_wrmsr(i32 inreg noundef -1073676267, ptr inreg noundef %m) #9, !dbg !114
  call void @get_cpuflags() #9, !dbg !115
  %call12 = call i32 @check_cpuflags() #9, !dbg !116
  store i32 %call12, ptr %err, align 4, !dbg !117
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #8, !dbg !118
  br label %if.end59, !dbg !119

if.else:                                          ; preds = %land.lhs.true7, %land.lhs.true, %if.end5
  %4 = load i32, ptr %err, align 4, !dbg !120
  %cmp13 = icmp eq i32 %4, 1, !dbg !121
  br i1 %cmp13, label %land.lhs.true14, label %if.else26, !dbg !122

land.lhs.true14:                                  ; preds = %if.else
  %5 = load i32, ptr @err_flags, align 4, !dbg !123
  %and15 = and i32 %5, -257, !dbg !124
  %tobool16 = icmp ne i32 %and15, 0, !dbg !124
  br i1 %tobool16, label %if.else26, label %land.lhs.true17, !dbg !125

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %call18 = call i32 @is_centaur() #9, !dbg !126
  %tobool19 = icmp ne i32 %call18, 0, !dbg !126
  br i1 %tobool19, label %land.lhs.true20, label %if.else26, !dbg !127

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %6 = load i32, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !128
  %cmp21 = icmp sge i32 %6, 6, !dbg !129
  br i1 %cmp21, label %if.then22, label %if.else26, !dbg !130

if.then22:                                        ; preds = %land.lhs.true20
  call void @llvm.lifetime.start.p0(i64 8, ptr %m23) #8, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %m23, metadata !73, metadata !DIExpression()), !dbg !132
  call void @boot_rdmsr(i32 inreg noundef 4359, ptr inreg noundef %m23) #9, !dbg !133
  %7 = getelementptr inbounds %struct.msr, ptr %m23, i32 0, i32 0, !dbg !134
  %l24 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 0, !dbg !134
  %8 = load i32, ptr %l24, align 4, !dbg !135
  %or = or i32 %8, 130, !dbg !135
  store i32 %or, ptr %l24, align 4, !dbg !135
  call void @boot_wrmsr(i32 inreg noundef 4359, ptr inreg noundef %m23) #9, !dbg !136
  call void @set_bit(i32 inreg noundef 8, ptr inreg noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #9, !dbg !137
  %call25 = call i32 @check_cpuflags() #9, !dbg !138
  store i32 %call25, ptr %err, align 4, !dbg !139
  call void @llvm.lifetime.end.p0(i64 8, ptr %m23) #8, !dbg !140
  br label %if.end58, !dbg !141

if.else26:                                        ; preds = %land.lhs.true20, %land.lhs.true17, %land.lhs.true14, %if.else
  %9 = load i32, ptr %err, align 4, !dbg !142
  %cmp27 = icmp eq i32 %9, 1, !dbg !143
  br i1 %cmp27, label %land.lhs.true28, label %if.else36, !dbg !144

land.lhs.true28:                                  ; preds = %if.else26
  %call29 = call i32 @is_transmeta() #9, !dbg !145
  %tobool30 = icmp ne i32 %call29, 0, !dbg !145
  br i1 %tobool30, label %if.then31, label %if.else36, !dbg !146

if.then31:                                        ; preds = %land.lhs.true28
  call void @llvm.lifetime.start.p0(i64 8, ptr %m32) #8, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %m32, metadata !76, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_tmp) #8, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %m_tmp, metadata !79, metadata !DIExpression()), !dbg !149
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #8, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %level, metadata !80, metadata !DIExpression()), !dbg !151
  store i32 1, ptr %level, align 4, !dbg !151
  call void @boot_rdmsr(i32 inreg noundef -2138701820, ptr inreg noundef %m32) #9, !dbg !152
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %m_tmp, ptr align 4 %m32, i32 8, i1 false), !dbg !153
  %10 = getelementptr inbounds %struct.msr, ptr %m_tmp, i32 0, i32 0, !dbg !154
  %l33 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 0, !dbg !154
  store i32 -1, ptr %l33, align 4, !dbg !155
  call void @boot_wrmsr(i32 inreg noundef -2138701820, ptr inreg noundef %m_tmp) #9, !dbg !156
  %11 = load i32, ptr %level, align 4, !dbg !157
  %12 = call { i32, i32 } asm "cpuid", "={ax},={dx},0,~{ecx},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 %11) #10, !dbg !157, !srcloc !158
  %asmresult = extractvalue { i32, i32 } %12, 0, !dbg !157
  %asmresult34 = extractvalue { i32, i32 } %12, 1, !dbg !157
  store i32 %asmresult, ptr %level, align 4, !dbg !157
  store i32 %asmresult34, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3), align 4, !dbg !157
  call void @boot_wrmsr(i32 inreg noundef -2138701820, ptr inreg noundef %m32) #9, !dbg !159
  %call35 = call i32 @check_cpuflags() #9, !dbg !160
  store i32 %call35, ptr %err, align 4, !dbg !161
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #8, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_tmp) #8, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %m32) #8, !dbg !162
  br label %if.end57, !dbg !163

if.else36:                                        ; preds = %land.lhs.true28, %if.else26
  %13 = load i32, ptr %err, align 4, !dbg !164
  %cmp37 = icmp eq i32 %13, 1, !dbg !166
  br i1 %cmp37, label %land.lhs.true38, label %if.end56, !dbg !167

land.lhs.true38:                                  ; preds = %if.else36
  %14 = load i32, ptr @err_flags, align 4, !dbg !168
  %and39 = and i32 %14, -65, !dbg !169
  %tobool40 = icmp ne i32 %and39, 0, !dbg !169
  br i1 %tobool40, label %if.end56, label %land.lhs.true41, !dbg !170

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %call42 = call i32 @is_intel() #9, !dbg !171
  %tobool43 = icmp ne i32 %call42, 0, !dbg !171
  br i1 %tobool43, label %land.lhs.true44, label %if.end56, !dbg !172

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %15 = load i32, ptr @cpu, align 4, !dbg !173
  %cmp45 = icmp eq i32 %15, 6, !dbg !174
  br i1 %cmp45, label %land.lhs.true46, label %if.end56, !dbg !175

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %16 = load i32, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !176
  %cmp47 = icmp eq i32 %16, 9, !dbg !177
  br i1 %cmp47, label %if.then49, label %lor.lhs.false, !dbg !178

lor.lhs.false:                                    ; preds = %land.lhs.true46
  %17 = load i32, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !179
  %cmp48 = icmp eq i32 %17, 13, !dbg !180
  br i1 %cmp48, label %if.then49, label %if.end56, !dbg !181

if.then49:                                        ; preds = %lor.lhs.false, %land.lhs.true46
  %call50 = call i32 @cmdline_find_option_bool(ptr inreg noundef @.str) #9, !dbg !182
  %tobool51 = icmp ne i32 %call50, 0, !dbg !182
  br i1 %tobool51, label %if.then52, label %if.else54, !dbg !185

if.then52:                                        ; preds = %if.then49
  call void @puts(ptr inreg noundef @.str.1) #9, !dbg !186
  call void @set_bit(i32 inreg noundef 6, ptr inreg noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #9, !dbg !188
  %call53 = call i32 @check_cpuflags() #9, !dbg !189
  store i32 %call53, ptr %err, align 4, !dbg !190
  br label %if.end55, !dbg !191

if.else54:                                        ; preds = %if.then49
  call void @puts(ptr inreg noundef @.str.2) #9, !dbg !192
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then52
  br label %if.end56, !dbg !194

if.end56:                                         ; preds = %if.end55, %lor.lhs.false, %land.lhs.true44, %land.lhs.true41, %land.lhs.true38, %if.else36
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then31
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then22
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then10
  %18 = load i32, ptr %err, align 4, !dbg !195
  %tobool60 = icmp ne i32 %18, 0, !dbg !195
  br i1 %tobool60, label %if.end63, label %if.then61, !dbg !197

if.then61:                                        ; preds = %if.end59
  %call62 = call i32 @check_knl_erratum() #9, !dbg !198
  store i32 %call62, ptr %err, align 4, !dbg !199
  br label %if.end63, !dbg !200

if.end63:                                         ; preds = %if.then61, %if.end59
  %19 = load ptr, ptr %err_flags_ptr.addr, align 4, !dbg !201
  %tobool64 = icmp ne ptr %19, null, !dbg !201
  br i1 %tobool64, label %if.then65, label %if.end67, !dbg !203

if.then65:                                        ; preds = %if.end63
  %20 = load i32, ptr %err, align 4, !dbg !204
  %tobool66 = icmp ne i32 %20, 0, !dbg !204
  %21 = zext i1 %tobool66 to i64, !dbg !204
  %cond = select i1 %tobool66, ptr @err_flags, ptr null, !dbg !204
  %22 = load ptr, ptr %err_flags_ptr.addr, align 4, !dbg !205
  store ptr %cond, ptr %22, align 4, !dbg !206
  br label %if.end67, !dbg !207

if.end67:                                         ; preds = %if.then65, %if.end63
  %23 = load ptr, ptr %cpu_level_ptr.addr, align 4, !dbg !208
  %tobool68 = icmp ne ptr %23, null, !dbg !208
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !210

if.then69:                                        ; preds = %if.end67
  %24 = load i32, ptr @cpu, align 4, !dbg !211
  %25 = load ptr, ptr %cpu_level_ptr.addr, align 4, !dbg !212
  store i32 %24, ptr %25, align 4, !dbg !213
  br label %if.end70, !dbg !214

if.end70:                                         ; preds = %if.then69, %if.end67
  %26 = load ptr, ptr %req_level_ptr.addr, align 4, !dbg !215
  %tobool71 = icmp ne ptr %26, null, !dbg !215
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !217

if.then72:                                        ; preds = %if.end70
  %27 = load ptr, ptr %req_level_ptr.addr, align 4, !dbg !218
  store i32 64, ptr %27, align 4, !dbg !219
  br label %if.end73, !dbg !220

if.end73:                                         ; preds = %if.then72, %if.end70
  %28 = load i32, ptr @cpu, align 4, !dbg !221
  %cmp74 = icmp slt i32 %28, 64, !dbg !222
  br i1 %cmp74, label %lor.end, label %lor.rhs, !dbg !223

lor.rhs:                                          ; preds = %if.end73
  %29 = load i32, ptr %err, align 4, !dbg !224
  %tobool75 = icmp ne i32 %29, 0, !dbg !223
  br label %lor.end, !dbg !223

lor.end:                                          ; preds = %lor.rhs, %if.end73
  %30 = phi i1 [ true, %if.end73 ], [ %tobool75, %lor.rhs ]
  %31 = zext i1 %30 to i64, !dbg !225
  %cond76 = select i1 %30, i32 -1, i32 0, !dbg !225
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !226
  ret i32 %cond76, !dbg !227
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

declare !dbg !228 dso_local i32 @has_eflag(i32 inreg noundef) #4

declare !dbg !233 dso_local void @get_cpuflags() #4

; Function Attrs: nounwind
define internal i32 @check_cpuflags() #0 !dbg !236 {
entry:
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %err, metadata !240, metadata !DIExpression()), !dbg !243
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #8, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %i, metadata !241, metadata !DIExpression()), !dbg !245
  store i32 0, ptr %err, align 4, !dbg !246
  store i32 0, ptr %i, align 4, !dbg !247
  br label %for.cond, !dbg !249

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !250
  %cmp = icmp slt i32 %0, 22, !dbg !252
  br i1 %cmp, label %for.body, label %for.end, !dbg !253

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !254
  %arrayidx = getelementptr inbounds [22 x i32], ptr @req_flags, i32 0, i32 %1, !dbg !256
  %2 = load i32, ptr %arrayidx, align 4, !dbg !256
  %3 = load i32, ptr %i, align 4, !dbg !257
  %arrayidx1 = getelementptr inbounds [22 x i32], ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3), i32 0, i32 %3, !dbg !258
  %4 = load i32, ptr %arrayidx1, align 4, !dbg !258
  %not = xor i32 %4, -1, !dbg !259
  %and = and i32 %2, %not, !dbg !260
  %5 = load i32, ptr %i, align 4, !dbg !261
  %arrayidx2 = getelementptr inbounds [22 x i32], ptr @err_flags, i32 0, i32 %5, !dbg !262
  store i32 %and, ptr %arrayidx2, align 4, !dbg !263
  %6 = load i32, ptr %i, align 4, !dbg !264
  %arrayidx3 = getelementptr inbounds [22 x i32], ptr @err_flags, i32 0, i32 %6, !dbg !266
  %7 = load i32, ptr %arrayidx3, align 4, !dbg !266
  %tobool = icmp ne i32 %7, 0, !dbg !266
  br i1 %tobool, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !268
  %shl = shl i32 1, %8, !dbg !269
  %9 = load i32, ptr %err, align 4, !dbg !270
  %or = or i32 %9, %shl, !dbg !270
  store i32 %or, ptr %err, align 4, !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !272

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !273
  %inc = add nsw i32 %10, 1, !dbg !273
  store i32 %inc, ptr %i, align 4, !dbg !273
  br label %for.cond, !dbg !274, !llvm.loop !275

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %err, align 4, !dbg !279
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #8, !dbg !280
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !280
  ret i32 %11, !dbg !281
}

; Function Attrs: inlinehint nounwind
define internal zeroext i1 @constant_test_bit(i32 inreg noundef %nr, ptr inreg noundef %addr) #5 !dbg !282 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 4
  %p = alloca ptr, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !292, metadata !DIExpression()), !dbg !296
  store ptr %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !293, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #8, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %p, metadata !294, metadata !DIExpression()), !dbg !299
  %0 = load ptr, ptr %addr.addr, align 4, !dbg !300
  store ptr %0, ptr %p, align 4, !dbg !299
  %1 = load i32, ptr %nr.addr, align 4, !dbg !301
  %and = and i32 %1, 31, !dbg !302
  %shl = shl i32 1, %and, !dbg !303
  %2 = load ptr, ptr %p, align 4, !dbg !304
  %3 = load i32, ptr %nr.addr, align 4, !dbg !305
  %shr = ashr i32 %3, 5, !dbg !306
  %arrayidx = getelementptr inbounds i32, ptr %2, i32 %shr, !dbg !304
  %4 = load i32, ptr %arrayidx, align 4, !dbg !304
  %and1 = and i32 %shl, %4, !dbg !307
  %cmp = icmp ne i32 %and1, 0, !dbg !308
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #8, !dbg !309
  ret i1 %cmp, !dbg !310
}

; Function Attrs: inlinehint nounwind
define internal zeroext i1 @variable_test_bit(i32 inreg noundef %nr, ptr inreg noundef %addr) #5 !dbg !311 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 4
  %v = alloca i8, align 1
  %p = alloca ptr, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !313, metadata !DIExpression()), !dbg !317
  store ptr %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !314, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #8, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %v, metadata !315, metadata !DIExpression()), !dbg !320
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #8, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %p, metadata !316, metadata !DIExpression()), !dbg !322
  %0 = load ptr, ptr %addr.addr, align 4, !dbg !323
  store ptr %0, ptr %p, align 4, !dbg !322
  %1 = load ptr, ptr %p, align 4, !dbg !324
  %2 = load i32, ptr %nr.addr, align 4, !dbg !325
  %3 = call i8 asm "btl $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 %2) #11, !dbg !326, !srcloc !327
  %4 = icmp ult i8 %3, 2, !dbg !326
  call void @llvm.assume(i1 %4), !dbg !326
  store i8 %3, ptr %v, align 1, !dbg !326
  %5 = load i8, ptr %v, align 1, !dbg !328, !range !329, !noundef !330
  %tobool = trunc i8 %5 to i1, !dbg !328
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #8, !dbg !331
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #8, !dbg !331
  ret i1 %tobool, !dbg !332
}

; Function Attrs: nounwind
define internal i32 @is_amd() #0 !dbg !333 {
entry:
  %0 = load i32, ptr @cpu_vendor, align 4, !dbg !334
  %cmp = icmp eq i32 %0, 1752462657, !dbg !335
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !336

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 1), align 4, !dbg !337
  %cmp1 = icmp eq i32 %1, 1769238117, !dbg !338
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !339

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 2), align 4, !dbg !340
  %cmp2 = icmp eq i32 %2, 1145913699, !dbg !341
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !342
  %land.ext = zext i1 %3 to i32, !dbg !339
  ret i32 %land.ext, !dbg !343
}

; Function Attrs: inlinehint nounwind
define internal void @boot_rdmsr(i32 inreg noundef %reg, ptr inreg noundef %m) #5 !dbg !344 {
entry:
  %reg.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !350, metadata !DIExpression()), !dbg !352
  store ptr %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !351, metadata !DIExpression()), !dbg !353
  %0 = load ptr, ptr %m.addr, align 4, !dbg !354
  %1 = getelementptr inbounds %struct.msr, ptr %0, i32 0, i32 0, !dbg !355
  %l = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !355
  %2 = load ptr, ptr %m.addr, align 4, !dbg !356
  %3 = getelementptr inbounds %struct.msr, ptr %2, i32 0, i32 0, !dbg !357
  %h = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1, !dbg !357
  %4 = load i32, ptr %reg.addr, align 4, !dbg !358
  %5 = call { i32, i32 } asm sideeffect "rdmsr", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %4) #8, !dbg !359, !srcloc !360
  %asmresult = extractvalue { i32, i32 } %5, 0, !dbg !359
  %asmresult1 = extractvalue { i32, i32 } %5, 1, !dbg !359
  store i32 %asmresult, ptr %l, align 4, !dbg !359
  store i32 %asmresult1, ptr %h, align 4, !dbg !359
  ret void, !dbg !361
}

; Function Attrs: inlinehint nounwind
define internal void @boot_wrmsr(i32 inreg noundef %reg, ptr inreg noundef %m) #5 !dbg !362 {
entry:
  %reg.addr = alloca i32, align 4
  %m.addr = alloca ptr, align 4
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !368, metadata !DIExpression()), !dbg !370
  store ptr %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !369, metadata !DIExpression()), !dbg !371
  %0 = load i32, ptr %reg.addr, align 4, !dbg !372
  %1 = load ptr, ptr %m.addr, align 4, !dbg !373
  %2 = getelementptr inbounds %struct.msr, ptr %1, i32 0, i32 0, !dbg !374
  %l = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !374
  %3 = load i32, ptr %l, align 4, !dbg !374
  %4 = load ptr, ptr %m.addr, align 4, !dbg !375
  %5 = getelementptr inbounds %struct.msr, ptr %4, i32 0, i32 0, !dbg !376
  %h = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1, !dbg !376
  %6 = load i32, ptr %h, align 4, !dbg !376
  call void asm sideeffect "wrmsr", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %3, i32 %6) #8, !dbg !377, !srcloc !378
  ret void, !dbg !379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define internal i32 @is_centaur() #0 !dbg !380 {
entry:
  %0 = load i32, ptr @cpu_vendor, align 4, !dbg !381
  %cmp = icmp eq i32 %0, 1953391939, !dbg !382
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !383

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 1), align 4, !dbg !384
  %cmp1 = icmp eq i32 %1, 1215460705, !dbg !385
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !386

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 2), align 4, !dbg !387
  %cmp2 = icmp eq i32 %2, 1936487777, !dbg !388
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !389
  %land.ext = zext i1 %3 to i32, !dbg !386
  ret i32 %land.ext, !dbg !390
}

; Function Attrs: inlinehint nounwind
define internal void @set_bit(i32 inreg noundef %nr, ptr inreg noundef %addr) #5 !dbg !391 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !396, metadata !DIExpression()), !dbg !398
  store ptr %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !397, metadata !DIExpression()), !dbg !399
  %0 = load ptr, ptr %addr.addr, align 4, !dbg !400
  %1 = load i32, ptr %nr.addr, align 4, !dbg !401
  call void asm "btsl $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 %1, ptr elementtype(i32) %0) #8, !dbg !402, !srcloc !403
  ret void, !dbg !404
}

; Function Attrs: nounwind
define internal i32 @is_transmeta() #0 !dbg !405 {
entry:
  %0 = load i32, ptr @cpu_vendor, align 4, !dbg !406
  %cmp = icmp eq i32 %0, 1970169159, !dbg !407
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !408

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 1), align 4, !dbg !409
  %cmp1 = icmp eq i32 %1, 1415933545, !dbg !410
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !411

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 2), align 4, !dbg !412
  %cmp2 = icmp eq i32 %2, 909670477, !dbg !413
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !414
  %land.ext = zext i1 %3 to i32, !dbg !411
  ret i32 %land.ext, !dbg !415
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind
define internal i32 @is_intel() #0 !dbg !416 {
entry:
  %0 = load i32, ptr @cpu_vendor, align 4, !dbg !417
  %cmp = icmp eq i32 %0, 1970169159, !dbg !418
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !419

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 1), align 4, !dbg !420
  %cmp1 = icmp eq i32 %1, 1231384169, !dbg !421
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !422

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 2), align 4, !dbg !423
  %cmp2 = icmp eq i32 %2, 1818588270, !dbg !424
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp2, %land.rhs ], !dbg !425
  %land.ext = zext i1 %3 to i32, !dbg !422
  ret i32 %land.ext, !dbg !426
}

; Function Attrs: inlinehint nounwind
define internal i32 @cmdline_find_option_bool(ptr inreg noundef %option) #5 !dbg !427 {
entry:
  %retval = alloca i32, align 4
  %option.addr = alloca ptr, align 4
  %cmd_line_ptr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %option, ptr %option.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.lifetime.start.p0(i64 4, ptr %cmd_line_ptr) #8, !dbg !437
  call void @llvm.dbg.declare(metadata ptr %cmd_line_ptr, metadata !435, metadata !DIExpression()), !dbg !438
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 23), align 1, !dbg !439
  store i32 %0, ptr %cmd_line_ptr, align 4, !dbg !438
  %1 = load i32, ptr %cmd_line_ptr, align 4, !dbg !440
  %cmp = icmp uge i32 %1, 1048576, !dbg !442
  br i1 %cmp, label %if.then, label %if.end, !dbg !443

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !444

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %cmd_line_ptr, align 4, !dbg !445
  %3 = load ptr, ptr %option.addr, align 4, !dbg !446
  %call = call i32 @__cmdline_find_option_bool(i32 inreg noundef %2, ptr inreg noundef %3) #9, !dbg !447
  store i32 %call, ptr %retval, align 4, !dbg !448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !448

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cmd_line_ptr) #8, !dbg !449
  %4 = load i32, ptr %retval, align 4, !dbg !449
  ret i32 %4, !dbg !449
}

declare !dbg !450 dso_local void @puts(ptr inreg noundef) #4

; Function Attrs: nounwind
define dso_local i32 @check_knl_erratum() #0 !dbg !453 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @is_intel() #9, !dbg !454
  %tobool = icmp ne i32 %call, 0, !dbg !454
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !456

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 1), align 4, !dbg !457
  %cmp = icmp ne i32 %0, 6, !dbg !458
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !459

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %1 = load i32, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !460
  %cmp2 = icmp ne i32 %1, 87, !dbg !461
  br i1 %cmp2, label %if.then, label %if.end, !dbg !462

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !463
  br label %return, !dbg !463

if.end:                                           ; preds = %lor.lhs.false1
  store i32 0, ptr %retval, align 4, !dbg !464
  br label %return, !dbg !464

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !466
  ret i32 %2, !dbg !466
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare !dbg !467 dso_local i32 @__cmdline_find_option_bool(i32 inreg noundef, ptr inreg noundef) #4

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin "no-builtins" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "err_flags", scope: !2, file: !3, line: 32, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.cpucheck.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/cpucheck\22 -D KBUILD_BASENAME=\22cpucheck\22 -D KBUILD_MODNAME=\22cpucheck\22 -D __KBUILD_MODNAME=kmod_cpucheck -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/cpucheck.ll arch/x86/boot/cpucheck.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/cpucheck.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97b4de08279bb9fa7be0deb4fe40272c")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !18, !23, !28, !0, !32}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, elements: !16)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17}
!17 = !DISubrange(count: 9)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 280, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 35)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 616, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 77)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 64, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "req_level", scope: !2, file: !3, line: 34, type: !30, isLocal: true, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "req_flags", scope: !2, file: !3, line: 36, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 704, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!36 = !{!37}
!37 = !DISubrange(count: 22)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 704, elements: !36)
!39 = !{i32 1, !"NumRegisterParameters", i32 3}
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 1, !"override-stack-alignment", i32 4}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "check_cpu", scope: !3, file: !3, line: 111, type: !46, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!46 = !DISubroutineType(types: !47)
!47 = !{!31, !48, !48, !49}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!50 = !{!51, !52, !53, !54, !55, !73, !76, !79, !80}
!51 = !DILocalVariable(name: "cpu_level_ptr", arg: 1, scope: !45, file: !3, line: 111, type: !48)
!52 = !DILocalVariable(name: "req_level_ptr", arg: 2, scope: !45, file: !3, line: 111, type: !48)
!53 = !DILocalVariable(name: "err_flags_ptr", arg: 3, scope: !45, file: !3, line: 111, type: !49)
!54 = !DILocalVariable(name: "err", scope: !45, file: !3, line: 113, type: !31)
!55 = !DILocalVariable(name: "m", scope: !56, file: !3, line: 134, type: !58)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 130, column: 16)
!57 = distinct !DILexicalBlock(scope: !45, file: !3, line: 127, column: 6)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msr", file: !59, line: 5, size: 64, elements: !60)
!59 = !DIFile(filename: "./arch/x86/include/asm/shared/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97cdbff086ff569e0d38e30ef42693a4")
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, scope: !58, file: !59, line: 6, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !59, line: 6, size: 64, elements: !63)
!63 = !{!64, !69}
!64 = !DIDerivedType(tag: DW_TAG_member, scope: !62, file: !59, line: 7, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !62, file: !59, line: 7, size: 64, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !65, file: !59, line: 8, baseType: !6, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !65, file: !59, line: 9, baseType: !6, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !62, file: !59, line: 11, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !72)
!72 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocalVariable(name: "m", scope: !74, file: !3, line: 148, type: !58)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 144, column: 38)
!75 = distinct !DILexicalBlock(scope: !57, file: !3, line: 142, column: 13)
!76 = !DILocalVariable(name: "m", scope: !77, file: !3, line: 159, type: !58)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 156, column: 44)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 156, column: 13)
!79 = !DILocalVariable(name: "m_tmp", scope: !77, file: !3, line: 159, type: !58)
!80 = !DILocalVariable(name: "level", scope: !77, file: !3, line: 160, type: !6)
!81 = !DILocation(line: 111, column: 20, scope: !45)
!82 = !DILocation(line: 111, column: 40, scope: !45)
!83 = !DILocation(line: 111, column: 61, scope: !45)
!84 = !DILocation(line: 113, column: 2, scope: !45)
!85 = !DILocation(line: 113, column: 6, scope: !45)
!86 = !DILocation(line: 115, column: 2, scope: !45)
!87 = !DILocation(line: 116, column: 12, scope: !45)
!88 = !DILocation(line: 118, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !45, file: !3, line: 118, column: 6)
!90 = !DILocation(line: 118, column: 6, scope: !45)
!91 = !DILocation(line: 119, column: 13, scope: !89)
!92 = !DILocation(line: 119, column: 3, scope: !89)
!93 = !DILocation(line: 121, column: 2, scope: !45)
!94 = !DILocation(line: 122, column: 8, scope: !45)
!95 = !DILocation(line: 122, column: 6, scope: !45)
!96 = !DILocation(line: 124, column: 6, scope: !45)
!97 = !DILocation(line: 124, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !45, file: !3, line: 124, column: 6)
!99 = !DILocation(line: 125, column: 13, scope: !98)
!100 = !DILocation(line: 125, column: 3, scope: !98)
!101 = !DILocation(line: 127, column: 6, scope: !57)
!102 = !DILocation(line: 127, column: 10, scope: !57)
!103 = !DILocation(line: 127, column: 18, scope: !57)
!104 = !DILocation(line: 128, column: 8, scope: !57)
!105 = !DILocation(line: 128, column: 21, scope: !57)
!106 = !DILocation(line: 129, column: 59, scope: !57)
!107 = !DILocation(line: 130, column: 6, scope: !57)
!108 = !DILocation(line: 127, column: 6, scope: !45)
!109 = !DILocation(line: 134, column: 3, scope: !56)
!110 = !DILocation(line: 134, column: 14, scope: !56)
!111 = !DILocation(line: 136, column: 3, scope: !56)
!112 = !DILocation(line: 137, column: 5, scope: !56)
!113 = !DILocation(line: 137, column: 7, scope: !56)
!114 = !DILocation(line: 138, column: 3, scope: !56)
!115 = !DILocation(line: 140, column: 3, scope: !56)
!116 = !DILocation(line: 141, column: 9, scope: !56)
!117 = !DILocation(line: 141, column: 7, scope: !56)
!118 = !DILocation(line: 142, column: 2, scope: !57)
!119 = !DILocation(line: 142, column: 2, scope: !56)
!120 = !DILocation(line: 142, column: 13, scope: !75)
!121 = !DILocation(line: 142, column: 17, scope: !75)
!122 = !DILocation(line: 142, column: 25, scope: !75)
!123 = !DILocation(line: 143, column: 8, scope: !75)
!124 = !DILocation(line: 143, column: 21, scope: !75)
!125 = !DILocation(line: 143, column: 48, scope: !75)
!126 = !DILocation(line: 144, column: 6, scope: !75)
!127 = !DILocation(line: 144, column: 19, scope: !75)
!128 = !DILocation(line: 144, column: 26, scope: !75)
!129 = !DILocation(line: 144, column: 32, scope: !75)
!130 = !DILocation(line: 142, column: 13, scope: !57)
!131 = !DILocation(line: 148, column: 3, scope: !74)
!132 = !DILocation(line: 148, column: 14, scope: !74)
!133 = !DILocation(line: 150, column: 3, scope: !74)
!134 = !DILocation(line: 151, column: 5, scope: !74)
!135 = !DILocation(line: 151, column: 7, scope: !74)
!136 = !DILocation(line: 152, column: 3, scope: !74)
!137 = !DILocation(line: 154, column: 3, scope: !74)
!138 = !DILocation(line: 155, column: 9, scope: !74)
!139 = !DILocation(line: 155, column: 7, scope: !74)
!140 = !DILocation(line: 156, column: 2, scope: !75)
!141 = !DILocation(line: 156, column: 2, scope: !74)
!142 = !DILocation(line: 156, column: 13, scope: !78)
!143 = !DILocation(line: 156, column: 17, scope: !78)
!144 = !DILocation(line: 156, column: 25, scope: !78)
!145 = !DILocation(line: 156, column: 28, scope: !78)
!146 = !DILocation(line: 156, column: 13, scope: !75)
!147 = !DILocation(line: 159, column: 3, scope: !77)
!148 = !DILocation(line: 159, column: 14, scope: !77)
!149 = !DILocation(line: 159, column: 17, scope: !77)
!150 = !DILocation(line: 160, column: 3, scope: !77)
!151 = !DILocation(line: 160, column: 7, scope: !77)
!152 = !DILocation(line: 162, column: 3, scope: !77)
!153 = !DILocation(line: 163, column: 11, scope: !77)
!154 = !DILocation(line: 164, column: 9, scope: !77)
!155 = !DILocation(line: 164, column: 11, scope: !77)
!156 = !DILocation(line: 165, column: 3, scope: !77)
!157 = !DILocation(line: 166, column: 3, scope: !77)
!158 = !{i64 4450}
!159 = !DILocation(line: 169, column: 3, scope: !77)
!160 = !DILocation(line: 171, column: 9, scope: !77)
!161 = !DILocation(line: 171, column: 7, scope: !77)
!162 = !DILocation(line: 172, column: 2, scope: !78)
!163 = !DILocation(line: 172, column: 2, scope: !77)
!164 = !DILocation(line: 172, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !78, file: !3, line: 172, column: 13)
!166 = !DILocation(line: 172, column: 17, scope: !165)
!167 = !DILocation(line: 172, column: 25, scope: !165)
!168 = !DILocation(line: 173, column: 8, scope: !165)
!169 = !DILocation(line: 173, column: 21, scope: !165)
!170 = !DILocation(line: 173, column: 48, scope: !165)
!171 = !DILocation(line: 174, column: 6, scope: !165)
!172 = !DILocation(line: 174, column: 17, scope: !165)
!173 = !DILocation(line: 174, column: 24, scope: !165)
!174 = !DILocation(line: 174, column: 30, scope: !165)
!175 = !DILocation(line: 174, column: 35, scope: !165)
!176 = !DILocation(line: 175, column: 11, scope: !165)
!177 = !DILocation(line: 175, column: 17, scope: !165)
!178 = !DILocation(line: 175, column: 22, scope: !165)
!179 = !DILocation(line: 175, column: 29, scope: !165)
!180 = !DILocation(line: 175, column: 35, scope: !165)
!181 = !DILocation(line: 172, column: 13, scope: !78)
!182 = !DILocation(line: 177, column: 7, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 177, column: 7)
!184 = distinct !DILexicalBlock(scope: !165, file: !3, line: 175, column: 43)
!185 = !DILocation(line: 177, column: 7, scope: !184)
!186 = !DILocation(line: 178, column: 4, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 177, column: 45)
!188 = !DILocation(line: 179, column: 4, scope: !187)
!189 = !DILocation(line: 180, column: 10, scope: !187)
!190 = !DILocation(line: 180, column: 8, scope: !187)
!191 = !DILocation(line: 181, column: 3, scope: !187)
!192 = !DILocation(line: 183, column: 4, scope: !193)
!193 = distinct !DILexicalBlock(scope: !183, file: !3, line: 182, column: 8)
!194 = !DILocation(line: 185, column: 2, scope: !184)
!195 = !DILocation(line: 186, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !45, file: !3, line: 186, column: 6)
!197 = !DILocation(line: 186, column: 6, scope: !45)
!198 = !DILocation(line: 187, column: 9, scope: !196)
!199 = !DILocation(line: 187, column: 7, scope: !196)
!200 = !DILocation(line: 187, column: 3, scope: !196)
!201 = !DILocation(line: 189, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !45, file: !3, line: 189, column: 6)
!203 = !DILocation(line: 189, column: 6, scope: !45)
!204 = !DILocation(line: 190, column: 20, scope: !202)
!205 = !DILocation(line: 190, column: 4, scope: !202)
!206 = !DILocation(line: 190, column: 18, scope: !202)
!207 = !DILocation(line: 190, column: 3, scope: !202)
!208 = !DILocation(line: 191, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !45, file: !3, line: 191, column: 6)
!210 = !DILocation(line: 191, column: 6, scope: !45)
!211 = !DILocation(line: 192, column: 24, scope: !209)
!212 = !DILocation(line: 192, column: 4, scope: !209)
!213 = !DILocation(line: 192, column: 18, scope: !209)
!214 = !DILocation(line: 192, column: 3, scope: !209)
!215 = !DILocation(line: 193, column: 6, scope: !216)
!216 = distinct !DILexicalBlock(scope: !45, file: !3, line: 193, column: 6)
!217 = !DILocation(line: 193, column: 6, scope: !45)
!218 = !DILocation(line: 194, column: 4, scope: !216)
!219 = !DILocation(line: 194, column: 18, scope: !216)
!220 = !DILocation(line: 194, column: 3, scope: !216)
!221 = !DILocation(line: 196, column: 14, scope: !45)
!222 = !DILocation(line: 196, column: 20, scope: !45)
!223 = !DILocation(line: 196, column: 32, scope: !45)
!224 = !DILocation(line: 196, column: 35, scope: !45)
!225 = !DILocation(line: 196, column: 9, scope: !45)
!226 = !DILocation(line: 197, column: 1, scope: !45)
!227 = !DILocation(line: 196, column: 2, scope: !45)
!228 = !DISubprogram(name: "has_eflag", scope: !229, file: !229, line: 18, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DIFile(filename: "arch/x86/boot/cpuflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "73fe0716d42ae62735200ad0e486e43f")
!230 = !DISubroutineType(types: !231)
!231 = !{!31, !232}
!232 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!233 = !DISubprogram(name: "get_cpuflags", scope: !229, file: !229, line: 19, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null}
!236 = distinct !DISubprogram(name: "check_cpuflags", scope: !3, file: !3, line: 88, type: !237, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{!31}
!239 = !{!240, !241}
!240 = !DILocalVariable(name: "err", scope: !236, file: !3, line: 90, type: !6)
!241 = !DILocalVariable(name: "i", scope: !236, file: !3, line: 91, type: !31)
!242 = !DILocation(line: 90, column: 2, scope: !236)
!243 = !DILocation(line: 90, column: 6, scope: !236)
!244 = !DILocation(line: 91, column: 2, scope: !236)
!245 = !DILocation(line: 91, column: 6, scope: !236)
!246 = !DILocation(line: 93, column: 6, scope: !236)
!247 = !DILocation(line: 94, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !236, file: !3, line: 94, column: 2)
!249 = !DILocation(line: 94, column: 7, scope: !248)
!250 = !DILocation(line: 94, column: 14, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 94, column: 2)
!252 = !DILocation(line: 94, column: 16, scope: !251)
!253 = !DILocation(line: 94, column: 2, scope: !248)
!254 = !DILocation(line: 95, column: 28, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 94, column: 33)
!256 = !DILocation(line: 95, column: 18, scope: !255)
!257 = !DILocation(line: 95, column: 44, scope: !255)
!258 = !DILocation(line: 95, column: 34, scope: !255)
!259 = !DILocation(line: 95, column: 33, scope: !255)
!260 = !DILocation(line: 95, column: 31, scope: !255)
!261 = !DILocation(line: 95, column: 13, scope: !255)
!262 = !DILocation(line: 95, column: 3, scope: !255)
!263 = !DILocation(line: 95, column: 16, scope: !255)
!264 = !DILocation(line: 96, column: 17, scope: !265)
!265 = distinct !DILexicalBlock(scope: !255, file: !3, line: 96, column: 7)
!266 = !DILocation(line: 96, column: 7, scope: !265)
!267 = !DILocation(line: 96, column: 7, scope: !255)
!268 = !DILocation(line: 97, column: 16, scope: !265)
!269 = !DILocation(line: 97, column: 13, scope: !265)
!270 = !DILocation(line: 97, column: 8, scope: !265)
!271 = !DILocation(line: 97, column: 4, scope: !265)
!272 = !DILocation(line: 98, column: 2, scope: !255)
!273 = !DILocation(line: 94, column: 29, scope: !251)
!274 = !DILocation(line: 94, column: 2, scope: !251)
!275 = distinct !{!275, !253, !276, !277, !278}
!276 = !DILocation(line: 98, column: 2, scope: !248)
!277 = !{!"llvm.loop.mustprogress"}
!278 = !{!"llvm.loop.unroll.disable"}
!279 = !DILocation(line: 100, column: 9, scope: !236)
!280 = !DILocation(line: 101, column: 1, scope: !236)
!281 = !DILocation(line: 100, column: 2, scope: !236)
!282 = distinct !DISubprogram(name: "constant_test_bit", scope: !283, file: !283, line: 20, type: !284, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!283 = !DIFile(filename: "arch/x86/boot/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "559e321cb1de9209de8bd80da9ca6886")
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !31, !289}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !287, line: 35, baseType: !288)
!287 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!288 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!291 = !{!292, !293, !294}
!292 = !DILocalVariable(name: "nr", arg: 1, scope: !282, file: !283, line: 20, type: !31)
!293 = !DILocalVariable(name: "addr", arg: 2, scope: !282, file: !283, line: 20, type: !289)
!294 = !DILocalVariable(name: "p", scope: !282, file: !283, line: 22, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!296 = !DILocation(line: 20, column: 42, scope: !282)
!297 = !DILocation(line: 20, column: 58, scope: !282)
!298 = !DILocation(line: 22, column: 2, scope: !282)
!299 = !DILocation(line: 22, column: 13, scope: !282)
!300 = !DILocation(line: 22, column: 17, scope: !282)
!301 = !DILocation(line: 23, column: 19, scope: !282)
!302 = !DILocation(line: 23, column: 22, scope: !282)
!303 = !DILocation(line: 23, column: 15, scope: !282)
!304 = !DILocation(line: 23, column: 32, scope: !282)
!305 = !DILocation(line: 23, column: 34, scope: !282)
!306 = !DILocation(line: 23, column: 37, scope: !282)
!307 = !DILocation(line: 23, column: 29, scope: !282)
!308 = !DILocation(line: 23, column: 45, scope: !282)
!309 = !DILocation(line: 24, column: 1, scope: !282)
!310 = !DILocation(line: 23, column: 2, scope: !282)
!311 = distinct !DISubprogram(name: "variable_test_bit", scope: !283, file: !283, line: 25, type: !284, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DILocalVariable(name: "nr", arg: 1, scope: !311, file: !283, line: 25, type: !31)
!314 = !DILocalVariable(name: "addr", arg: 2, scope: !311, file: !283, line: 25, type: !289)
!315 = !DILocalVariable(name: "v", scope: !311, file: !283, line: 27, type: !286)
!316 = !DILocalVariable(name: "p", scope: !311, file: !283, line: 28, type: !295)
!317 = !DILocation(line: 25, column: 42, scope: !311)
!318 = !DILocation(line: 25, column: 58, scope: !311)
!319 = !DILocation(line: 27, column: 2, scope: !311)
!320 = !DILocation(line: 27, column: 7, scope: !311)
!321 = !DILocation(line: 28, column: 2, scope: !311)
!322 = !DILocation(line: 28, column: 13, scope: !311)
!323 = !DILocation(line: 28, column: 17, scope: !311)
!324 = !DILocation(line: 30, column: 52, scope: !311)
!325 = !DILocation(line: 30, column: 62, scope: !311)
!326 = !DILocation(line: 30, column: 2, scope: !311)
!327 = !{i64 312390, i64 2147796709}
!328 = !DILocation(line: 31, column: 9, scope: !311)
!329 = !{i8 0, i8 2}
!330 = !{}
!331 = !DILocation(line: 32, column: 1, scope: !311)
!332 = !DILocation(line: 31, column: 2, scope: !311)
!333 = distinct !DISubprogram(name: "is_amd", scope: !3, file: !3, line: 59, type: !237, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!334 = !DILocation(line: 61, column: 9, scope: !333)
!335 = !DILocation(line: 61, column: 23, scope: !333)
!336 = !DILocation(line: 61, column: 50, scope: !333)
!337 = !DILocation(line: 62, column: 9, scope: !333)
!338 = !DILocation(line: 62, column: 23, scope: !333)
!339 = !DILocation(line: 62, column: 50, scope: !333)
!340 = !DILocation(line: 63, column: 9, scope: !333)
!341 = !DILocation(line: 63, column: 23, scope: !333)
!342 = !DILocation(line: 0, scope: !333)
!343 = !DILocation(line: 61, column: 2, scope: !333)
!344 = distinct !DISubprogram(name: "boot_rdmsr", scope: !345, file: !345, line: 16, type: !346, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!345 = !DIFile(filename: "arch/x86/boot/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a80d1df162cb86a1eb3346287d2a800")
!346 = !DISubroutineType(types: !347)
!347 = !{null, !10, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!349 = !{!350, !351}
!350 = !DILocalVariable(name: "reg", arg: 1, scope: !344, file: !345, line: 16, type: !10)
!351 = !DILocalVariable(name: "m", arg: 2, scope: !344, file: !345, line: 16, type: !348)
!352 = !DILocation(line: 16, column: 44, scope: !344)
!353 = !DILocation(line: 16, column: 61, scope: !344)
!354 = !DILocation(line: 18, column: 31, scope: !344)
!355 = !DILocation(line: 18, column: 34, scope: !344)
!356 = !DILocation(line: 18, column: 44, scope: !344)
!357 = !DILocation(line: 18, column: 47, scope: !344)
!358 = !DILocation(line: 18, column: 57, scope: !344)
!359 = !DILocation(line: 18, column: 2, scope: !344)
!360 = !{i64 431802}
!361 = !DILocation(line: 19, column: 1, scope: !344)
!362 = distinct !DISubprogram(name: "boot_wrmsr", scope: !345, file: !345, line: 21, type: !363, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !10, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!367 = !{!368, !369}
!368 = !DILocalVariable(name: "reg", arg: 1, scope: !362, file: !345, line: 21, type: !10)
!369 = !DILocalVariable(name: "m", arg: 2, scope: !362, file: !345, line: 21, type: !365)
!370 = !DILocation(line: 21, column: 44, scope: !362)
!371 = !DILocation(line: 21, column: 67, scope: !362)
!372 = !DILocation(line: 23, column: 32, scope: !362)
!373 = !DILocation(line: 23, column: 42, scope: !362)
!374 = !DILocation(line: 23, column: 45, scope: !362)
!375 = !DILocation(line: 23, column: 54, scope: !362)
!376 = !DILocation(line: 23, column: 57, scope: !362)
!377 = !DILocation(line: 23, column: 2, scope: !362)
!378 = !{i64 431939}
!379 = !DILocation(line: 24, column: 1, scope: !362)
!380 = distinct !DISubprogram(name: "is_centaur", scope: !3, file: !3, line: 66, type: !237, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!381 = !DILocation(line: 68, column: 9, scope: !380)
!382 = !DILocation(line: 68, column: 23, scope: !380)
!383 = !DILocation(line: 68, column: 50, scope: !380)
!384 = !DILocation(line: 69, column: 9, scope: !380)
!385 = !DILocation(line: 69, column: 23, scope: !380)
!386 = !DILocation(line: 69, column: 50, scope: !380)
!387 = !DILocation(line: 70, column: 9, scope: !380)
!388 = !DILocation(line: 70, column: 23, scope: !380)
!389 = !DILocation(line: 0, scope: !380)
!390 = !DILocation(line: 68, column: 2, scope: !380)
!391 = distinct !DISubprogram(name: "set_bit", scope: !283, file: !283, line: 39, type: !392, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !31, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!395 = !{!396, !397}
!396 = !DILocalVariable(name: "nr", arg: 1, scope: !391, file: !283, line: 39, type: !31)
!397 = !DILocalVariable(name: "addr", arg: 2, scope: !391, file: !283, line: 39, type: !394)
!398 = !DILocation(line: 39, column: 32, scope: !391)
!399 = !DILocation(line: 39, column: 42, scope: !391)
!400 = !DILocation(line: 41, column: 35, scope: !391)
!401 = !DILocation(line: 41, column: 49, scope: !391)
!402 = !DILocation(line: 41, column: 2, scope: !391)
!403 = !{i64 312648}
!404 = !DILocation(line: 42, column: 1, scope: !391)
!405 = distinct !DISubprogram(name: "is_transmeta", scope: !3, file: !3, line: 73, type: !237, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!406 = !DILocation(line: 75, column: 9, scope: !405)
!407 = !DILocation(line: 75, column: 23, scope: !405)
!408 = !DILocation(line: 75, column: 50, scope: !405)
!409 = !DILocation(line: 76, column: 9, scope: !405)
!410 = !DILocation(line: 76, column: 23, scope: !405)
!411 = !DILocation(line: 76, column: 50, scope: !405)
!412 = !DILocation(line: 77, column: 9, scope: !405)
!413 = !DILocation(line: 77, column: 23, scope: !405)
!414 = !DILocation(line: 0, scope: !405)
!415 = !DILocation(line: 75, column: 2, scope: !405)
!416 = distinct !DISubprogram(name: "is_intel", scope: !3, file: !3, line: 80, type: !237, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!417 = !DILocation(line: 82, column: 9, scope: !416)
!418 = !DILocation(line: 82, column: 23, scope: !416)
!419 = !DILocation(line: 82, column: 50, scope: !416)
!420 = !DILocation(line: 83, column: 9, scope: !416)
!421 = !DILocation(line: 83, column: 23, scope: !416)
!422 = !DILocation(line: 83, column: 50, scope: !416)
!423 = !DILocation(line: 84, column: 9, scope: !416)
!424 = !DILocation(line: 84, column: 23, scope: !416)
!425 = !DILocation(line: 0, scope: !416)
!426 = !DILocation(line: 82, column: 2, scope: !416)
!427 = distinct !DISubprogram(name: "cmdline_find_option_bool", scope: !428, file: !428, line: 261, type: !429, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!428 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!429 = !DISubroutineType(types: !430)
!430 = !{!31, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!433 = !{!434, !435}
!434 = !DILocalVariable(name: "option", arg: 1, scope: !427, file: !428, line: 261, type: !431)
!435 = !DILocalVariable(name: "cmd_line_ptr", scope: !427, file: !428, line: 263, type: !232)
!436 = !DILocation(line: 261, column: 56, scope: !427)
!437 = !DILocation(line: 263, column: 2, scope: !427)
!438 = !DILocation(line: 263, column: 16, scope: !427)
!439 = !DILocation(line: 263, column: 47, scope: !427)
!440 = !DILocation(line: 265, column: 6, scope: !441)
!441 = distinct !DILexicalBlock(scope: !427, file: !428, line: 265, column: 6)
!442 = !DILocation(line: 265, column: 19, scope: !441)
!443 = !DILocation(line: 265, column: 6, scope: !427)
!444 = !DILocation(line: 266, column: 3, scope: !441)
!445 = !DILocation(line: 268, column: 36, scope: !427)
!446 = !DILocation(line: 268, column: 50, scope: !427)
!447 = !DILocation(line: 268, column: 9, scope: !427)
!448 = !DILocation(line: 268, column: 2, scope: !427)
!449 = !DILocation(line: 269, column: 1, scope: !427)
!450 = !DISubprogram(name: "puts", scope: !428, file: !428, line: 314, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !431}
!453 = distinct !DISubprogram(name: "check_knl_erratum", scope: !3, file: !3, line: 199, type: !237, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!454 = !DILocation(line: 204, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !453, file: !3, line: 204, column: 6)
!456 = !DILocation(line: 204, column: 18, scope: !455)
!457 = !DILocation(line: 205, column: 10, scope: !455)
!458 = !DILocation(line: 205, column: 17, scope: !455)
!459 = !DILocation(line: 205, column: 22, scope: !455)
!460 = !DILocation(line: 206, column: 10, scope: !455)
!461 = !DILocation(line: 206, column: 16, scope: !455)
!462 = !DILocation(line: 204, column: 6, scope: !453)
!463 = !DILocation(line: 207, column: 3, scope: !455)
!464 = !DILocation(line: 218, column: 3, scope: !465)
!465 = distinct !DILexicalBlock(scope: !453, file: !3, line: 217, column: 6)
!466 = !DILocation(line: 225, column: 1, scope: !453)
!467 = !DISubprogram(name: "__cmdline_find_option_bool", scope: !428, file: !428, line: 250, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{!31, !232, !431}
