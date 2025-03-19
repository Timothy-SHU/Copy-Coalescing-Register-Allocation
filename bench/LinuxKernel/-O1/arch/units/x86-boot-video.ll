; ModuleID = 'arch/x86/boot/video.c'
source_filename = "arch/x86/boot/video.c"
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
%struct.saved_screen = type { i32, i32, i32, i32, ptr }
%struct.card_info = type { ptr, ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.biosregs = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.19 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mode_info = type { i16, i16, i16, i16 }

@boot_params = external dso_local global %struct.boot_params, align 1
@_end = external dso_local global [0 x i8], align 1
@HEAP = external dso_local global ptr, align 4
@.str = private unnamed_addr constant [33 x i8] c"Undefined video mode number: %x\0A\00", align 1, !dbg !0
@do_restore = external dso_local global i32, align 4
@graphic_mode = external dso_local global i32, align 4
@video_segment = internal global i16 0, align 2, !dbg !7
@adapter = external dso_local global i32, align 4
@force_x = external dso_local global i32, align 4
@force_y = external dso_local global i32, align 4
@saved = internal global %struct.saved_screen zeroinitializer, align 4, !dbg !31
@heap_end = external dso_local global ptr, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Press <ENTER> to see video modes available, <SPACE> to continue, or wait 30 sec\0A\00", align 1, !dbg !40
@.str.2 = private unnamed_addr constant [60 x i8] c"Enter a video mode or \22scan\22 to scan for additional modes: \00", align 1, !dbg !45
@video_cards = external dso_local global [0 x %struct.card_info], align 4
@video_cards_end = external dso_local global [0 x %struct.card_info], align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Mode: Resolution:  Type: \00", align 1, !dbg !50
@.str.4 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1, !dbg !55
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !60
@.str.6 = private unnamed_addr constant [22 x i8] c"%c %03X %4dx%-7s %-6s\00", align 1, !dbg !65
@.str.7 = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1, !dbg !70

; Function Attrs: nounwind
define dso_local void @set_video() #0 !dbg !81 {
entry:
  %mode = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #5, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !85, metadata !DIExpression()), !dbg !87
  %0 = load i16, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 4), align 1, !dbg !88
  store i16 %0, ptr %mode, align 2, !dbg !87
  store ptr @_end, ptr @HEAP, align 4, !dbg !89
  call void @store_mode_params() #6, !dbg !90
  call void @save_screen() #6, !dbg !91
  call void @probe_cards(i32 inreg noundef 0) #6, !dbg !92
  br label %for.cond, !dbg !93

for.cond:                                         ; preds = %if.end5, %entry
  %1 = load i16, ptr %mode, align 2, !dbg !94
  %conv = zext i16 %1 to i32, !dbg !94
  %cmp = icmp eq i32 %conv, 65533, !dbg !99
  br i1 %cmp, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %for.cond
  %call = call i32 @mode_menu() #6, !dbg !101
  %conv2 = trunc i32 %call to i16, !dbg !101
  store i16 %conv2, ptr %mode, align 2, !dbg !102
  br label %if.end, !dbg !103

if.end:                                           ; preds = %if.then, %for.cond
  %2 = load i16, ptr %mode, align 2, !dbg !104
  %call3 = call i32 @set_mode(i16 inreg noundef zeroext %2) #6, !dbg !106
  %tobool = icmp ne i32 %call3, 0, !dbg !106
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !107

if.then4:                                         ; preds = %if.end
  br label %for.end, !dbg !108

if.end5:                                          ; preds = %if.end
  %3 = load i16, ptr %mode, align 2, !dbg !109
  %conv6 = zext i16 %3 to i32, !dbg !109
  %call7 = call i32 (ptr, ...) @printf(ptr inreg noundef @.str, i32 inreg noundef %conv6) #6, !dbg !110
  store i16 -3, ptr %mode, align 2, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %if.then4
  %4 = load i16, ptr %mode, align 2, !dbg !117
  store i16 %4, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 4), align 1, !dbg !118
  call void @vesa_store_edid() #6, !dbg !119
  call void @store_mode_params() #6, !dbg !120
  %5 = load i32, ptr @do_restore, align 4, !dbg !121
  %tobool8 = icmp ne i32 %5, 0, !dbg !121
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !123

if.then9:                                         ; preds = %for.end
  call void @restore_screen() #6, !dbg !124
  br label %if.end10, !dbg !124

if.end10:                                         ; preds = %if.then9, %for.end
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #5, !dbg !125
  ret void, !dbg !125
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
define internal void @store_mode_params() #0 !dbg !126 {
entry:
  %font_size = alloca i16, align 2
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr %font_size) #5, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %font_size, metadata !128, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %x, metadata !129, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %y, metadata !130, metadata !DIExpression()), !dbg !135
  %0 = load i32, ptr @graphic_mode, align 4, !dbg !136
  %tobool = icmp ne i32 %0, 0, !dbg !136
  br i1 %tobool, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !139

if.end:                                           ; preds = %entry
  call void @store_cursor_position() #6, !dbg !140
  call void @store_video_mode() #6, !dbg !141
  %1 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 4), align 1, !dbg !142
  %conv = zext i8 %1 to i32, !dbg !144
  %cmp = icmp eq i32 %conv, 7, !dbg !145
  br i1 %cmp, label %if.then2, label %if.else, !dbg !146

if.then2:                                         ; preds = %if.end
  store i16 -20480, ptr @video_segment, align 2, !dbg !147
  br label %if.end3, !dbg !149

if.else:                                          ; preds = %if.end
  store i16 -18432, ptr @video_segment, align 2, !dbg !150
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  call void @set_fs(i16 inreg noundef zeroext 0) #6, !dbg !152
  %call = call zeroext i16 @rdfs16(i32 inreg noundef 1157) #6, !dbg !153
  store i16 %call, ptr %font_size, align 2, !dbg !154
  %2 = load i16, ptr %font_size, align 2, !dbg !155
  store i16 %2, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 12), align 1, !dbg !156
  %call4 = call zeroext i16 @rdfs16(i32 inreg noundef 1098) #6, !dbg !157
  %conv5 = zext i16 %call4 to i32, !dbg !157
  store i32 %conv5, ptr %x, align 4, !dbg !158
  %3 = load i32, ptr @adapter, align 4, !dbg !159
  %cmp6 = icmp eq i32 %3, 0, !dbg !160
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !161

cond.true:                                        ; preds = %if.end3
  br label %cond.end, !dbg !161

cond.false:                                       ; preds = %if.end3
  %call8 = call zeroext i8 @rdfs8(i32 inreg noundef 1156) #6, !dbg !162
  %conv9 = zext i8 %call8 to i32, !dbg !162
  %add = add nsw i32 %conv9, 1, !dbg !163
  br label %cond.end, !dbg !161

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 25, %cond.true ], [ %add, %cond.false ], !dbg !161
  store i32 %cond, ptr %y, align 4, !dbg !164
  %4 = load i32, ptr @force_x, align 4, !dbg !165
  %tobool10 = icmp ne i32 %4, 0, !dbg !165
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !167

if.then11:                                        ; preds = %cond.end
  %5 = load i32, ptr @force_x, align 4, !dbg !168
  store i32 %5, ptr %x, align 4, !dbg !169
  br label %if.end12, !dbg !170

if.end12:                                         ; preds = %if.then11, %cond.end
  %6 = load i32, ptr @force_y, align 4, !dbg !171
  %tobool13 = icmp ne i32 %6, 0, !dbg !171
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !173

if.then14:                                        ; preds = %if.end12
  %7 = load i32, ptr @force_y, align 4, !dbg !174
  store i32 %7, ptr %y, align 4, !dbg !175
  br label %if.end15, !dbg !176

if.end15:                                         ; preds = %if.then14, %if.end12
  %8 = load i32, ptr %x, align 4, !dbg !177
  %conv16 = trunc i32 %8 to i8, !dbg !177
  store i8 %conv16, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 5), align 1, !dbg !178
  %9 = load i32, ptr %y, align 4, !dbg !179
  %conv17 = trunc i32 %9 to i8, !dbg !179
  store i8 %conv17, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 10), align 1, !dbg !180
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !181
  br label %cleanup, !dbg !181

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5, !dbg !181
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5, !dbg !181
  call void @llvm.lifetime.end.p0(i64 2, ptr %font_size) #5, !dbg !181
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !181

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
define internal void @save_screen() #0 !dbg !182 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 5), align 1, !dbg !183
  %conv = zext i8 %0 to i32, !dbg !184
  store i32 %conv, ptr @saved, align 4, !dbg !185
  %1 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 10), align 1, !dbg !186
  %conv1 = zext i8 %1 to i32, !dbg !187
  store i32 %conv1, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 1), align 4, !dbg !188
  %2 = load i8, ptr @boot_params, align 1, !dbg !189
  %conv2 = zext i8 %2 to i32, !dbg !190
  store i32 %conv2, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 2), align 4, !dbg !191
  %3 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 1), align 1, !dbg !192
  %conv3 = zext i8 %3 to i32, !dbg !193
  store i32 %conv3, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 3), align 4, !dbg !194
  %4 = load i32, ptr @saved, align 4, !dbg !195
  %5 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 1), align 4, !dbg !197
  %mul = mul nsw i32 %4, %5, !dbg !198
  %mul4 = mul i32 %mul, 2, !dbg !199
  %add = add i32 %mul4, 512, !dbg !200
  %call = call zeroext i1 @heap_free(i32 inreg noundef %add) #6, !dbg !201
  br i1 %call, label %if.end, label %if.then, !dbg !202

if.then:                                          ; preds = %entry
  br label %return, !dbg !203

if.end:                                           ; preds = %entry
  %6 = load i32, ptr @saved, align 4, !dbg !204
  %7 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 1), align 4, !dbg !204
  %mul5 = mul nsw i32 %6, %7, !dbg !204
  %call6 = call ptr @__get_heap(i32 inreg noundef 2, i32 inreg noundef 2, i32 inreg noundef %mul5) #6, !dbg !204
  store ptr %call6, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 4), align 4, !dbg !205
  %8 = load i16, ptr @video_segment, align 2, !dbg !206
  call void @set_fs(i16 inreg noundef zeroext %8) #6, !dbg !207
  %9 = load ptr, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 4), align 4, !dbg !208
  %10 = load i32, ptr @saved, align 4, !dbg !209
  %11 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 1), align 4, !dbg !210
  %mul7 = mul nsw i32 %10, %11, !dbg !211
  %mul8 = mul i32 %mul7, 2, !dbg !212
  %call9 = call ptr @copy_from_fs(ptr inreg noundef %9, i32 inreg noundef 0, i32 inreg noundef %mul8) #6, !dbg !213
  br label %return, !dbg !214

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !214
}

declare !dbg !215 dso_local void @probe_cards(i32 inreg noundef) #3

; Function Attrs: nounwind
define internal i32 @mode_menu() #0 !dbg !219 {
entry:
  %retval = alloca i32, align 4
  %key = alloca i32, align 4
  %sel = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #5, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %key, metadata !223, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 4, ptr %sel) #5, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %sel, metadata !224, metadata !DIExpression()), !dbg !228
  call void @puts(ptr inreg noundef @.str.1) #6, !dbg !229
  call void @kbd_flush() #6, !dbg !230
  br label %while.cond, !dbg !231

while.cond:                                       ; preds = %if.end4, %entry
  br label %while.body, !dbg !231

while.body:                                       ; preds = %while.cond
  %call = call i32 @getchar_timeout() #6, !dbg !232
  store i32 %call, ptr %key, align 4, !dbg !234
  %0 = load i32, ptr %key, align 4, !dbg !235
  %cmp = icmp eq i32 %0, 32, !dbg !237
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !238

lor.lhs.false:                                    ; preds = %while.body
  %1 = load i32, ptr %key, align 4, !dbg !239
  %cmp1 = icmp eq i32 %1, 0, !dbg !240
  br i1 %cmp1, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %lor.lhs.false, %while.body
  store i32 3844, ptr %retval, align 4, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr %key, align 4, !dbg !243
  %cmp2 = icmp eq i32 %2, 13, !dbg !245
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !246

if.then3:                                         ; preds = %if.end
  br label %while.end, !dbg !247

if.end4:                                          ; preds = %if.end
  call void @putchar(i32 inreg noundef 7) #6, !dbg !248
  br label %while.cond, !dbg !231, !llvm.loop !249

while.end:                                        ; preds = %if.then3
  br label %for.cond, !dbg !251

for.cond:                                         ; preds = %if.end8, %while.end
  call void @display_menu() #6, !dbg !252
  call void @puts(ptr inreg noundef @.str.2) #6, !dbg !256
  %call5 = call i32 @get_entry() #6, !dbg !257
  store i32 %call5, ptr %sel, align 4, !dbg !258
  %3 = load i32, ptr %sel, align 4, !dbg !259
  %cmp6 = icmp ne i32 %3, 117943, !dbg !261
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !262

if.then7:                                         ; preds = %for.cond
  %4 = load i32, ptr %sel, align 4, !dbg !263
  store i32 %4, ptr %retval, align 4, !dbg !264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !264

if.end8:                                          ; preds = %for.cond
  call void @probe_cards(i32 inreg noundef 1) #6, !dbg !265
  br label %for.cond, !dbg !266, !llvm.loop !267

cleanup:                                          ; preds = %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sel) #5, !dbg !270
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #5, !dbg !270
  %5 = load i32, ptr %retval, align 4, !dbg !270
  ret i32 %5, !dbg !270
}

declare !dbg !271 dso_local i32 @set_mode(i16 inreg noundef zeroext) #3

declare !dbg !274 dso_local i32 @printf(ptr inreg noundef, ...) #3

declare !dbg !279 dso_local void @vesa_store_edid() #3

; Function Attrs: nounwind
define internal void @restore_screen() #0 !dbg !280 {
entry:
  %xs = alloca i32, align 4
  %ys = alloca i32, align 4
  %y = alloca i32, align 4
  %dst = alloca i32, align 4
  %src = alloca ptr, align 4
  %ireg = alloca %struct.biosregs, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %npad = alloca i32, align 4
  %copy = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xs) #5, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %xs, metadata !282, metadata !DIExpression()), !dbg !378
  %0 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 5), align 1, !dbg !379
  %conv = zext i8 %0 to i32, !dbg !380
  store i32 %conv, ptr %xs, align 4, !dbg !378
  call void @llvm.lifetime.start.p0(i64 4, ptr %ys) #5, !dbg !381
  call void @llvm.dbg.declare(metadata ptr %ys, metadata !283, metadata !DIExpression()), !dbg !382
  %1 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 10), align 1, !dbg !383
  %conv1 = zext i8 %1 to i32, !dbg !384
  store i32 %conv1, ptr %ys, align 4, !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #5, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %y, metadata !284, metadata !DIExpression()), !dbg !386
  call void @llvm.lifetime.start.p0(i64 4, ptr %dst) #5, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !285, metadata !DIExpression()), !dbg !388
  store i32 0, ptr %dst, align 4, !dbg !388
  call void @llvm.lifetime.start.p0(i64 4, ptr %src) #5, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %src, metadata !287, metadata !DIExpression()), !dbg !390
  %2 = load ptr, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 4), align 4, !dbg !391
  store ptr %2, ptr %src, align 4, !dbg !390
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !392
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !288, metadata !DIExpression()), !dbg !393
  %3 = load i32, ptr @graphic_mode, align 4, !dbg !394
  %tobool = icmp ne i32 %3, 0, !dbg !394
  br i1 %tobool, label %if.then, label %if.end, !dbg !396

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !397

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %src, align 4, !dbg !398
  %tobool2 = icmp ne ptr %4, null, !dbg !398
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !400

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !401

if.end4:                                          ; preds = %if.end
  %5 = load i16, ptr @video_segment, align 2, !dbg !402
  call void @set_fs(i16 inreg noundef zeroext %5) #6, !dbg !403
  store i32 0, ptr %y, align 4, !dbg !404
  br label %for.cond, !dbg !405

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, ptr %y, align 4, !dbg !406
  %7 = load i32, ptr %ys, align 4, !dbg !407
  %cmp = icmp slt i32 %6, %7, !dbg !408
  br i1 %cmp, label %for.body, label %for.end, !dbg !409

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %npad) #5, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %npad, metadata !370, metadata !DIExpression()), !dbg !411
  %8 = load i32, ptr %y, align 4, !dbg !412
  %9 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 1), align 4, !dbg !413
  %cmp6 = icmp slt i32 %8, %9, !dbg !414
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !415

if.then8:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %copy) #5, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !374, metadata !DIExpression()), !dbg !417
  %10 = load i32, ptr %xs, align 4, !dbg !418
  %11 = load i32, ptr @saved, align 4, !dbg !419
  %cmp9 = icmp slt i32 %10, %11, !dbg !420
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !421

cond.true:                                        ; preds = %if.then8
  %12 = load i32, ptr %xs, align 4, !dbg !422
  br label %cond.end, !dbg !421

cond.false:                                       ; preds = %if.then8
  %13 = load i32, ptr @saved, align 4, !dbg !423
  br label %cond.end, !dbg !421

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ], !dbg !421
  store i32 %cond, ptr %copy, align 4, !dbg !417
  %14 = load i32, ptr %dst, align 4, !dbg !424
  %15 = load ptr, ptr %src, align 4, !dbg !425
  %16 = load i32, ptr %copy, align 4, !dbg !426
  %mul = mul i32 %16, 2, !dbg !427
  call void @copy_to_fs(i32 inreg noundef %14, ptr inreg noundef %15, i32 inreg noundef %mul) #6, !dbg !428
  %17 = load i32, ptr %copy, align 4, !dbg !429
  %mul11 = mul i32 %17, 2, !dbg !430
  %18 = load i32, ptr %dst, align 4, !dbg !431
  %add = add i32 %18, %mul11, !dbg !431
  store i32 %add, ptr %dst, align 4, !dbg !431
  %19 = load i32, ptr @saved, align 4, !dbg !432
  %20 = load ptr, ptr %src, align 4, !dbg !433
  %add.ptr = getelementptr inbounds i16, ptr %20, i32 %19, !dbg !433
  store ptr %add.ptr, ptr %src, align 4, !dbg !433
  %21 = load i32, ptr %xs, align 4, !dbg !434
  %22 = load i32, ptr @saved, align 4, !dbg !435
  %cmp12 = icmp slt i32 %21, %22, !dbg !436
  br i1 %cmp12, label %cond.true14, label %cond.false15, !dbg !437

cond.true14:                                      ; preds = %cond.end
  br label %cond.end16, !dbg !437

cond.false15:                                     ; preds = %cond.end
  %23 = load i32, ptr %xs, align 4, !dbg !438
  %24 = load i32, ptr @saved, align 4, !dbg !439
  %sub = sub nsw i32 %23, %24, !dbg !440
  br label %cond.end16, !dbg !437

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ 0, %cond.true14 ], [ %sub, %cond.false15 ], !dbg !437
  store i32 %cond17, ptr %npad, align 4, !dbg !441
  call void @llvm.lifetime.end.p0(i64 4, ptr %copy) #5, !dbg !442
  br label %if.end18, !dbg !443

if.else:                                          ; preds = %for.body
  %25 = load i32, ptr %xs, align 4, !dbg !444
  store i32 %25, ptr %npad, align 4, !dbg !446
  br label %if.end18

if.end18:                                         ; preds = %if.else, %cond.end16
  %26 = load i32, ptr %dst, align 4, !dbg !447
  %27 = load i32, ptr %npad, align 4, !dbg !447
  %28 = load i16, ptr @video_segment, align 2, !dbg !448
  %29 = call { i32, i32 } asm sideeffect "pushw %es ; movw $2,%es ; shrw %cx ; jnc 1f ; stosw \0A\091: rep;stosl ; popw %es", "={di},={cx},{bx}{dx}{si},{ax},0,1,~{dirflag},~{fpsr},~{flags}"(i16 %28, i32 119539488, i32 %26, i32 %27) #5, !dbg !447, !srcloc !449
  %asmresult = extractvalue { i32, i32 } %29, 0, !dbg !447
  %asmresult19 = extractvalue { i32, i32 } %29, 1, !dbg !447
  store i32 %asmresult, ptr %dst, align 4, !dbg !447
  store i32 %asmresult19, ptr %npad, align 4, !dbg !447
  call void @llvm.lifetime.end.p0(i64 4, ptr %npad) #5, !dbg !450
  br label %for.inc, !dbg !451

for.inc:                                          ; preds = %if.end18
  %30 = load i32, ptr %y, align 4, !dbg !452
  %inc = add nsw i32 %30, 1, !dbg !452
  store i32 %inc, ptr %y, align 4, !dbg !452
  br label %for.cond, !dbg !453, !llvm.loop !454

for.end:                                          ; preds = %for.cond
  %31 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 2), align 4, !dbg !457
  %32 = load i32, ptr %xs, align 4, !dbg !459
  %cmp20 = icmp sge i32 %31, %32, !dbg !460
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !461

if.then22:                                        ; preds = %for.end
  %33 = load i32, ptr %xs, align 4, !dbg !462
  %sub23 = sub nsw i32 %33, 1, !dbg !463
  store i32 %sub23, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 2), align 4, !dbg !464
  br label %if.end24, !dbg !465

if.end24:                                         ; preds = %if.then22, %for.end
  %34 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 3), align 4, !dbg !466
  %35 = load i32, ptr %ys, align 4, !dbg !468
  %cmp25 = icmp sge i32 %34, %35, !dbg !469
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !470

if.then27:                                        ; preds = %if.end24
  %36 = load i32, ptr %ys, align 4, !dbg !471
  %sub28 = sub nsw i32 %36, 1, !dbg !472
  store i32 %sub28, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 3), align 4, !dbg !473
  br label %if.end29, !dbg !474

if.end29:                                         ; preds = %if.then27, %if.end24
  call void @initregs(ptr inreg noundef %ireg) #6, !dbg !475
  %37 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !476
  %ah = getelementptr inbounds %struct.anon.19, ptr %37, i32 0, i32 29, !dbg !476
  store i8 2, ptr %ah, align 1, !dbg !477
  %38 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 3), align 4, !dbg !478
  %conv30 = trunc i32 %38 to i8, !dbg !479
  %39 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !480
  %dh = getelementptr inbounds %struct.anon.19, ptr %39, i32 0, i32 21, !dbg !480
  store i8 %conv30, ptr %dh, align 1, !dbg !481
  %40 = load i32, ptr getelementptr inbounds (%struct.saved_screen, ptr @saved, i32 0, i32 2), align 4, !dbg !482
  %conv31 = trunc i32 %40 to i8, !dbg !483
  %41 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !484
  %dl = getelementptr inbounds %struct.anon.19, ptr %41, i32 0, i32 20, !dbg !484
  store i8 %conv31, ptr %dl, align 4, !dbg !485
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef null) #6, !dbg !486
  call void @store_cursor_position() #6, !dbg !487
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !488
  br label %cleanup, !dbg !488

cleanup:                                          ; preds = %if.end29, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %src) #5, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %dst) #5, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #5, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %ys) #5, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %xs) #5, !dbg !488
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !488

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define internal void @store_cursor_position() #0 !dbg !489 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !491, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #5, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !492, metadata !DIExpression()), !dbg !495
  call void @initregs(ptr inreg noundef %ireg) #6, !dbg !496
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !497
  %ah = getelementptr inbounds %struct.anon.19, ptr %0, i32 0, i32 29, !dbg !497
  store i8 3, ptr %ah, align 1, !dbg !498
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #6, !dbg !499
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !500
  %dl = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 20, !dbg !500
  %2 = load i8, ptr %dl, align 4, !dbg !500
  store i8 %2, ptr @boot_params, align 1, !dbg !501
  %3 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !502
  %dh = getelementptr inbounds %struct.anon.19, ptr %3, i32 0, i32 21, !dbg !502
  %4 = load i8, ptr %dh, align 1, !dbg !502
  store i8 %4, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 1), align 1, !dbg !503
  %5 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !504
  %ch = getelementptr inbounds %struct.anon.19, ptr %5, i32 0, i32 25, !dbg !504
  %6 = load i8, ptr %ch, align 1, !dbg !504
  %conv = zext i8 %6 to i32, !dbg !506
  %and = and i32 %conv, 32, !dbg !507
  %tobool = icmp ne i32 %and, 0, !dbg !507
  br i1 %tobool, label %if.then, label %if.end, !dbg !508

if.then:                                          ; preds = %entry
  %7 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 6), align 1, !dbg !509
  %conv1 = zext i8 %7 to i32, !dbg !509
  %or = or i32 %conv1, 1, !dbg !509
  %conv2 = trunc i32 %or to i8, !dbg !509
  store i8 %conv2, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 6), align 1, !dbg !509
  br label %if.end, !dbg !510

if.end:                                           ; preds = %if.then, %entry
  %8 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !511
  %ch3 = getelementptr inbounds %struct.anon.19, ptr %8, i32 0, i32 25, !dbg !511
  %9 = load i8, ptr %ch3, align 1, !dbg !511
  %conv4 = zext i8 %9 to i32, !dbg !513
  %and5 = and i32 %conv4, 31, !dbg !514
  %10 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !515
  %cl = getelementptr inbounds %struct.anon.19, ptr %10, i32 0, i32 24, !dbg !515
  %11 = load i8, ptr %cl, align 4, !dbg !515
  %conv6 = zext i8 %11 to i32, !dbg !516
  %and7 = and i32 %conv6, 31, !dbg !517
  %cmp = icmp sgt i32 %and5, %and7, !dbg !518
  br i1 %cmp, label %if.then9, label %if.end13, !dbg !519

if.then9:                                         ; preds = %if.end
  %12 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 6), align 1, !dbg !520
  %conv10 = zext i8 %12 to i32, !dbg !520
  %or11 = or i32 %conv10, 1, !dbg !520
  %conv12 = trunc i32 %or11 to i8, !dbg !520
  store i8 %conv12, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 6), align 1, !dbg !520
  br label %if.end13, !dbg !521

if.end13:                                         ; preds = %if.then9, %if.end
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #5, !dbg !522
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !522
  ret void, !dbg !522
}

; Function Attrs: nounwind
define internal void @store_video_mode() #0 !dbg !523 {
entry:
  %ireg = alloca %struct.biosregs, align 4
  %oreg = alloca %struct.biosregs, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr %ireg) #5, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %ireg, metadata !525, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 44, ptr %oreg) #5, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %oreg, metadata !526, metadata !DIExpression()), !dbg !529
  call void @initregs(ptr inreg noundef %ireg) #6, !dbg !530
  %0 = getelementptr inbounds %struct.biosregs, ptr %ireg, i32 0, i32 0, !dbg !531
  %ah = getelementptr inbounds %struct.anon.19, ptr %0, i32 0, i32 29, !dbg !531
  store i8 15, ptr %ah, align 1, !dbg !532
  call void @intcall(i8 inreg noundef zeroext 16, ptr inreg noundef %ireg, ptr inreg noundef %oreg) #6, !dbg !533
  %1 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !534
  %al = getelementptr inbounds %struct.anon.19, ptr %1, i32 0, i32 28, !dbg !534
  %2 = load i8, ptr %al, align 4, !dbg !534
  %conv = zext i8 %2 to i32, !dbg !535
  %and = and i32 %conv, 127, !dbg !536
  %conv1 = trunc i32 %and to i8, !dbg !535
  store i8 %conv1, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 4), align 1, !dbg !537
  %3 = getelementptr inbounds %struct.biosregs, ptr %oreg, i32 0, i32 0, !dbg !538
  %bh = getelementptr inbounds %struct.anon.19, ptr %3, i32 0, i32 17, !dbg !538
  %4 = load i8, ptr %bh, align 1, !dbg !538
  %conv2 = zext i8 %4 to i16, !dbg !539
  store i16 %conv2, ptr getelementptr inbounds (%struct.screen_info, ptr @boot_params, i32 0, i32 3), align 1, !dbg !540
  call void @llvm.lifetime.end.p0(i64 44, ptr %oreg) #5, !dbg !541
  call void @llvm.lifetime.end.p0(i64 44, ptr %ireg) #5, !dbg !541
  ret void, !dbg !541
}

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #4 !dbg !542 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load i16, ptr %seg.addr, align 2, !dbg !548
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #5, !dbg !549, !srcloc !550
  ret void, !dbg !551
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @rdfs16(i32 inreg noundef %addr) #4 !dbg !552 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i16, align 2
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !556, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #5, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !557, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #5, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !558, metadata !DIExpression()), !dbg !564
  %0 = load i32, ptr %addr.addr, align 4, !dbg !564
  %1 = inttoptr i32 %0 to ptr, !dbg !564
  %2 = ptrtoint ptr %1 to i32, !dbg !564
  store i32 %2, ptr %__ptr, align 4, !dbg !564
  %3 = load i32, ptr %__ptr, align 4, !dbg !564
  %add = add i32 %3, 0, !dbg !564
  %4 = inttoptr i32 %add to ptr, !dbg !564
  store ptr %4, ptr %tmp, align 4, !dbg !564
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #5, !dbg !565
  %5 = load ptr, ptr %tmp, align 4, !dbg !564
  store ptr %5, ptr %ptr, align 4, !dbg !563
  call void @llvm.lifetime.start.p0(i64 2, ptr %v) #5, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %v, metadata !560, metadata !DIExpression()), !dbg !567
  %6 = load ptr, ptr %ptr, align 4, !dbg !568
  %7 = call i16 asm sideeffect "movw %fs:$1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %6) #5, !dbg !569, !srcloc !570
  store i16 %7, ptr %v, align 2, !dbg !569
  %8 = load i16, ptr %v, align 2, !dbg !571
  call void @llvm.lifetime.end.p0(i64 2, ptr %v) #5, !dbg !572
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #5, !dbg !572
  ret i16 %8, !dbg !573
}

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @rdfs8(i32 inreg noundef %addr) #4 !dbg !574 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i8, align 1
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !578, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #5, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !579, metadata !DIExpression()), !dbg !585
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #5, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !580, metadata !DIExpression()), !dbg !586
  %0 = load i32, ptr %addr.addr, align 4, !dbg !586
  %1 = inttoptr i32 %0 to ptr, !dbg !586
  %2 = ptrtoint ptr %1 to i32, !dbg !586
  store i32 %2, ptr %__ptr, align 4, !dbg !586
  %3 = load i32, ptr %__ptr, align 4, !dbg !586
  %add = add i32 %3, 0, !dbg !586
  %4 = inttoptr i32 %add to ptr, !dbg !586
  store ptr %4, ptr %tmp, align 4, !dbg !586
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #5, !dbg !587
  %5 = load ptr, ptr %tmp, align 4, !dbg !586
  store ptr %5, ptr %ptr, align 4, !dbg !585
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #5, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %v, metadata !582, metadata !DIExpression()), !dbg !589
  %6 = load ptr, ptr %ptr, align 4, !dbg !590
  %7 = call i8 asm sideeffect "movb %fs:$1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %6) #5, !dbg !591, !srcloc !592
  store i8 %7, ptr %v, align 1, !dbg !591
  %8 = load i8, ptr %v, align 1, !dbg !593
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #5, !dbg !594
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #5, !dbg !594
  ret i8 %8, !dbg !595
}

declare !dbg !596 dso_local void @initregs(ptr inreg noundef) #3

declare !dbg !600 dso_local void @intcall(i8 inreg noundef zeroext, ptr inreg noundef, ptr inreg noundef) #3

; Function Attrs: inlinehint nounwind
define internal zeroext i1 @heap_free(i32 inreg noundef %n) #4 !dbg !605 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load ptr, ptr @heap_end, align 4, !dbg !613
  %1 = load ptr, ptr @HEAP, align 4, !dbg !614
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i32, !dbg !615
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32, !dbg !615
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !615
  %2 = load i32, ptr %n.addr, align 4, !dbg !616
  %cmp = icmp sge i32 %sub.ptr.sub, %2, !dbg !617
  ret i1 %cmp, !dbg !618
}

; Function Attrs: inlinehint nounwind
define internal ptr @__get_heap(i32 inreg noundef %s, i32 inreg noundef %a, i32 inreg noundef %n) #4 !dbg !619 {
entry:
  %s.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  store i32 %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !623, metadata !DIExpression()), !dbg !627
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !624, metadata !DIExpression()), !dbg !628
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !625, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #5, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !626, metadata !DIExpression()), !dbg !631
  %0 = load ptr, ptr @HEAP, align 4, !dbg !632
  %1 = ptrtoint ptr %0 to i32, !dbg !633
  %2 = load i32, ptr %a.addr, align 4, !dbg !634
  %sub = sub i32 %2, 1, !dbg !635
  %add = add i32 %1, %sub, !dbg !636
  %3 = load i32, ptr %a.addr, align 4, !dbg !637
  %sub1 = sub i32 %3, 1, !dbg !638
  %not = xor i32 %sub1, -1, !dbg !639
  %and = and i32 %add, %not, !dbg !640
  %4 = inttoptr i32 %and to ptr, !dbg !641
  store ptr %4, ptr @HEAP, align 4, !dbg !642
  %5 = load ptr, ptr @HEAP, align 4, !dbg !643
  store ptr %5, ptr %tmp, align 4, !dbg !644
  %6 = load i32, ptr %s.addr, align 4, !dbg !645
  %7 = load i32, ptr %n.addr, align 4, !dbg !646
  %mul = mul i32 %6, %7, !dbg !647
  %8 = load ptr, ptr @HEAP, align 4, !dbg !648
  %add.ptr = getelementptr inbounds i8, ptr %8, i32 %mul, !dbg !648
  store ptr %add.ptr, ptr @HEAP, align 4, !dbg !648
  %9 = load ptr, ptr %tmp, align 4, !dbg !649
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #5, !dbg !650
  ret ptr %9, !dbg !651
}

declare !dbg !652 dso_local ptr @copy_from_fs(ptr inreg noundef, i32 inreg noundef, i32 inreg noundef) #3

declare !dbg !655 dso_local void @puts(ptr inreg noundef) #3

declare !dbg !658 dso_local void @kbd_flush() #3

declare !dbg !659 dso_local i32 @getchar_timeout() #3

declare !dbg !662 dso_local void @putchar(i32 inreg noundef) #3

; Function Attrs: nounwind
define internal void @display_menu() #0 !dbg !663 {
entry:
  %card = alloca ptr, align 4
  %mi = alloca ptr, align 4
  %ch = alloca i8, align 1
  %i = alloca i32, align 4
  %nmodes = alloca i32, align 4
  %modes_per_line = alloca i32, align 4
  %col = alloca i32, align 4
  %resbuf = alloca [32 x i8], align 1
  %visible = alloca i32, align 4
  %mode_id = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %card) #5, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %card, metadata !665, metadata !DIExpression()), !dbg !708
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #5, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %mi, metadata !689, metadata !DIExpression()), !dbg !710
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #5, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %ch, metadata !690, metadata !DIExpression()), !dbg !712
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %i, metadata !691, metadata !DIExpression()), !dbg !714
  call void @llvm.lifetime.start.p0(i64 4, ptr %nmodes) #5, !dbg !715
  call void @llvm.dbg.declare(metadata ptr %nmodes, metadata !692, metadata !DIExpression()), !dbg !716
  call void @llvm.lifetime.start.p0(i64 4, ptr %modes_per_line) #5, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %modes_per_line, metadata !693, metadata !DIExpression()), !dbg !718
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #5, !dbg !719
  call void @llvm.dbg.declare(metadata ptr %col, metadata !694, metadata !DIExpression()), !dbg !720
  store i32 0, ptr %nmodes, align 4, !dbg !721
  store ptr @video_cards, ptr %card, align 4, !dbg !722
  br label %for.cond, !dbg !724

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %card, align 4, !dbg !725
  %cmp = icmp ult ptr %0, @video_cards_end, !dbg !727
  br i1 %cmp, label %for.body, label %for.end, !dbg !728

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %card, align 4, !dbg !729
  %nmodes1 = getelementptr inbounds %struct.card_info, ptr %1, i32 0, i32 4, !dbg !730
  %2 = load i32, ptr %nmodes1, align 4, !dbg !730
  %3 = load i32, ptr %nmodes, align 4, !dbg !731
  %add = add nsw i32 %3, %2, !dbg !731
  store i32 %add, ptr %nmodes, align 4, !dbg !731
  br label %for.inc, !dbg !732

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %card, align 4, !dbg !733
  %incdec.ptr = getelementptr inbounds %struct.card_info, ptr %4, i32 1, !dbg !733
  store ptr %incdec.ptr, ptr %card, align 4, !dbg !733
  br label %for.cond, !dbg !734, !llvm.loop !735

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %modes_per_line, align 4, !dbg !737
  %5 = load i32, ptr %nmodes, align 4, !dbg !738
  %cmp2 = icmp sge i32 %5, 20, !dbg !740
  br i1 %cmp2, label %if.then, label %if.end, !dbg !741

if.then:                                          ; preds = %for.end
  store i32 3, ptr %modes_per_line, align 4, !dbg !742
  br label %if.end, !dbg !743

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, ptr %col, align 4, !dbg !744
  br label %for.cond3, !dbg !746

for.cond3:                                        ; preds = %for.inc6, %if.end
  %6 = load i32, ptr %col, align 4, !dbg !747
  %7 = load i32, ptr %modes_per_line, align 4, !dbg !749
  %cmp4 = icmp slt i32 %6, %7, !dbg !750
  br i1 %cmp4, label %for.body5, label %for.end7, !dbg !751

for.body5:                                        ; preds = %for.cond3
  call void @puts(ptr inreg noundef @.str.3) #6, !dbg !752
  br label %for.inc6, !dbg !752

for.inc6:                                         ; preds = %for.body5
  %8 = load i32, ptr %col, align 4, !dbg !753
  %inc = add nsw i32 %8, 1, !dbg !753
  store i32 %inc, ptr %col, align 4, !dbg !753
  br label %for.cond3, !dbg !754, !llvm.loop !755

for.end7:                                         ; preds = %for.cond3
  call void @putchar(i32 inreg noundef 10) #6, !dbg !757
  store i32 0, ptr %col, align 4, !dbg !758
  store i8 48, ptr %ch, align 1, !dbg !759
  store ptr @video_cards, ptr %card, align 4, !dbg !760
  br label %for.cond8, !dbg !761

for.cond8:                                        ; preds = %for.inc74, %for.end7
  %9 = load ptr, ptr %card, align 4, !dbg !762
  %cmp9 = icmp ult ptr %9, @video_cards_end, !dbg !763
  br i1 %cmp9, label %for.body10, label %for.end76, !dbg !764

for.body10:                                       ; preds = %for.cond8
  %10 = load ptr, ptr %card, align 4, !dbg !765
  %modes = getelementptr inbounds %struct.card_info, ptr %10, i32 0, i32 3, !dbg !766
  %11 = load ptr, ptr %modes, align 4, !dbg !766
  store ptr %11, ptr %mi, align 4, !dbg !767
  store i32 0, ptr %i, align 4, !dbg !768
  br label %for.cond11, !dbg !769

for.cond11:                                       ; preds = %for.inc70, %for.body10
  %12 = load i32, ptr %i, align 4, !dbg !770
  %13 = load ptr, ptr %card, align 4, !dbg !771
  %nmodes12 = getelementptr inbounds %struct.card_info, ptr %13, i32 0, i32 4, !dbg !772
  %14 = load i32, ptr %nmodes12, align 4, !dbg !772
  %cmp13 = icmp slt i32 %12, %14, !dbg !773
  br i1 %cmp13, label %for.body14, label %for.end73, !dbg !774

for.body14:                                       ; preds = %for.cond11
  call void @llvm.lifetime.start.p0(i64 32, ptr %resbuf) #5, !dbg !775
  call void @llvm.dbg.declare(metadata ptr %resbuf, metadata !695, metadata !DIExpression()), !dbg !776
  call void @llvm.lifetime.start.p0(i64 4, ptr %visible) #5, !dbg !777
  call void @llvm.dbg.declare(metadata ptr %visible, metadata !705, metadata !DIExpression()), !dbg !778
  %15 = load ptr, ptr %mi, align 4, !dbg !779
  %x = getelementptr inbounds %struct.mode_info, ptr %15, i32 0, i32 1, !dbg !780
  %16 = load i16, ptr %x, align 2, !dbg !780
  %conv = zext i16 %16 to i32, !dbg !779
  %tobool = icmp ne i32 %conv, 0, !dbg !779
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !781

land.rhs:                                         ; preds = %for.body14
  %17 = load ptr, ptr %mi, align 4, !dbg !782
  %y = getelementptr inbounds %struct.mode_info, ptr %17, i32 0, i32 2, !dbg !783
  %18 = load i16, ptr %y, align 2, !dbg !783
  %conv15 = zext i16 %18 to i32, !dbg !782
  %tobool16 = icmp ne i32 %conv15, 0, !dbg !781
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body14
  %19 = phi i1 [ false, %for.body14 ], [ %tobool16, %land.rhs ], !dbg !784
  %land.ext = zext i1 %19 to i32, !dbg !781
  store i32 %land.ext, ptr %visible, align 4, !dbg !778
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode_id) #5, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %mode_id, metadata !706, metadata !DIExpression()), !dbg !786
  %20 = load ptr, ptr %mi, align 4, !dbg !787
  %mode = getelementptr inbounds %struct.mode_info, ptr %20, i32 0, i32 0, !dbg !788
  %21 = load i16, ptr %mode, align 2, !dbg !788
  %conv17 = zext i16 %21 to i32, !dbg !787
  %tobool18 = icmp ne i32 %conv17, 0, !dbg !787
  br i1 %tobool18, label %cond.true, label %cond.false, !dbg !787

cond.true:                                        ; preds = %land.end
  %22 = load ptr, ptr %mi, align 4, !dbg !789
  %mode19 = getelementptr inbounds %struct.mode_info, ptr %22, i32 0, i32 0, !dbg !790
  %23 = load i16, ptr %mode19, align 2, !dbg !790
  %conv20 = zext i16 %23 to i32, !dbg !789
  br label %cond.end, !dbg !787

cond.false:                                       ; preds = %land.end
  %24 = load ptr, ptr %mi, align 4, !dbg !791
  %y21 = getelementptr inbounds %struct.mode_info, ptr %24, i32 0, i32 2, !dbg !792
  %25 = load i16, ptr %y21, align 2, !dbg !792
  %conv22 = zext i16 %25 to i32, !dbg !791
  %shl = shl i32 %conv22, 8, !dbg !793
  %26 = load ptr, ptr %mi, align 4, !dbg !794
  %x23 = getelementptr inbounds %struct.mode_info, ptr %26, i32 0, i32 1, !dbg !795
  %27 = load i16, ptr %x23, align 2, !dbg !795
  %conv24 = zext i16 %27 to i32, !dbg !794
  %add25 = add nsw i32 %shl, %conv24, !dbg !796
  br label %cond.end, !dbg !787

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv20, %cond.true ], [ %add25, %cond.false ], !dbg !787
  %conv26 = trunc i32 %cond to i16, !dbg !787
  store i16 %conv26, ptr %mode_id, align 2, !dbg !786
  %28 = load i32, ptr %visible, align 4, !dbg !797
  %tobool27 = icmp ne i32 %28, 0, !dbg !797
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !799

if.then28:                                        ; preds = %cond.end
  store i32 13, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !800

if.end29:                                         ; preds = %cond.end
  %29 = load ptr, ptr %mi, align 4, !dbg !801
  %depth = getelementptr inbounds %struct.mode_info, ptr %29, i32 0, i32 3, !dbg !803
  %30 = load i16, ptr %depth, align 2, !dbg !803
  %tobool30 = icmp ne i16 %30, 0, !dbg !801
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !804

if.then31:                                        ; preds = %if.end29
  %arraydecay = getelementptr inbounds [32 x i8], ptr %resbuf, i32 0, i32 0, !dbg !805
  %31 = load ptr, ptr %mi, align 4, !dbg !806
  %y32 = getelementptr inbounds %struct.mode_info, ptr %31, i32 0, i32 2, !dbg !807
  %32 = load i16, ptr %y32, align 2, !dbg !807
  %conv33 = zext i16 %32 to i32, !dbg !806
  %33 = load ptr, ptr %mi, align 4, !dbg !808
  %depth34 = getelementptr inbounds %struct.mode_info, ptr %33, i32 0, i32 3, !dbg !809
  %34 = load i16, ptr %depth34, align 2, !dbg !809
  %conv35 = zext i16 %34 to i32, !dbg !808
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr inreg noundef %arraydecay, ptr inreg noundef @.str.4, i32 inreg noundef %conv33, i32 noundef %conv35) #6, !dbg !810
  br label %if.end40, !dbg !810

if.else:                                          ; preds = %if.end29
  %arraydecay36 = getelementptr inbounds [32 x i8], ptr %resbuf, i32 0, i32 0, !dbg !811
  %35 = load ptr, ptr %mi, align 4, !dbg !812
  %y37 = getelementptr inbounds %struct.mode_info, ptr %35, i32 0, i32 2, !dbg !813
  %36 = load i16, ptr %y37, align 2, !dbg !813
  %conv38 = zext i16 %36 to i32, !dbg !812
  %call39 = call i32 (ptr, ptr, ...) @sprintf(ptr inreg noundef %arraydecay36, ptr inreg noundef @.str.5, i32 inreg noundef %conv38) #6, !dbg !814
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then31
  %37 = load i8, ptr %ch, align 1, !dbg !815
  %conv41 = sext i8 %37 to i32, !dbg !815
  %38 = load i16, ptr %mode_id, align 2, !dbg !816
  %conv42 = zext i16 %38 to i32, !dbg !816
  %39 = load ptr, ptr %mi, align 4, !dbg !817
  %x43 = getelementptr inbounds %struct.mode_info, ptr %39, i32 0, i32 1, !dbg !818
  %40 = load i16, ptr %x43, align 2, !dbg !818
  %conv44 = zext i16 %40 to i32, !dbg !817
  %arraydecay45 = getelementptr inbounds [32 x i8], ptr %resbuf, i32 0, i32 0, !dbg !819
  %41 = load ptr, ptr %card, align 4, !dbg !820
  %card_name = getelementptr inbounds %struct.card_info, ptr %41, i32 0, i32 0, !dbg !821
  %42 = load ptr, ptr %card_name, align 4, !dbg !821
  %call46 = call i32 (ptr, ...) @printf(ptr inreg noundef @.str.6, i32 inreg noundef %conv41, i32 inreg noundef %conv42, i32 noundef %conv44, ptr noundef %arraydecay45, ptr noundef %42) #6, !dbg !822
  %43 = load i32, ptr %col, align 4, !dbg !823
  %inc47 = add nsw i32 %43, 1, !dbg !823
  store i32 %inc47, ptr %col, align 4, !dbg !823
  %44 = load i32, ptr %col, align 4, !dbg !824
  %45 = load i32, ptr %modes_per_line, align 4, !dbg !826
  %cmp48 = icmp sge i32 %44, %45, !dbg !827
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !828

if.then50:                                        ; preds = %if.end40
  call void @putchar(i32 inreg noundef 10) #6, !dbg !829
  store i32 0, ptr %col, align 4, !dbg !831
  br label %if.end51, !dbg !832

if.end51:                                         ; preds = %if.then50, %if.end40
  %46 = load i8, ptr %ch, align 1, !dbg !833
  %conv52 = sext i8 %46 to i32, !dbg !833
  %cmp53 = icmp eq i32 %conv52, 57, !dbg !835
  br i1 %cmp53, label %if.then55, label %if.else56, !dbg !836

if.then55:                                        ; preds = %if.end51
  store i8 97, ptr %ch, align 1, !dbg !837
  br label %if.end67, !dbg !838

if.else56:                                        ; preds = %if.end51
  %47 = load i8, ptr %ch, align 1, !dbg !839
  %conv57 = sext i8 %47 to i32, !dbg !839
  %cmp58 = icmp eq i32 %conv57, 122, !dbg !841
  br i1 %cmp58, label %if.then63, label %lor.lhs.false, !dbg !842

lor.lhs.false:                                    ; preds = %if.else56
  %48 = load i8, ptr %ch, align 1, !dbg !843
  %conv60 = sext i8 %48 to i32, !dbg !843
  %cmp61 = icmp eq i32 %conv60, 32, !dbg !844
  br i1 %cmp61, label %if.then63, label %if.else64, !dbg !845

if.then63:                                        ; preds = %lor.lhs.false, %if.else56
  store i8 32, ptr %ch, align 1, !dbg !846
  br label %if.end66, !dbg !847

if.else64:                                        ; preds = %lor.lhs.false
  %49 = load i8, ptr %ch, align 1, !dbg !848
  %inc65 = add i8 %49, 1, !dbg !848
  store i8 %inc65, ptr %ch, align 1, !dbg !848
  br label %if.end66

if.end66:                                         ; preds = %if.else64, %if.then63
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then55
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !849
  br label %cleanup, !dbg !849

cleanup:                                          ; preds = %if.end67, %if.then28
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode_id) #5, !dbg !849
  call void @llvm.lifetime.end.p0(i64 4, ptr %visible) #5, !dbg !849
  call void @llvm.lifetime.end.p0(i64 32, ptr %resbuf) #5, !dbg !849
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 13, label %for.inc70
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc70, !dbg !850

for.inc70:                                        ; preds = %cleanup.cont, %cleanup
  %50 = load i32, ptr %i, align 4, !dbg !851
  %inc71 = add nsw i32 %50, 1, !dbg !851
  store i32 %inc71, ptr %i, align 4, !dbg !851
  %51 = load ptr, ptr %mi, align 4, !dbg !852
  %incdec.ptr72 = getelementptr inbounds %struct.mode_info, ptr %51, i32 1, !dbg !852
  store ptr %incdec.ptr72, ptr %mi, align 4, !dbg !852
  br label %for.cond11, !dbg !853, !llvm.loop !854

for.end73:                                        ; preds = %for.cond11
  br label %for.inc74, !dbg !856

for.inc74:                                        ; preds = %for.end73
  %52 = load ptr, ptr %card, align 4, !dbg !857
  %incdec.ptr75 = getelementptr inbounds %struct.card_info, ptr %52, i32 1, !dbg !857
  store ptr %incdec.ptr75, ptr %card, align 4, !dbg !857
  br label %for.cond8, !dbg !858, !llvm.loop !859

for.end76:                                        ; preds = %for.cond8
  %53 = load i32, ptr %col, align 4, !dbg !861
  %tobool77 = icmp ne i32 %53, 0, !dbg !861
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !863

if.then78:                                        ; preds = %for.end76
  call void @putchar(i32 inreg noundef 10) #6, !dbg !864
  br label %if.end79, !dbg !864

if.end79:                                         ; preds = %if.then78, %for.end76
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #5, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %modes_per_line) #5, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %nmodes) #5, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !865
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #5, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #5, !dbg !865
  call void @llvm.lifetime.end.p0(i64 4, ptr %card) #5, !dbg !865
  ret void, !dbg !865

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
define internal i32 @get_entry() #0 !dbg !866 {
entry:
  %retval = alloca i32, align 4
  %entry_buf = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %key = alloca i32, align 4
  %v = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %entry_buf) #5, !dbg !873
  call void @llvm.dbg.declare(metadata ptr %entry_buf, metadata !868, metadata !DIExpression()), !dbg !874
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !875
  call void @llvm.dbg.declare(metadata ptr %i, metadata !869, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #5, !dbg !875
  call void @llvm.dbg.declare(metadata ptr %len, metadata !870, metadata !DIExpression()), !dbg !877
  store i32 0, ptr %len, align 4, !dbg !877
  call void @llvm.lifetime.start.p0(i64 4, ptr %key) #5, !dbg !878
  call void @llvm.dbg.declare(metadata ptr %key, metadata !871, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 4, ptr %v) #5, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %v, metadata !872, metadata !DIExpression()), !dbg !881
  br label %do.body, !dbg !882

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @getchar() #6, !dbg !883
  store i32 %call, ptr %key, align 4, !dbg !885
  %0 = load i32, ptr %key, align 4, !dbg !886
  %cmp = icmp eq i32 %0, 8, !dbg !888
  br i1 %cmp, label %if.then, label %if.else, !dbg !889

if.then:                                          ; preds = %do.body
  %1 = load i32, ptr %len, align 4, !dbg !890
  %cmp1 = icmp sgt i32 %1, 0, !dbg !893
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !894

if.then2:                                         ; preds = %if.then
  call void @puts(ptr inreg noundef @.str.7) #6, !dbg !895
  %2 = load i32, ptr %len, align 4, !dbg !897
  %dec = add nsw i32 %2, -1, !dbg !897
  store i32 %dec, ptr %len, align 4, !dbg !897
  br label %if.end, !dbg !898

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end17, !dbg !899

if.else:                                          ; preds = %do.body
  %3 = load i32, ptr %key, align 4, !dbg !900
  %cmp3 = icmp sge i32 %3, 48, !dbg !902
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !903

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, ptr %key, align 4, !dbg !904
  %cmp4 = icmp sle i32 %4, 57, !dbg !905
  br i1 %cmp4, label %if.then12, label %lor.lhs.false, !dbg !906

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else
  %5 = load i32, ptr %key, align 4, !dbg !907
  %cmp5 = icmp sge i32 %5, 65, !dbg !908
  br i1 %cmp5, label %land.lhs.true6, label %lor.lhs.false8, !dbg !909

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %6 = load i32, ptr %key, align 4, !dbg !910
  %cmp7 = icmp sle i32 %6, 90, !dbg !911
  br i1 %cmp7, label %if.then12, label %lor.lhs.false8, !dbg !912

lor.lhs.false8:                                   ; preds = %land.lhs.true6, %lor.lhs.false
  %7 = load i32, ptr %key, align 4, !dbg !913
  %cmp9 = icmp sge i32 %7, 97, !dbg !914
  br i1 %cmp9, label %land.lhs.true10, label %if.end16, !dbg !915

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %8 = load i32, ptr %key, align 4, !dbg !916
  %cmp11 = icmp sle i32 %8, 122, !dbg !917
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !918

if.then12:                                        ; preds = %land.lhs.true10, %land.lhs.true6, %land.lhs.true
  %9 = load i32, ptr %len, align 4, !dbg !919
  %cmp13 = icmp ult i32 %9, 4, !dbg !922
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !923

if.then14:                                        ; preds = %if.then12
  %10 = load i32, ptr %key, align 4, !dbg !924
  %conv = trunc i32 %10 to i8, !dbg !924
  %11 = load i32, ptr %len, align 4, !dbg !926
  %inc = add nsw i32 %11, 1, !dbg !926
  store i32 %inc, ptr %len, align 4, !dbg !926
  %arrayidx = getelementptr inbounds [4 x i8], ptr %entry_buf, i32 0, i32 %11, !dbg !927
  store i8 %conv, ptr %arrayidx, align 1, !dbg !928
  %12 = load i32, ptr %key, align 4, !dbg !929
  call void @putchar(i32 inreg noundef %12) #6, !dbg !930
  br label %if.end15, !dbg !931

if.end15:                                         ; preds = %if.then14, %if.then12
  br label %if.end16, !dbg !932

if.end16:                                         ; preds = %if.end15, %land.lhs.true10, %lor.lhs.false8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  br label %do.cond, !dbg !933

do.cond:                                          ; preds = %if.end17
  %13 = load i32, ptr %key, align 4, !dbg !934
  %cmp18 = icmp ne i32 %13, 13, !dbg !935
  br i1 %cmp18, label %do.body, label %do.end, !dbg !933, !llvm.loop !936

do.end:                                           ; preds = %do.cond
  call void @putchar(i32 inreg noundef 10) #6, !dbg !938
  %14 = load i32, ptr %len, align 4, !dbg !939
  %cmp20 = icmp eq i32 %14, 0, !dbg !941
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !942

if.then22:                                        ; preds = %do.end
  store i32 3844, ptr %retval, align 4, !dbg !943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !943

if.end23:                                         ; preds = %do.end
  store i32 0, ptr %v, align 4, !dbg !944
  store i32 0, ptr %i, align 4, !dbg !945
  br label %for.cond, !dbg !947

for.cond:                                         ; preds = %for.inc, %if.end23
  %15 = load i32, ptr %i, align 4, !dbg !948
  %16 = load i32, ptr %len, align 4, !dbg !950
  %cmp24 = icmp slt i32 %15, %16, !dbg !951
  br i1 %cmp24, label %for.body, label %for.end, !dbg !952

for.body:                                         ; preds = %for.cond
  %17 = load i32, ptr %v, align 4, !dbg !953
  %shl = shl i32 %17, 4, !dbg !953
  store i32 %shl, ptr %v, align 4, !dbg !953
  %18 = load i32, ptr %i, align 4, !dbg !955
  %arrayidx26 = getelementptr inbounds [4 x i8], ptr %entry_buf, i32 0, i32 %18, !dbg !956
  %19 = load i8, ptr %arrayidx26, align 1, !dbg !956
  %conv27 = sext i8 %19 to i32, !dbg !956
  %or = or i32 %conv27, 32, !dbg !957
  store i32 %or, ptr %key, align 4, !dbg !958
  %20 = load i32, ptr %key, align 4, !dbg !959
  %cmp28 = icmp sgt i32 %20, 57, !dbg !960
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !961

cond.true:                                        ; preds = %for.body
  %21 = load i32, ptr %key, align 4, !dbg !962
  %sub = sub nsw i32 %21, 97, !dbg !963
  %add = add nsw i32 %sub, 10, !dbg !964
  br label %cond.end, !dbg !961

cond.false:                                       ; preds = %for.body
  %22 = load i32, ptr %key, align 4, !dbg !965
  %sub30 = sub nsw i32 %22, 48, !dbg !966
  br label %cond.end, !dbg !961

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %sub30, %cond.false ], !dbg !961
  %23 = load i32, ptr %v, align 4, !dbg !967
  %add31 = add i32 %23, %cond, !dbg !967
  store i32 %add31, ptr %v, align 4, !dbg !967
  br label %for.inc, !dbg !968

for.inc:                                          ; preds = %cond.end
  %24 = load i32, ptr %i, align 4, !dbg !969
  %inc32 = add nsw i32 %24, 1, !dbg !969
  store i32 %inc32, ptr %i, align 4, !dbg !969
  br label %for.cond, !dbg !970, !llvm.loop !971

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %v, align 4, !dbg !973
  store i32 %25, ptr %retval, align 4, !dbg !974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !974

cleanup:                                          ; preds = %for.end, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %v) #5, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %key) #5, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #5, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !975
  call void @llvm.lifetime.end.p0(i64 4, ptr %entry_buf) #5, !dbg !975
  %26 = load i32, ptr %retval, align 4, !dbg !975
  ret i32 %26, !dbg !975
}

declare !dbg !976 dso_local i32 @sprintf(ptr inreg noundef, ptr inreg noundef, ...) #3

declare !dbg !979 dso_local i32 @getchar() #3

declare !dbg !980 dso_local void @copy_to_fs(i32 inreg noundef, ptr inreg noundef, i32 inreg noundef) #3

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/video.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ebb2b709cac0e292fb5d60db77798c29")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "video_segment", scope: !9, file: !2, line: 20, type: !13, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.video.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/video\22 -D KBUILD_BASENAME=\22video\22 -D KBUILD_MODNAME=\22video\22 -D __KBUILD_MODNAME=kmod_video -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/video.ll arch/x86/boot/video.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !30, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !12, !18, !19, !23, !24, !25}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 61, baseType: !27)
!26 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !28, line: 68, baseType: !29)
!28 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !{!0, !7, !31, !40, !45, !50, !55, !60, !65, !70}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "saved", scope: !9, file: !2, line: 237, type: !33, isLocal: true, isDefinition: true)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "saved_screen", file: !2, line: 233, size: 160, elements: !34)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !33, file: !2, line: 234, baseType: !23, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !33, file: !2, line: 234, baseType: !23, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "curx", scope: !33, file: !2, line: 235, baseType: !23, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cury", scope: !33, file: !2, line: 235, baseType: !23, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !2, line: 236, baseType: !12, size: 32, offset: 128)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 81)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 60)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 26)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 22)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 4)
!75 = !{i32 1, !"NumRegisterParameters", i32 3}
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{i32 1, !"override-stack-alignment", i32 4}
!80 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!81 = distinct !DISubprogram(name: "set_video", scope: !2, file: !2, line: 317, type: !82, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null}
!84 = !{!85}
!85 = !DILocalVariable(name: "mode", scope: !81, file: !2, line: 319, type: !13)
!86 = !DILocation(line: 319, column: 2, scope: !81)
!87 = !DILocation(line: 319, column: 6, scope: !81)
!88 = !DILocation(line: 319, column: 29, scope: !81)
!89 = !DILocation(line: 321, column: 2, scope: !81)
!90 = !DILocation(line: 323, column: 2, scope: !81)
!91 = !DILocation(line: 324, column: 2, scope: !81)
!92 = !DILocation(line: 325, column: 2, scope: !81)
!93 = !DILocation(line: 327, column: 2, scope: !81)
!94 = !DILocation(line: 328, column: 7, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !2, line: 328, column: 7)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 327, column: 11)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 327, column: 2)
!98 = distinct !DILexicalBlock(scope: !81, file: !2, line: 327, column: 2)
!99 = !DILocation(line: 328, column: 12, scope: !95)
!100 = !DILocation(line: 328, column: 7, scope: !96)
!101 = !DILocation(line: 329, column: 11, scope: !95)
!102 = !DILocation(line: 329, column: 9, scope: !95)
!103 = !DILocation(line: 329, column: 4, scope: !95)
!104 = !DILocation(line: 331, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !2, line: 331, column: 7)
!106 = !DILocation(line: 331, column: 8, scope: !105)
!107 = !DILocation(line: 331, column: 7, scope: !96)
!108 = !DILocation(line: 332, column: 4, scope: !105)
!109 = !DILocation(line: 334, column: 47, scope: !96)
!110 = !DILocation(line: 334, column: 3, scope: !96)
!111 = !DILocation(line: 335, column: 8, scope: !96)
!112 = !DILocation(line: 327, column: 2, scope: !97)
!113 = distinct !{!113, !114, !115, !116}
!114 = !DILocation(line: 327, column: 2, scope: !98)
!115 = !DILocation(line: 336, column: 2, scope: !98)
!116 = !{!"llvm.loop.unroll.disable"}
!117 = !DILocation(line: 337, column: 29, scope: !81)
!118 = !DILocation(line: 337, column: 27, scope: !81)
!119 = !DILocation(line: 338, column: 2, scope: !81)
!120 = !DILocation(line: 339, column: 2, scope: !81)
!121 = !DILocation(line: 341, column: 6, scope: !122)
!122 = distinct !DILexicalBlock(scope: !81, file: !2, line: 341, column: 6)
!123 = !DILocation(line: 341, column: 6, scope: !81)
!124 = !DILocation(line: 342, column: 3, scope: !122)
!125 = !DILocation(line: 343, column: 1, scope: !81)
!126 = distinct !DISubprogram(name: "store_mode_params", scope: !2, file: !2, line: 61, type: !82, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !127)
!127 = !{!128, !129, !130}
!128 = !DILocalVariable(name: "font_size", scope: !126, file: !2, line: 63, type: !13)
!129 = !DILocalVariable(name: "x", scope: !126, file: !2, line: 64, type: !23)
!130 = !DILocalVariable(name: "y", scope: !126, file: !2, line: 64, type: !23)
!131 = !DILocation(line: 63, column: 2, scope: !126)
!132 = !DILocation(line: 63, column: 6, scope: !126)
!133 = !DILocation(line: 64, column: 2, scope: !126)
!134 = !DILocation(line: 64, column: 6, scope: !126)
!135 = !DILocation(line: 64, column: 9, scope: !126)
!136 = !DILocation(line: 68, column: 6, scope: !137)
!137 = distinct !DILexicalBlock(scope: !126, file: !2, line: 68, column: 6)
!138 = !DILocation(line: 68, column: 6, scope: !126)
!139 = !DILocation(line: 69, column: 3, scope: !137)
!140 = !DILocation(line: 71, column: 2, scope: !126)
!141 = !DILocation(line: 72, column: 2, scope: !126)
!142 = !DILocation(line: 74, column: 30, scope: !143)
!143 = distinct !DILexicalBlock(scope: !126, file: !2, line: 74, column: 6)
!144 = !DILocation(line: 74, column: 6, scope: !143)
!145 = !DILocation(line: 74, column: 46, scope: !143)
!146 = !DILocation(line: 74, column: 6, scope: !126)
!147 = !DILocation(line: 76, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !2, line: 74, column: 55)
!149 = !DILocation(line: 77, column: 2, scope: !148)
!150 = !DILocation(line: 79, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !143, file: !2, line: 77, column: 9)
!152 = !DILocation(line: 82, column: 2, scope: !126)
!153 = !DILocation(line: 83, column: 14, scope: !126)
!154 = !DILocation(line: 83, column: 12, scope: !126)
!155 = !DILocation(line: 84, column: 46, scope: !126)
!156 = !DILocation(line: 84, column: 44, scope: !126)
!157 = !DILocation(line: 86, column: 6, scope: !126)
!158 = !DILocation(line: 86, column: 4, scope: !126)
!159 = !DILocation(line: 87, column: 7, scope: !126)
!160 = !DILocation(line: 87, column: 15, scope: !126)
!161 = !DILocation(line: 87, column: 6, scope: !126)
!162 = !DILocation(line: 87, column: 38, scope: !126)
!163 = !DILocation(line: 87, column: 50, scope: !126)
!164 = !DILocation(line: 87, column: 4, scope: !126)
!165 = !DILocation(line: 89, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !126, file: !2, line: 89, column: 6)
!167 = !DILocation(line: 89, column: 6, scope: !126)
!168 = !DILocation(line: 90, column: 7, scope: !166)
!169 = !DILocation(line: 90, column: 5, scope: !166)
!170 = !DILocation(line: 90, column: 3, scope: !166)
!171 = !DILocation(line: 91, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !126, file: !2, line: 91, column: 6)
!173 = !DILocation(line: 91, column: 6, scope: !126)
!174 = !DILocation(line: 92, column: 7, scope: !172)
!175 = !DILocation(line: 92, column: 5, scope: !172)
!176 = !DILocation(line: 92, column: 3, scope: !172)
!177 = !DILocation(line: 94, column: 45, scope: !126)
!178 = !DILocation(line: 94, column: 43, scope: !126)
!179 = !DILocation(line: 95, column: 45, scope: !126)
!180 = !DILocation(line: 95, column: 43, scope: !126)
!181 = !DILocation(line: 96, column: 1, scope: !126)
!182 = distinct !DISubprogram(name: "save_screen", scope: !2, file: !2, line: 239, type: !82, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!183 = !DILocation(line: 242, column: 36, scope: !182)
!184 = !DILocation(line: 242, column: 12, scope: !182)
!185 = !DILocation(line: 242, column: 10, scope: !182)
!186 = !DILocation(line: 243, column: 36, scope: !182)
!187 = !DILocation(line: 243, column: 12, scope: !182)
!188 = !DILocation(line: 243, column: 10, scope: !182)
!189 = !DILocation(line: 244, column: 39, scope: !182)
!190 = !DILocation(line: 244, column: 15, scope: !182)
!191 = !DILocation(line: 244, column: 13, scope: !182)
!192 = !DILocation(line: 245, column: 39, scope: !182)
!193 = !DILocation(line: 245, column: 15, scope: !182)
!194 = !DILocation(line: 245, column: 13, scope: !182)
!195 = !DILocation(line: 247, column: 23, scope: !196)
!196 = distinct !DILexicalBlock(scope: !182, file: !2, line: 247, column: 6)
!197 = !DILocation(line: 247, column: 31, scope: !196)
!198 = !DILocation(line: 247, column: 24, scope: !196)
!199 = !DILocation(line: 247, column: 32, scope: !196)
!200 = !DILocation(line: 247, column: 44, scope: !196)
!201 = !DILocation(line: 247, column: 7, scope: !196)
!202 = !DILocation(line: 247, column: 6, scope: !182)
!203 = !DILocation(line: 248, column: 3, scope: !196)
!204 = !DILocation(line: 250, column: 15, scope: !182)
!205 = !DILocation(line: 250, column: 13, scope: !182)
!206 = !DILocation(line: 252, column: 9, scope: !182)
!207 = !DILocation(line: 252, column: 2, scope: !182)
!208 = !DILocation(line: 253, column: 21, scope: !182)
!209 = !DILocation(line: 253, column: 36, scope: !182)
!210 = !DILocation(line: 253, column: 44, scope: !182)
!211 = !DILocation(line: 253, column: 37, scope: !182)
!212 = !DILocation(line: 253, column: 45, scope: !182)
!213 = !DILocation(line: 253, column: 2, scope: !182)
!214 = !DILocation(line: 254, column: 1, scope: !182)
!215 = !DISubprogram(name: "probe_cards", scope: !216, file: !216, line: 326, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!217 = !DISubroutineType(types: !218)
!218 = !{null, !23}
!219 = distinct !DISubprogram(name: "mode_menu", scope: !2, file: !2, line: 200, type: !220, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!29}
!222 = !{!223, !224}
!223 = !DILocalVariable(name: "key", scope: !219, file: !2, line: 202, type: !23)
!224 = !DILocalVariable(name: "sel", scope: !219, file: !2, line: 203, type: !29)
!225 = !DILocation(line: 202, column: 2, scope: !219)
!226 = !DILocation(line: 202, column: 6, scope: !219)
!227 = !DILocation(line: 203, column: 2, scope: !219)
!228 = !DILocation(line: 203, column: 15, scope: !219)
!229 = !DILocation(line: 205, column: 2, scope: !219)
!230 = !DILocation(line: 208, column: 2, scope: !219)
!231 = !DILocation(line: 209, column: 2, scope: !219)
!232 = !DILocation(line: 210, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !219, file: !2, line: 209, column: 12)
!234 = !DILocation(line: 210, column: 7, scope: !233)
!235 = !DILocation(line: 211, column: 7, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !2, line: 211, column: 7)
!237 = !DILocation(line: 211, column: 11, scope: !236)
!238 = !DILocation(line: 211, column: 18, scope: !236)
!239 = !DILocation(line: 211, column: 21, scope: !236)
!240 = !DILocation(line: 211, column: 25, scope: !236)
!241 = !DILocation(line: 211, column: 7, scope: !233)
!242 = !DILocation(line: 212, column: 4, scope: !236)
!243 = !DILocation(line: 213, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !233, file: !2, line: 213, column: 7)
!245 = !DILocation(line: 213, column: 11, scope: !244)
!246 = !DILocation(line: 213, column: 7, scope: !233)
!247 = !DILocation(line: 214, column: 4, scope: !244)
!248 = !DILocation(line: 215, column: 3, scope: !233)
!249 = distinct !{!249, !231, !250, !116}
!250 = !DILocation(line: 216, column: 2, scope: !219)
!251 = !DILocation(line: 219, column: 2, scope: !219)
!252 = !DILocation(line: 220, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !2, line: 219, column: 11)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 219, column: 2)
!255 = distinct !DILexicalBlock(scope: !219, file: !2, line: 219, column: 2)
!256 = !DILocation(line: 222, column: 3, scope: !253)
!257 = !DILocation(line: 224, column: 9, scope: !253)
!258 = !DILocation(line: 224, column: 7, scope: !253)
!259 = !DILocation(line: 225, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !253, file: !2, line: 225, column: 7)
!261 = !DILocation(line: 225, column: 11, scope: !260)
!262 = !DILocation(line: 225, column: 7, scope: !253)
!263 = !DILocation(line: 226, column: 11, scope: !260)
!264 = !DILocation(line: 226, column: 4, scope: !260)
!265 = !DILocation(line: 228, column: 3, scope: !253)
!266 = !DILocation(line: 219, column: 2, scope: !254)
!267 = distinct !{!267, !268, !269, !116}
!268 = !DILocation(line: 219, column: 2, scope: !255)
!269 = !DILocation(line: 229, column: 2, scope: !255)
!270 = !DILocation(line: 230, column: 1, scope: !219)
!271 = !DISubprogram(name: "set_mode", scope: !216, file: !216, line: 324, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{!23, !13}
!274 = !DISubprogram(name: "printf", scope: !216, file: !216, line: 299, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubroutineType(types: !276)
!276 = !{!23, !277, null}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!279 = !DISubprogram(name: "vesa_store_edid", scope: !216, file: !216, line: 329, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!280 = distinct !DISubprogram(name: "restore_screen", scope: !2, file: !2, line: 256, type: !82, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !281)
!281 = !{!282, !283, !284, !285, !287, !288, !370, !374}
!282 = !DILocalVariable(name: "xs", scope: !280, file: !2, line: 259, type: !23)
!283 = !DILocalVariable(name: "ys", scope: !280, file: !2, line: 260, type: !23)
!284 = !DILocalVariable(name: "y", scope: !280, file: !2, line: 261, type: !23)
!285 = !DILocalVariable(name: "dst", scope: !280, file: !2, line: 262, type: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !216, line: 76, baseType: !29)
!287 = !DILocalVariable(name: "src", scope: !280, file: !2, line: 263, type: !12)
!288 = !DILocalVariable(name: "ireg", scope: !280, file: !2, line: 264, type: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !216, line: 206, size: 352, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !216, line: 207, baseType: !292, size: 352)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !216, line: 207, size: 352, elements: !293)
!293 = !{!294, !310, !335}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !216, line: 208, baseType: !295, size: 352)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !216, line: 208, size: 352, elements: !296)
!296 = !{!297, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !295, file: !216, line: 209, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !29)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !295, file: !216, line: 210, baseType: !298, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !295, file: !216, line: 211, baseType: !298, size: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !295, file: !216, line: 212, baseType: !298, size: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !295, file: !216, line: 213, baseType: !298, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !295, file: !216, line: 214, baseType: !298, size: 32, offset: 160)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !295, file: !216, line: 215, baseType: !298, size: 32, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !295, file: !216, line: 216, baseType: !298, size: 32, offset: 224)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !295, file: !216, line: 217, baseType: !298, size: 32, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !295, file: !216, line: 218, baseType: !298, size: 32, offset: 288)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !295, file: !216, line: 219, baseType: !298, size: 32, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !216, line: 221, baseType: !311, size: 352)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !216, line: 221, size: 352, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !311, file: !216, line: 222, baseType: !13, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !311, file: !216, line: 222, baseType: !13, size: 16, offset: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !311, file: !216, line: 223, baseType: !13, size: 16, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !311, file: !216, line: 223, baseType: !13, size: 16, offset: 48)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !311, file: !216, line: 224, baseType: !13, size: 16, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !311, file: !216, line: 224, baseType: !13, size: 16, offset: 80)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !311, file: !216, line: 225, baseType: !13, size: 16, offset: 96)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !311, file: !216, line: 225, baseType: !13, size: 16, offset: 112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !311, file: !216, line: 226, baseType: !13, size: 16, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !311, file: !216, line: 226, baseType: !13, size: 16, offset: 144)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !311, file: !216, line: 227, baseType: !13, size: 16, offset: 160)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !311, file: !216, line: 227, baseType: !13, size: 16, offset: 176)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !311, file: !216, line: 228, baseType: !13, size: 16, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !311, file: !216, line: 228, baseType: !13, size: 16, offset: 208)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !311, file: !216, line: 229, baseType: !13, size: 16, offset: 224)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !311, file: !216, line: 229, baseType: !13, size: 16, offset: 240)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !311, file: !216, line: 230, baseType: !13, size: 16, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !311, file: !216, line: 230, baseType: !13, size: 16, offset: 272)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !311, file: !216, line: 231, baseType: !13, size: 16, offset: 288)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !311, file: !216, line: 231, baseType: !13, size: 16, offset: 304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !216, line: 232, baseType: !13, size: 16, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !311, file: !216, line: 232, baseType: !13, size: 16, offset: 336)
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !216, line: 234, baseType: !336, size: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !216, line: 234, size: 256, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !336, file: !216, line: 235, baseType: !20, size: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !336, file: !216, line: 235, baseType: !20, size: 8, offset: 8)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !336, file: !216, line: 235, baseType: !20, size: 8, offset: 16)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !336, file: !216, line: 235, baseType: !20, size: 8, offset: 24)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !336, file: !216, line: 236, baseType: !20, size: 8, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !336, file: !216, line: 236, baseType: !20, size: 8, offset: 40)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !336, file: !216, line: 236, baseType: !20, size: 8, offset: 48)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !336, file: !216, line: 236, baseType: !20, size: 8, offset: 56)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !336, file: !216, line: 237, baseType: !20, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !336, file: !216, line: 237, baseType: !20, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !336, file: !216, line: 237, baseType: !20, size: 8, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !336, file: !216, line: 237, baseType: !20, size: 8, offset: 88)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !336, file: !216, line: 238, baseType: !20, size: 8, offset: 96)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !336, file: !216, line: 238, baseType: !20, size: 8, offset: 104)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !336, file: !216, line: 238, baseType: !20, size: 8, offset: 112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !336, file: !216, line: 238, baseType: !20, size: 8, offset: 120)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !336, file: !216, line: 239, baseType: !20, size: 8, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !336, file: !216, line: 239, baseType: !20, size: 8, offset: 136)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !336, file: !216, line: 239, baseType: !20, size: 8, offset: 144)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !336, file: !216, line: 239, baseType: !20, size: 8, offset: 152)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !336, file: !216, line: 240, baseType: !20, size: 8, offset: 160)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !336, file: !216, line: 240, baseType: !20, size: 8, offset: 168)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !336, file: !216, line: 240, baseType: !20, size: 8, offset: 176)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !336, file: !216, line: 240, baseType: !20, size: 8, offset: 184)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !336, file: !216, line: 241, baseType: !20, size: 8, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !336, file: !216, line: 241, baseType: !20, size: 8, offset: 200)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !336, file: !216, line: 241, baseType: !20, size: 8, offset: 208)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !336, file: !216, line: 241, baseType: !20, size: 8, offset: 216)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !336, file: !216, line: 242, baseType: !20, size: 8, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !336, file: !216, line: 242, baseType: !20, size: 8, offset: 232)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !336, file: !216, line: 242, baseType: !20, size: 8, offset: 240)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !336, file: !216, line: 242, baseType: !20, size: 8, offset: 248)
!370 = !DILocalVariable(name: "npad", scope: !371, file: !2, line: 276, type: !23)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 275, column: 27)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 275, column: 2)
!373 = distinct !DILexicalBlock(scope: !280, file: !2, line: 275, column: 2)
!374 = !DILocalVariable(name: "copy", scope: !375, file: !2, line: 279, type: !23)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 278, column: 20)
!376 = distinct !DILexicalBlock(scope: !371, file: !2, line: 278, column: 7)
!377 = !DILocation(line: 259, column: 2, scope: !280)
!378 = !DILocation(line: 259, column: 6, scope: !280)
!379 = !DILocation(line: 259, column: 35, scope: !280)
!380 = !DILocation(line: 259, column: 11, scope: !280)
!381 = !DILocation(line: 260, column: 2, scope: !280)
!382 = !DILocation(line: 260, column: 6, scope: !280)
!383 = !DILocation(line: 260, column: 35, scope: !280)
!384 = !DILocation(line: 260, column: 11, scope: !280)
!385 = !DILocation(line: 261, column: 2, scope: !280)
!386 = !DILocation(line: 261, column: 6, scope: !280)
!387 = !DILocation(line: 262, column: 2, scope: !280)
!388 = !DILocation(line: 262, column: 9, scope: !280)
!389 = !DILocation(line: 263, column: 2, scope: !280)
!390 = !DILocation(line: 263, column: 7, scope: !280)
!391 = !DILocation(line: 263, column: 19, scope: !280)
!392 = !DILocation(line: 264, column: 2, scope: !280)
!393 = !DILocation(line: 264, column: 18, scope: !280)
!394 = !DILocation(line: 266, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !280, file: !2, line: 266, column: 6)
!396 = !DILocation(line: 266, column: 6, scope: !280)
!397 = !DILocation(line: 267, column: 3, scope: !395)
!398 = !DILocation(line: 269, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !280, file: !2, line: 269, column: 6)
!400 = !DILocation(line: 269, column: 6, scope: !280)
!401 = !DILocation(line: 270, column: 3, scope: !399)
!402 = !DILocation(line: 274, column: 9, scope: !280)
!403 = !DILocation(line: 274, column: 2, scope: !280)
!404 = !DILocation(line: 275, column: 9, scope: !373)
!405 = !DILocation(line: 275, column: 7, scope: !373)
!406 = !DILocation(line: 275, column: 14, scope: !372)
!407 = !DILocation(line: 275, column: 18, scope: !372)
!408 = !DILocation(line: 275, column: 16, scope: !372)
!409 = !DILocation(line: 275, column: 2, scope: !373)
!410 = !DILocation(line: 276, column: 3, scope: !371)
!411 = !DILocation(line: 276, column: 7, scope: !371)
!412 = !DILocation(line: 278, column: 7, scope: !376)
!413 = !DILocation(line: 278, column: 17, scope: !376)
!414 = !DILocation(line: 278, column: 9, scope: !376)
!415 = !DILocation(line: 278, column: 7, scope: !371)
!416 = !DILocation(line: 279, column: 4, scope: !375)
!417 = !DILocation(line: 279, column: 8, scope: !375)
!418 = !DILocation(line: 279, column: 16, scope: !375)
!419 = !DILocation(line: 279, column: 27, scope: !375)
!420 = !DILocation(line: 279, column: 19, scope: !375)
!421 = !DILocation(line: 279, column: 15, scope: !375)
!422 = !DILocation(line: 279, column: 32, scope: !375)
!423 = !DILocation(line: 279, column: 43, scope: !375)
!424 = !DILocation(line: 280, column: 15, scope: !375)
!425 = !DILocation(line: 280, column: 20, scope: !375)
!426 = !DILocation(line: 280, column: 25, scope: !375)
!427 = !DILocation(line: 280, column: 29, scope: !375)
!428 = !DILocation(line: 280, column: 4, scope: !375)
!429 = !DILocation(line: 281, column: 11, scope: !375)
!430 = !DILocation(line: 281, column: 15, scope: !375)
!431 = !DILocation(line: 281, column: 8, scope: !375)
!432 = !DILocation(line: 282, column: 17, scope: !375)
!433 = !DILocation(line: 282, column: 8, scope: !375)
!434 = !DILocation(line: 283, column: 12, scope: !375)
!435 = !DILocation(line: 283, column: 23, scope: !375)
!436 = !DILocation(line: 283, column: 15, scope: !375)
!437 = !DILocation(line: 283, column: 11, scope: !375)
!438 = !DILocation(line: 283, column: 32, scope: !375)
!439 = !DILocation(line: 283, column: 41, scope: !375)
!440 = !DILocation(line: 283, column: 34, scope: !375)
!441 = !DILocation(line: 283, column: 9, scope: !375)
!442 = !DILocation(line: 284, column: 3, scope: !376)
!443 = !DILocation(line: 284, column: 3, scope: !375)
!444 = !DILocation(line: 285, column: 11, scope: !445)
!445 = distinct !DILexicalBlock(scope: !376, file: !2, line: 284, column: 10)
!446 = !DILocation(line: 285, column: 9, scope: !445)
!447 = !DILocation(line: 290, column: 3, scope: !371)
!448 = !DILocation(line: 298, column: 18, scope: !371)
!449 = !{i64 6294, i64 6396}
!450 = !DILocation(line: 300, column: 2, scope: !372)
!451 = !DILocation(line: 300, column: 2, scope: !371)
!452 = !DILocation(line: 275, column: 23, scope: !372)
!453 = !DILocation(line: 275, column: 2, scope: !372)
!454 = distinct !{!454, !409, !455, !456, !116}
!455 = !DILocation(line: 300, column: 2, scope: !373)
!456 = !{!"llvm.loop.mustprogress"}
!457 = !DILocation(line: 303, column: 12, scope: !458)
!458 = distinct !DILexicalBlock(scope: !280, file: !2, line: 303, column: 6)
!459 = !DILocation(line: 303, column: 20, scope: !458)
!460 = !DILocation(line: 303, column: 17, scope: !458)
!461 = !DILocation(line: 303, column: 6, scope: !280)
!462 = !DILocation(line: 304, column: 16, scope: !458)
!463 = !DILocation(line: 304, column: 18, scope: !458)
!464 = !DILocation(line: 304, column: 14, scope: !458)
!465 = !DILocation(line: 304, column: 3, scope: !458)
!466 = !DILocation(line: 305, column: 12, scope: !467)
!467 = distinct !DILexicalBlock(scope: !280, file: !2, line: 305, column: 6)
!468 = !DILocation(line: 305, column: 20, scope: !467)
!469 = !DILocation(line: 305, column: 17, scope: !467)
!470 = !DILocation(line: 305, column: 6, scope: !280)
!471 = !DILocation(line: 306, column: 16, scope: !467)
!472 = !DILocation(line: 306, column: 18, scope: !467)
!473 = !DILocation(line: 306, column: 14, scope: !467)
!474 = !DILocation(line: 306, column: 3, scope: !467)
!475 = !DILocation(line: 308, column: 2, scope: !280)
!476 = !DILocation(line: 309, column: 7, scope: !280)
!477 = !DILocation(line: 309, column: 10, scope: !280)
!478 = !DILocation(line: 310, column: 18, scope: !280)
!479 = !DILocation(line: 310, column: 12, scope: !280)
!480 = !DILocation(line: 310, column: 7, scope: !280)
!481 = !DILocation(line: 310, column: 10, scope: !280)
!482 = !DILocation(line: 311, column: 18, scope: !280)
!483 = !DILocation(line: 311, column: 12, scope: !280)
!484 = !DILocation(line: 311, column: 7, scope: !280)
!485 = !DILocation(line: 311, column: 10, scope: !280)
!486 = !DILocation(line: 312, column: 2, scope: !280)
!487 = !DILocation(line: 314, column: 2, scope: !280)
!488 = !DILocation(line: 315, column: 1, scope: !280)
!489 = distinct !DISubprogram(name: "store_cursor_position", scope: !2, file: !2, line: 22, type: !82, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !490)
!490 = !{!491, !492}
!491 = !DILocalVariable(name: "ireg", scope: !489, file: !2, line: 24, type: !289)
!492 = !DILocalVariable(name: "oreg", scope: !489, file: !2, line: 24, type: !289)
!493 = !DILocation(line: 24, column: 2, scope: !489)
!494 = !DILocation(line: 24, column: 18, scope: !489)
!495 = !DILocation(line: 24, column: 24, scope: !489)
!496 = !DILocation(line: 26, column: 2, scope: !489)
!497 = !DILocation(line: 27, column: 7, scope: !489)
!498 = !DILocation(line: 27, column: 10, scope: !489)
!499 = !DILocation(line: 28, column: 2, scope: !489)
!500 = !DILocation(line: 30, column: 40, scope: !489)
!501 = !DILocation(line: 30, column: 33, scope: !489)
!502 = !DILocation(line: 31, column: 40, scope: !489)
!503 = !DILocation(line: 31, column: 33, scope: !489)
!504 = !DILocation(line: 33, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !489, file: !2, line: 33, column: 6)
!506 = !DILocation(line: 33, column: 6, scope: !505)
!507 = !DILocation(line: 33, column: 14, scope: !505)
!508 = !DILocation(line: 33, column: 6, scope: !489)
!509 = !DILocation(line: 34, column: 33, scope: !505)
!510 = !DILocation(line: 34, column: 3, scope: !505)
!511 = !DILocation(line: 36, column: 12, scope: !512)
!512 = distinct !DILexicalBlock(scope: !489, file: !2, line: 36, column: 6)
!513 = !DILocation(line: 36, column: 7, scope: !512)
!514 = !DILocation(line: 36, column: 15, scope: !512)
!515 = !DILocation(line: 36, column: 31, scope: !512)
!516 = !DILocation(line: 36, column: 26, scope: !512)
!517 = !DILocation(line: 36, column: 34, scope: !512)
!518 = !DILocation(line: 36, column: 23, scope: !512)
!519 = !DILocation(line: 36, column: 6, scope: !489)
!520 = !DILocation(line: 37, column: 33, scope: !512)
!521 = !DILocation(line: 37, column: 3, scope: !512)
!522 = !DILocation(line: 38, column: 1, scope: !489)
!523 = distinct !DISubprogram(name: "store_video_mode", scope: !2, file: !2, line: 40, type: !82, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !524)
!524 = !{!525, !526}
!525 = !DILocalVariable(name: "ireg", scope: !523, file: !2, line: 42, type: !289)
!526 = !DILocalVariable(name: "oreg", scope: !523, file: !2, line: 42, type: !289)
!527 = !DILocation(line: 42, column: 2, scope: !523)
!528 = !DILocation(line: 42, column: 18, scope: !523)
!529 = !DILocation(line: 42, column: 24, scope: !523)
!530 = !DILocation(line: 46, column: 2, scope: !523)
!531 = !DILocation(line: 47, column: 7, scope: !523)
!532 = !DILocation(line: 47, column: 10, scope: !523)
!533 = !DILocation(line: 48, column: 2, scope: !523)
!534 = !DILocation(line: 51, column: 49, scope: !523)
!535 = !DILocation(line: 51, column: 44, scope: !523)
!536 = !DILocation(line: 51, column: 52, scope: !523)
!537 = !DILocation(line: 51, column: 42, scope: !523)
!538 = !DILocation(line: 52, column: 49, scope: !523)
!539 = !DILocation(line: 52, column: 44, scope: !523)
!540 = !DILocation(line: 52, column: 42, scope: !523)
!541 = !DILocation(line: 53, column: 1, scope: !523)
!542 = distinct !DISubprogram(name: "set_fs", scope: !216, file: !216, line: 54, type: !543, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !13}
!545 = !{!546}
!546 = !DILocalVariable(name: "seg", arg: 1, scope: !542, file: !216, line: 54, type: !13)
!547 = !DILocation(line: 54, column: 31, scope: !542)
!548 = !DILocation(line: 56, column: 40, scope: !542)
!549 = !DILocation(line: 56, column: 2, scope: !542)
!550 = !{i64 119748}
!551 = !DILocation(line: 57, column: 1, scope: !542)
!552 = distinct !DISubprogram(name: "rdfs16", scope: !216, file: !216, line: 85, type: !553, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!13, !286}
!555 = !{!556, !557, !558, !560}
!556 = !DILocalVariable(name: "addr", arg: 1, scope: !552, file: !216, line: 85, type: !286)
!557 = !DILocalVariable(name: "ptr", scope: !552, file: !216, line: 87, type: !12)
!558 = !DILocalVariable(name: "__ptr", scope: !559, file: !216, line: 87, type: !18)
!559 = distinct !DILexicalBlock(scope: !552, file: !216, line: 87, column: 20)
!560 = !DILocalVariable(name: "v", scope: !552, file: !216, line: 88, type: !13)
!561 = !DILocation(line: 85, column: 33, scope: !552)
!562 = !DILocation(line: 87, column: 2, scope: !552)
!563 = !DILocation(line: 87, column: 7, scope: !552)
!564 = !DILocation(line: 87, column: 20, scope: !559)
!565 = !DILocation(line: 87, column: 20, scope: !552)
!566 = !DILocation(line: 88, column: 2, scope: !552)
!567 = !DILocation(line: 88, column: 6, scope: !552)
!568 = !DILocation(line: 89, column: 52, scope: !552)
!569 = !DILocation(line: 89, column: 2, scope: !552)
!570 = !{i64 120359}
!571 = !DILocation(line: 90, column: 9, scope: !552)
!572 = !DILocation(line: 91, column: 1, scope: !552)
!573 = !DILocation(line: 90, column: 2, scope: !552)
!574 = distinct !DISubprogram(name: "rdfs8", scope: !216, file: !216, line: 78, type: !575, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !577)
!575 = !DISubroutineType(types: !576)
!576 = !{!20, !286}
!577 = !{!578, !579, !580, !582}
!578 = !DILocalVariable(name: "addr", arg: 1, scope: !574, file: !216, line: 78, type: !286)
!579 = !DILocalVariable(name: "ptr", scope: !574, file: !216, line: 80, type: !19)
!580 = !DILocalVariable(name: "__ptr", scope: !581, file: !216, line: 80, type: !18)
!581 = distinct !DILexicalBlock(scope: !574, file: !216, line: 80, column: 18)
!582 = !DILocalVariable(name: "v", scope: !574, file: !216, line: 81, type: !20)
!583 = !DILocation(line: 78, column: 31, scope: !574)
!584 = !DILocation(line: 80, column: 2, scope: !574)
!585 = !DILocation(line: 80, column: 6, scope: !574)
!586 = !DILocation(line: 80, column: 18, scope: !581)
!587 = !DILocation(line: 80, column: 18, scope: !574)
!588 = !DILocation(line: 81, column: 2, scope: !574)
!589 = !DILocation(line: 81, column: 5, scope: !574)
!590 = !DILocation(line: 82, column: 52, scope: !574)
!591 = !DILocation(line: 82, column: 2, scope: !574)
!592 = !{i64 120197}
!593 = !DILocation(line: 83, column: 9, scope: !574)
!594 = !DILocation(line: 84, column: 1, scope: !574)
!595 = !DILocation(line: 83, column: 2, scope: !574)
!596 = !DISubprogram(name: "initregs", scope: !216, file: !216, line: 302, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!600 = !DISubprogram(name: "intcall", scope: !216, file: !216, line: 246, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !20, !603, !599}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!605 = distinct !DISubprogram(name: "heap_free", scope: !216, file: !216, line: 187, type: !606, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !610)
!606 = !DISubroutineType(types: !607)
!607 = !{!608, !25}
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !26, line: 35, baseType: !609)
!609 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!610 = !{!611}
!611 = !DILocalVariable(name: "n", arg: 1, scope: !605, file: !216, line: 187, type: !25)
!612 = !DILocation(line: 187, column: 37, scope: !605)
!613 = !DILocation(line: 189, column: 15, scope: !605)
!614 = !DILocation(line: 189, column: 24, scope: !605)
!615 = !DILocation(line: 189, column: 23, scope: !605)
!616 = !DILocation(line: 189, column: 38, scope: !605)
!617 = !DILocation(line: 189, column: 30, scope: !605)
!618 = !DILocation(line: 189, column: 2, scope: !605)
!619 = distinct !DISubprogram(name: "__get_heap", scope: !216, file: !216, line: 175, type: !620, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{!24, !25, !25, !25}
!622 = !{!623, !624, !625, !626}
!623 = !DILocalVariable(name: "s", arg: 1, scope: !619, file: !216, line: 175, type: !25)
!624 = !DILocalVariable(name: "a", arg: 2, scope: !619, file: !216, line: 175, type: !25)
!625 = !DILocalVariable(name: "n", arg: 3, scope: !619, file: !216, line: 175, type: !25)
!626 = !DILocalVariable(name: "tmp", scope: !619, file: !216, line: 177, type: !24)
!627 = !DILocation(line: 175, column: 39, scope: !619)
!628 = !DILocation(line: 175, column: 49, scope: !619)
!629 = !DILocation(line: 175, column: 59, scope: !619)
!630 = !DILocation(line: 177, column: 2, scope: !619)
!631 = !DILocation(line: 177, column: 8, scope: !619)
!632 = !DILocation(line: 179, column: 27, scope: !619)
!633 = !DILocation(line: 179, column: 19, scope: !619)
!634 = !DILocation(line: 179, column: 33, scope: !619)
!635 = !DILocation(line: 179, column: 34, scope: !619)
!636 = !DILocation(line: 179, column: 31, scope: !619)
!637 = !DILocation(line: 179, column: 43, scope: !619)
!638 = !DILocation(line: 179, column: 44, scope: !619)
!639 = !DILocation(line: 179, column: 41, scope: !619)
!640 = !DILocation(line: 179, column: 39, scope: !619)
!641 = !DILocation(line: 179, column: 9, scope: !619)
!642 = !DILocation(line: 179, column: 7, scope: !619)
!643 = !DILocation(line: 180, column: 8, scope: !619)
!644 = !DILocation(line: 180, column: 6, scope: !619)
!645 = !DILocation(line: 181, column: 10, scope: !619)
!646 = !DILocation(line: 181, column: 12, scope: !619)
!647 = !DILocation(line: 181, column: 11, scope: !619)
!648 = !DILocation(line: 181, column: 7, scope: !619)
!649 = !DILocation(line: 182, column: 9, scope: !619)
!650 = !DILocation(line: 183, column: 1, scope: !619)
!651 = !DILocation(line: 182, column: 2, scope: !619)
!652 = !DISubprogram(name: "copy_from_fs", scope: !216, file: !216, line: 195, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!653 = !DISubroutineType(types: !654)
!654 = !{!11, !11, !286, !25}
!655 = !DISubprogram(name: "puts", scope: !216, file: !216, line: 314, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !277}
!658 = !DISubprogram(name: "kbd_flush", scope: !216, file: !216, line: 317, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubprogram(name: "getchar_timeout", scope: !216, file: !216, line: 318, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!660 = !DISubroutineType(types: !661)
!661 = !{!23}
!662 = !DISubprogram(name: "putchar", scope: !216, file: !216, line: 315, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!663 = distinct !DISubprogram(name: "display_menu", scope: !2, file: !2, line: 137, type: !82, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !664)
!664 = !{!665, !689, !690, !691, !692, !693, !694, !695, !705, !706}
!665 = !DILocalVariable(name: "card", scope: !663, file: !2, line: 139, type: !666)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 32)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "card_info", file: !668, line: 70, size: 224, elements: !669)
!668 = !DIFile(filename: "arch/x86/boot/video.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e17e471001fcbd7daaae50249ab4298")
!669 = !{!670, !671, !682, !684, !685, !686, !687, !688}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "card_name", scope: !667, file: !668, line: 71, baseType: !277, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !667, file: !668, line: 72, baseType: !672, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 32)
!673 = !DISubroutineType(types: !674)
!674 = !{!23, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 32)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_info", file: !668, line: 64, size: 64, elements: !677)
!677 = !{!678, !679, !680, !681}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !676, file: !668, line: 65, baseType: !13, size: 16)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !676, file: !668, line: 66, baseType: !13, size: 16, offset: 16)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !676, file: !668, line: 66, baseType: !13, size: 16, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !676, file: !668, line: 67, baseType: !13, size: 16, offset: 48)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !667, file: !668, line: 73, baseType: !683, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !667, file: !668, line: 74, baseType: !675, size: 32, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nmodes", scope: !667, file: !668, line: 75, baseType: !23, size: 32, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe", scope: !667, file: !668, line: 76, baseType: !23, size: 32, offset: 160)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_first", scope: !667, file: !668, line: 77, baseType: !13, size: 16, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "xmode_n", scope: !667, file: !668, line: 78, baseType: !13, size: 16, offset: 208)
!689 = !DILocalVariable(name: "mi", scope: !663, file: !2, line: 140, type: !675)
!690 = !DILocalVariable(name: "ch", scope: !663, file: !2, line: 141, type: !4)
!691 = !DILocalVariable(name: "i", scope: !663, file: !2, line: 142, type: !23)
!692 = !DILocalVariable(name: "nmodes", scope: !663, file: !2, line: 143, type: !23)
!693 = !DILocalVariable(name: "modes_per_line", scope: !663, file: !2, line: 144, type: !23)
!694 = !DILocalVariable(name: "col", scope: !663, file: !2, line: 145, type: !23)
!695 = !DILocalVariable(name: "resbuf", scope: !696, file: !2, line: 164, type: !702)
!696 = distinct !DILexicalBlock(scope: !697, file: !2, line: 163, column: 44)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 163, column: 3)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 163, column: 3)
!699 = distinct !DILexicalBlock(scope: !700, file: !2, line: 161, column: 59)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 161, column: 2)
!701 = distinct !DILexicalBlock(scope: !663, file: !2, line: 161, column: 2)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !703)
!703 = !{!704}
!704 = !DISubrange(count: 32)
!705 = !DILocalVariable(name: "visible", scope: !696, file: !2, line: 165, type: !23)
!706 = !DILocalVariable(name: "mode_id", scope: !696, file: !2, line: 166, type: !13)
!707 = !DILocation(line: 139, column: 2, scope: !663)
!708 = !DILocation(line: 139, column: 20, scope: !663)
!709 = !DILocation(line: 140, column: 2, scope: !663)
!710 = !DILocation(line: 140, column: 20, scope: !663)
!711 = !DILocation(line: 141, column: 2, scope: !663)
!712 = !DILocation(line: 141, column: 7, scope: !663)
!713 = !DILocation(line: 142, column: 2, scope: !663)
!714 = !DILocation(line: 142, column: 6, scope: !663)
!715 = !DILocation(line: 143, column: 2, scope: !663)
!716 = !DILocation(line: 143, column: 6, scope: !663)
!717 = !DILocation(line: 144, column: 2, scope: !663)
!718 = !DILocation(line: 144, column: 6, scope: !663)
!719 = !DILocation(line: 145, column: 2, scope: !663)
!720 = !DILocation(line: 145, column: 6, scope: !663)
!721 = !DILocation(line: 147, column: 9, scope: !663)
!722 = !DILocation(line: 148, column: 12, scope: !723)
!723 = distinct !DILexicalBlock(scope: !663, file: !2, line: 148, column: 2)
!724 = !DILocation(line: 148, column: 7, scope: !723)
!725 = !DILocation(line: 148, column: 27, scope: !726)
!726 = distinct !DILexicalBlock(scope: !723, file: !2, line: 148, column: 2)
!727 = !DILocation(line: 148, column: 32, scope: !726)
!728 = !DILocation(line: 148, column: 2, scope: !723)
!729 = !DILocation(line: 149, column: 13, scope: !726)
!730 = !DILocation(line: 149, column: 19, scope: !726)
!731 = !DILocation(line: 149, column: 10, scope: !726)
!732 = !DILocation(line: 149, column: 3, scope: !726)
!733 = !DILocation(line: 148, column: 55, scope: !726)
!734 = !DILocation(line: 148, column: 2, scope: !726)
!735 = distinct !{!735, !728, !736, !456, !116}
!736 = !DILocation(line: 149, column: 19, scope: !723)
!737 = !DILocation(line: 151, column: 17, scope: !663)
!738 = !DILocation(line: 152, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !663, file: !2, line: 152, column: 6)
!740 = !DILocation(line: 152, column: 13, scope: !739)
!741 = !DILocation(line: 152, column: 6, scope: !663)
!742 = !DILocation(line: 153, column: 18, scope: !739)
!743 = !DILocation(line: 153, column: 3, scope: !739)
!744 = !DILocation(line: 155, column: 11, scope: !745)
!745 = distinct !DILexicalBlock(scope: !663, file: !2, line: 155, column: 2)
!746 = !DILocation(line: 155, column: 7, scope: !745)
!747 = !DILocation(line: 155, column: 16, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !2, line: 155, column: 2)
!749 = !DILocation(line: 155, column: 22, scope: !748)
!750 = !DILocation(line: 155, column: 20, scope: !748)
!751 = !DILocation(line: 155, column: 2, scope: !745)
!752 = !DILocation(line: 156, column: 3, scope: !748)
!753 = !DILocation(line: 155, column: 41, scope: !748)
!754 = !DILocation(line: 155, column: 2, scope: !748)
!755 = distinct !{!755, !751, !756, !456, !116}
!756 = !DILocation(line: 156, column: 35, scope: !745)
!757 = !DILocation(line: 157, column: 2, scope: !663)
!758 = !DILocation(line: 159, column: 6, scope: !663)
!759 = !DILocation(line: 160, column: 5, scope: !663)
!760 = !DILocation(line: 161, column: 12, scope: !701)
!761 = !DILocation(line: 161, column: 7, scope: !701)
!762 = !DILocation(line: 161, column: 27, scope: !700)
!763 = !DILocation(line: 161, column: 32, scope: !700)
!764 = !DILocation(line: 161, column: 2, scope: !701)
!765 = !DILocation(line: 162, column: 8, scope: !699)
!766 = !DILocation(line: 162, column: 14, scope: !699)
!767 = !DILocation(line: 162, column: 6, scope: !699)
!768 = !DILocation(line: 163, column: 10, scope: !698)
!769 = !DILocation(line: 163, column: 8, scope: !698)
!770 = !DILocation(line: 163, column: 15, scope: !697)
!771 = !DILocation(line: 163, column: 19, scope: !697)
!772 = !DILocation(line: 163, column: 25, scope: !697)
!773 = !DILocation(line: 163, column: 17, scope: !697)
!774 = !DILocation(line: 163, column: 3, scope: !698)
!775 = !DILocation(line: 164, column: 4, scope: !696)
!776 = !DILocation(line: 164, column: 9, scope: !696)
!777 = !DILocation(line: 165, column: 4, scope: !696)
!778 = !DILocation(line: 165, column: 8, scope: !696)
!779 = !DILocation(line: 165, column: 18, scope: !696)
!780 = !DILocation(line: 165, column: 22, scope: !696)
!781 = !DILocation(line: 165, column: 24, scope: !696)
!782 = !DILocation(line: 165, column: 27, scope: !696)
!783 = !DILocation(line: 165, column: 31, scope: !696)
!784 = !DILocation(line: 0, scope: !696)
!785 = !DILocation(line: 166, column: 4, scope: !696)
!786 = !DILocation(line: 166, column: 8, scope: !696)
!787 = !DILocation(line: 166, column: 18, scope: !696)
!788 = !DILocation(line: 166, column: 22, scope: !696)
!789 = !DILocation(line: 166, column: 29, scope: !696)
!790 = !DILocation(line: 166, column: 33, scope: !696)
!791 = !DILocation(line: 167, column: 6, scope: !696)
!792 = !DILocation(line: 167, column: 10, scope: !696)
!793 = !DILocation(line: 167, column: 12, scope: !696)
!794 = !DILocation(line: 167, column: 18, scope: !696)
!795 = !DILocation(line: 167, column: 22, scope: !696)
!796 = !DILocation(line: 167, column: 17, scope: !696)
!797 = !DILocation(line: 169, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !696, file: !2, line: 169, column: 8)
!799 = !DILocation(line: 169, column: 8, scope: !696)
!800 = !DILocation(line: 170, column: 5, scope: !798)
!801 = !DILocation(line: 172, column: 8, scope: !802)
!802 = distinct !DILexicalBlock(scope: !696, file: !2, line: 172, column: 8)
!803 = !DILocation(line: 172, column: 12, scope: !802)
!804 = !DILocation(line: 172, column: 8, scope: !696)
!805 = !DILocation(line: 173, column: 13, scope: !802)
!806 = !DILocation(line: 173, column: 30, scope: !802)
!807 = !DILocation(line: 173, column: 34, scope: !802)
!808 = !DILocation(line: 173, column: 37, scope: !802)
!809 = !DILocation(line: 173, column: 41, scope: !802)
!810 = !DILocation(line: 173, column: 5, scope: !802)
!811 = !DILocation(line: 175, column: 13, scope: !802)
!812 = !DILocation(line: 175, column: 27, scope: !802)
!813 = !DILocation(line: 175, column: 31, scope: !802)
!814 = !DILocation(line: 175, column: 5, scope: !802)
!815 = !DILocation(line: 178, column: 11, scope: !696)
!816 = !DILocation(line: 178, column: 15, scope: !696)
!817 = !DILocation(line: 178, column: 24, scope: !696)
!818 = !DILocation(line: 178, column: 28, scope: !696)
!819 = !DILocation(line: 178, column: 31, scope: !696)
!820 = !DILocation(line: 178, column: 39, scope: !696)
!821 = !DILocation(line: 178, column: 45, scope: !696)
!822 = !DILocation(line: 177, column: 4, scope: !696)
!823 = !DILocation(line: 179, column: 7, scope: !696)
!824 = !DILocation(line: 180, column: 8, scope: !825)
!825 = distinct !DILexicalBlock(scope: !696, file: !2, line: 180, column: 8)
!826 = !DILocation(line: 180, column: 15, scope: !825)
!827 = !DILocation(line: 180, column: 12, scope: !825)
!828 = !DILocation(line: 180, column: 8, scope: !696)
!829 = !DILocation(line: 181, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !2, line: 180, column: 31)
!831 = !DILocation(line: 182, column: 9, scope: !830)
!832 = !DILocation(line: 183, column: 4, scope: !830)
!833 = !DILocation(line: 185, column: 8, scope: !834)
!834 = distinct !DILexicalBlock(scope: !696, file: !2, line: 185, column: 8)
!835 = !DILocation(line: 185, column: 11, scope: !834)
!836 = !DILocation(line: 185, column: 8, scope: !696)
!837 = !DILocation(line: 186, column: 8, scope: !834)
!838 = !DILocation(line: 186, column: 5, scope: !834)
!839 = !DILocation(line: 187, column: 13, scope: !840)
!840 = distinct !DILexicalBlock(scope: !834, file: !2, line: 187, column: 13)
!841 = !DILocation(line: 187, column: 16, scope: !840)
!842 = !DILocation(line: 187, column: 23, scope: !840)
!843 = !DILocation(line: 187, column: 26, scope: !840)
!844 = !DILocation(line: 187, column: 29, scope: !840)
!845 = !DILocation(line: 187, column: 13, scope: !834)
!846 = !DILocation(line: 188, column: 8, scope: !840)
!847 = !DILocation(line: 188, column: 5, scope: !840)
!848 = !DILocation(line: 190, column: 7, scope: !840)
!849 = !DILocation(line: 191, column: 3, scope: !697)
!850 = !DILocation(line: 191, column: 3, scope: !696)
!851 = !DILocation(line: 163, column: 34, scope: !697)
!852 = !DILocation(line: 163, column: 40, scope: !697)
!853 = !DILocation(line: 163, column: 3, scope: !697)
!854 = distinct !{!854, !774, !855, !456, !116}
!855 = !DILocation(line: 191, column: 3, scope: !698)
!856 = !DILocation(line: 192, column: 2, scope: !699)
!857 = !DILocation(line: 161, column: 55, scope: !700)
!858 = !DILocation(line: 161, column: 2, scope: !700)
!859 = distinct !{!859, !764, !860, !456, !116}
!860 = !DILocation(line: 192, column: 2, scope: !701)
!861 = !DILocation(line: 193, column: 6, scope: !862)
!862 = distinct !DILexicalBlock(scope: !663, file: !2, line: 193, column: 6)
!863 = !DILocation(line: 193, column: 6, scope: !663)
!864 = !DILocation(line: 194, column: 3, scope: !862)
!865 = !DILocation(line: 195, column: 1, scope: !663)
!866 = distinct !DISubprogram(name: "get_entry", scope: !2, file: !2, line: 98, type: !220, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !867)
!867 = !{!868, !869, !870, !871, !872}
!868 = !DILocalVariable(name: "entry_buf", scope: !866, file: !2, line: 100, type: !72)
!869 = !DILocalVariable(name: "i", scope: !866, file: !2, line: 101, type: !23)
!870 = !DILocalVariable(name: "len", scope: !866, file: !2, line: 101, type: !23)
!871 = !DILocalVariable(name: "key", scope: !866, file: !2, line: 102, type: !23)
!872 = !DILocalVariable(name: "v", scope: !866, file: !2, line: 103, type: !29)
!873 = !DILocation(line: 100, column: 2, scope: !866)
!874 = !DILocation(line: 100, column: 7, scope: !866)
!875 = !DILocation(line: 101, column: 2, scope: !866)
!876 = !DILocation(line: 101, column: 6, scope: !866)
!877 = !DILocation(line: 101, column: 9, scope: !866)
!878 = !DILocation(line: 102, column: 2, scope: !866)
!879 = !DILocation(line: 102, column: 6, scope: !866)
!880 = !DILocation(line: 103, column: 2, scope: !866)
!881 = !DILocation(line: 103, column: 15, scope: !866)
!882 = !DILocation(line: 105, column: 2, scope: !866)
!883 = !DILocation(line: 106, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !866, file: !2, line: 105, column: 5)
!885 = !DILocation(line: 106, column: 7, scope: !884)
!886 = !DILocation(line: 108, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !2, line: 108, column: 7)
!888 = !DILocation(line: 108, column: 11, scope: !887)
!889 = !DILocation(line: 108, column: 7, scope: !884)
!890 = !DILocation(line: 109, column: 8, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !2, line: 109, column: 8)
!892 = distinct !DILexicalBlock(scope: !887, file: !2, line: 108, column: 20)
!893 = !DILocation(line: 109, column: 12, scope: !891)
!894 = !DILocation(line: 109, column: 8, scope: !892)
!895 = !DILocation(line: 110, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !891, file: !2, line: 109, column: 17)
!897 = !DILocation(line: 111, column: 8, scope: !896)
!898 = !DILocation(line: 112, column: 4, scope: !896)
!899 = !DILocation(line: 113, column: 3, scope: !892)
!900 = !DILocation(line: 113, column: 15, scope: !901)
!901 = distinct !DILexicalBlock(scope: !887, file: !2, line: 113, column: 14)
!902 = !DILocation(line: 113, column: 19, scope: !901)
!903 = !DILocation(line: 113, column: 26, scope: !901)
!904 = !DILocation(line: 113, column: 29, scope: !901)
!905 = !DILocation(line: 113, column: 33, scope: !901)
!906 = !DILocation(line: 113, column: 41, scope: !901)
!907 = !DILocation(line: 114, column: 8, scope: !901)
!908 = !DILocation(line: 114, column: 12, scope: !901)
!909 = !DILocation(line: 114, column: 19, scope: !901)
!910 = !DILocation(line: 114, column: 22, scope: !901)
!911 = !DILocation(line: 114, column: 26, scope: !901)
!912 = !DILocation(line: 114, column: 34, scope: !901)
!913 = !DILocation(line: 115, column: 8, scope: !901)
!914 = !DILocation(line: 115, column: 12, scope: !901)
!915 = !DILocation(line: 115, column: 19, scope: !901)
!916 = !DILocation(line: 115, column: 22, scope: !901)
!917 = !DILocation(line: 115, column: 26, scope: !901)
!918 = !DILocation(line: 113, column: 14, scope: !887)
!919 = !DILocation(line: 116, column: 8, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 116, column: 8)
!921 = distinct !DILexicalBlock(scope: !901, file: !2, line: 115, column: 35)
!922 = !DILocation(line: 116, column: 12, scope: !920)
!923 = !DILocation(line: 116, column: 8, scope: !921)
!924 = !DILocation(line: 117, column: 24, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !2, line: 116, column: 33)
!926 = !DILocation(line: 117, column: 18, scope: !925)
!927 = !DILocation(line: 117, column: 5, scope: !925)
!928 = !DILocation(line: 117, column: 22, scope: !925)
!929 = !DILocation(line: 118, column: 13, scope: !925)
!930 = !DILocation(line: 118, column: 5, scope: !925)
!931 = !DILocation(line: 119, column: 4, scope: !925)
!932 = !DILocation(line: 120, column: 3, scope: !921)
!933 = !DILocation(line: 121, column: 2, scope: !884)
!934 = !DILocation(line: 121, column: 11, scope: !866)
!935 = !DILocation(line: 121, column: 15, scope: !866)
!936 = distinct !{!936, !882, !937, !456, !116}
!937 = !DILocation(line: 121, column: 22, scope: !866)
!938 = !DILocation(line: 122, column: 2, scope: !866)
!939 = !DILocation(line: 124, column: 6, scope: !940)
!940 = distinct !DILexicalBlock(scope: !866, file: !2, line: 124, column: 6)
!941 = !DILocation(line: 124, column: 10, scope: !940)
!942 = !DILocation(line: 124, column: 6, scope: !866)
!943 = !DILocation(line: 125, column: 3, scope: !940)
!944 = !DILocation(line: 127, column: 4, scope: !866)
!945 = !DILocation(line: 128, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !866, file: !2, line: 128, column: 2)
!947 = !DILocation(line: 128, column: 7, scope: !946)
!948 = !DILocation(line: 128, column: 14, scope: !949)
!949 = distinct !DILexicalBlock(scope: !946, file: !2, line: 128, column: 2)
!950 = !DILocation(line: 128, column: 18, scope: !949)
!951 = !DILocation(line: 128, column: 16, scope: !949)
!952 = !DILocation(line: 128, column: 2, scope: !946)
!953 = !DILocation(line: 129, column: 5, scope: !954)
!954 = distinct !DILexicalBlock(scope: !949, file: !2, line: 128, column: 28)
!955 = !DILocation(line: 130, column: 19, scope: !954)
!956 = !DILocation(line: 130, column: 9, scope: !954)
!957 = !DILocation(line: 130, column: 22, scope: !954)
!958 = !DILocation(line: 130, column: 7, scope: !954)
!959 = !DILocation(line: 131, column: 9, scope: !954)
!960 = !DILocation(line: 131, column: 13, scope: !954)
!961 = !DILocation(line: 131, column: 8, scope: !954)
!962 = !DILocation(line: 131, column: 22, scope: !954)
!963 = !DILocation(line: 131, column: 25, scope: !954)
!964 = !DILocation(line: 131, column: 29, scope: !954)
!965 = !DILocation(line: 131, column: 35, scope: !954)
!966 = !DILocation(line: 131, column: 38, scope: !954)
!967 = !DILocation(line: 131, column: 5, scope: !954)
!968 = !DILocation(line: 132, column: 2, scope: !954)
!969 = !DILocation(line: 128, column: 24, scope: !949)
!970 = !DILocation(line: 128, column: 2, scope: !949)
!971 = distinct !{!971, !952, !972, !456, !116}
!972 = !DILocation(line: 132, column: 2, scope: !946)
!973 = !DILocation(line: 134, column: 9, scope: !866)
!974 = !DILocation(line: 134, column: 2, scope: !866)
!975 = !DILocation(line: 135, column: 1, scope: !866)
!976 = !DISubprogram(name: "sprintf", scope: !216, file: !216, line: 297, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DISubroutineType(types: !978)
!978 = !{!23, !24, !277, null}
!979 = !DISubprogram(name: "getchar", scope: !216, file: !216, line: 316, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DISubprogram(name: "copy_to_fs", scope: !216, file: !216, line: 194, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{null, !286, !11, !25}
