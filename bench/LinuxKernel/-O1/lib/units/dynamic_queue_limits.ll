; ModuleID = 'lib/dynamic_queue_limits.c'
source_filename = "lib/dynamic_queue_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dql_completed: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dql_completed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dql_reset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dql_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_dql_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad dql_init ; .previous"

%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [20 x i8] }

@.str = private unnamed_addr constant [27 x i8] c"lib/dynamic_queue_limits.c\00", align 1, !dbg !0
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@__UNIQUE_ID___addressable_dql_completed23 = internal global ptr @dql_completed, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_dql_reset24 = internal global ptr @dql_reset, section ".discard.addressable", align 8, !dbg !19
@__UNIQUE_ID___addressable_dql_init25 = internal global ptr @dql_init, section ".discard.addressable", align 8, !dbg !21
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_dql_completed23, ptr @__UNIQUE_ID___addressable_dql_reset24, ptr @__UNIQUE_ID___addressable_dql_init25], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dql_completed(ptr noundef %dql, i32 noundef %count) #0 align 16 !dbg !32 {
entry:
  %dql.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %inprogress = alloca i32, align 4
  %prev_inprogress = alloca i32, align 4
  %limit = alloca i32, align 4
  %ovlimit = alloca i32, align 4
  %completed = alloca i32, align 4
  %num_queued = alloca i32, align 4
  %all_prev_completed = alloca i8, align 1
  %tmp = alloca i32, align 4
  %slack = alloca i32, align 4
  %slack_last_objs = alloca i32, align 4
  %__UNIQUE_ID___x18 = alloca i32, align 4
  %__UNIQUE_ID___y19 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %tmp127 = alloca i32, align 4
  %__UNIQUE_ID___val20 = alloca i32, align 4
  %__UNIQUE_ID___lo21 = alloca i32, align 4
  %__UNIQUE_ID___hi22 = alloca i32, align 4
  %tmp128 = alloca i32, align 4
  store ptr %dql, ptr %dql.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dql.addr, metadata !54, metadata !DIExpression()), !dbg !79
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !55, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %inprogress) #4, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %inprogress, metadata !56, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %prev_inprogress) #4, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %prev_inprogress, metadata !57, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 4, ptr %limit) #4, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !58, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 4, ptr %ovlimit) #4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %ovlimit, metadata !59, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 4, ptr %completed) #4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %completed, metadata !60, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_queued) #4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %num_queued, metadata !61, metadata !DIExpression()), !dbg !88
  call void @llvm.lifetime.start.p0(i64 1, ptr %all_prev_completed) #4, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %all_prev_completed, metadata !62, metadata !DIExpression()), !dbg !90
  br label %do.body, !dbg !91

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !93

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !93

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %dql.addr, align 8, !dbg !91
  %num_queued1 = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 0, !dbg !91
  %1 = load volatile i32, ptr %num_queued1, align 64, !dbg !91
  store i32 %1, ptr %tmp, align 4, !dbg !93
  %2 = load i32, ptr %tmp, align 4, !dbg !91
  store i32 %2, ptr %num_queued, align 4, !dbg !95
  br label %do.body2, !dbg !96

do.body2:                                         ; preds = %do.end
  %3 = load i32, ptr %count.addr, align 4, !dbg !97
  %4 = load i32, ptr %num_queued, align 4, !dbg !97
  %5 = load ptr, ptr %dql.addr, align 8, !dbg !97
  %num_completed = getelementptr inbounds %struct.dql, ptr %5, i32 0, i32 5, !dbg !97
  %6 = load i32, ptr %num_completed, align 4, !dbg !97
  %sub = sub i32 %4, %6, !dbg !97
  %cmp = icmp ugt i32 %3, %sub, !dbg !97
  %lnot = xor i1 %cmp, true, !dbg !97
  %lnot3 = xor i1 %lnot, true, !dbg !97
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !97
  %conv = sext i32 %lnot.ext to i64, !dbg !97
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !97
  %tobool = icmp ne i64 %expval, 0, !dbg !97
  br i1 %tobool, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %do.body2
  br label %do.body4, !dbg !97

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !101

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !103

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !103

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !101

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 27, i32 0, i64 12) #4, !dbg !105, !srcloc !107
  br label %do.cond9, !dbg !105

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !105

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !101

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !101

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !101

if.end:                                           ; preds = %do.end12, %do.body2
  br label %do.cond13, !dbg !100

do.cond13:                                        ; preds = %if.end
  br label %do.end14, !dbg !100

do.end14:                                         ; preds = %do.cond13
  %7 = load ptr, ptr %dql.addr, align 8, !dbg !108
  %num_completed15 = getelementptr inbounds %struct.dql, ptr %7, i32 0, i32 5, !dbg !109
  %8 = load i32, ptr %num_completed15, align 4, !dbg !109
  %9 = load i32, ptr %count.addr, align 4, !dbg !110
  %add = add i32 %8, %9, !dbg !111
  store i32 %add, ptr %completed, align 4, !dbg !112
  %10 = load ptr, ptr %dql.addr, align 8, !dbg !113
  %limit16 = getelementptr inbounds %struct.dql, ptr %10, i32 0, i32 4, !dbg !114
  %11 = load i32, ptr %limit16, align 64, !dbg !114
  store i32 %11, ptr %limit, align 4, !dbg !115
  %12 = load i32, ptr %num_queued, align 4, !dbg !116
  %13 = load ptr, ptr %dql.addr, align 8, !dbg !116
  %num_completed17 = getelementptr inbounds %struct.dql, ptr %13, i32 0, i32 5, !dbg !116
  %14 = load i32, ptr %num_completed17, align 4, !dbg !116
  %sub18 = sub i32 %12, %14, !dbg !116
  %15 = load i32, ptr %limit, align 4, !dbg !116
  %sub19 = sub i32 %sub18, %15, !dbg !116
  %cmp20 = icmp sgt i32 %sub19, 0, !dbg !116
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %do.end14
  %16 = load i32, ptr %num_queued, align 4, !dbg !116
  %17 = load ptr, ptr %dql.addr, align 8, !dbg !116
  %num_completed22 = getelementptr inbounds %struct.dql, ptr %17, i32 0, i32 5, !dbg !116
  %18 = load i32, ptr %num_completed22, align 4, !dbg !116
  %sub23 = sub i32 %16, %18, !dbg !116
  %19 = load i32, ptr %limit, align 4, !dbg !116
  %sub24 = sub i32 %sub23, %19, !dbg !116
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %do.end14
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub24, %cond.true ], [ 0, %cond.false ], !dbg !116
  store i32 %cond, ptr %ovlimit, align 4, !dbg !117
  %20 = load i32, ptr %num_queued, align 4, !dbg !118
  %21 = load i32, ptr %completed, align 4, !dbg !119
  %sub25 = sub i32 %20, %21, !dbg !120
  store i32 %sub25, ptr %inprogress, align 4, !dbg !121
  %22 = load ptr, ptr %dql.addr, align 8, !dbg !122
  %prev_num_queued = getelementptr inbounds %struct.dql, ptr %22, i32 0, i32 7, !dbg !123
  %23 = load i32, ptr %prev_num_queued, align 4, !dbg !123
  %24 = load ptr, ptr %dql.addr, align 8, !dbg !124
  %num_completed26 = getelementptr inbounds %struct.dql, ptr %24, i32 0, i32 5, !dbg !125
  %25 = load i32, ptr %num_completed26, align 4, !dbg !125
  %sub27 = sub i32 %23, %25, !dbg !126
  store i32 %sub27, ptr %prev_inprogress, align 4, !dbg !127
  %26 = load i32, ptr %completed, align 4, !dbg !128
  %27 = load ptr, ptr %dql.addr, align 8, !dbg !128
  %prev_num_queued28 = getelementptr inbounds %struct.dql, ptr %27, i32 0, i32 7, !dbg !128
  %28 = load i32, ptr %prev_num_queued28, align 4, !dbg !128
  %sub29 = sub i32 %26, %28, !dbg !128
  %cmp30 = icmp sge i32 %sub29, 0, !dbg !128
  %frombool = zext i1 %cmp30 to i8, !dbg !129
  store i8 %frombool, ptr %all_prev_completed, align 1, !dbg !129
  %29 = load i32, ptr %ovlimit, align 4, !dbg !130
  %tobool32 = icmp ne i32 %29, 0, !dbg !130
  br i1 %tobool32, label %land.lhs.true, label %lor.lhs.false, !dbg !131

land.lhs.true:                                    ; preds = %cond.end
  %30 = load i32, ptr %inprogress, align 4, !dbg !132
  %tobool33 = icmp ne i32 %30, 0, !dbg !132
  br i1 %tobool33, label %lor.lhs.false, label %if.then38, !dbg !133

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  %31 = load ptr, ptr %dql.addr, align 8, !dbg !134
  %prev_ovlimit = getelementptr inbounds %struct.dql, ptr %31, i32 0, i32 6, !dbg !135
  %32 = load i32, ptr %prev_ovlimit, align 8, !dbg !135
  %tobool34 = icmp ne i32 %32, 0, !dbg !134
  br i1 %tobool34, label %land.lhs.true35, label %if.else, !dbg !136

land.lhs.true35:                                  ; preds = %lor.lhs.false
  %33 = load i8, ptr %all_prev_completed, align 1, !dbg !137, !range !138, !noundef !139
  %tobool36 = trunc i8 %33 to i1, !dbg !137
  br i1 %tobool36, label %if.then38, label %if.else, !dbg !140

if.then38:                                        ; preds = %land.lhs.true35, %land.lhs.true
  %34 = load i32, ptr %completed, align 4, !dbg !141
  %35 = load ptr, ptr %dql.addr, align 8, !dbg !141
  %prev_num_queued39 = getelementptr inbounds %struct.dql, ptr %35, i32 0, i32 7, !dbg !141
  %36 = load i32, ptr %prev_num_queued39, align 4, !dbg !141
  %sub40 = sub i32 %34, %36, !dbg !141
  %cmp41 = icmp sgt i32 %sub40, 0, !dbg !141
  br i1 %cmp41, label %cond.true43, label %cond.false46, !dbg !141

cond.true43:                                      ; preds = %if.then38
  %37 = load i32, ptr %completed, align 4, !dbg !141
  %38 = load ptr, ptr %dql.addr, align 8, !dbg !141
  %prev_num_queued44 = getelementptr inbounds %struct.dql, ptr %38, i32 0, i32 7, !dbg !141
  %39 = load i32, ptr %prev_num_queued44, align 4, !dbg !141
  %sub45 = sub i32 %37, %39, !dbg !141
  br label %cond.end47, !dbg !141

cond.false46:                                     ; preds = %if.then38
  br label %cond.end47, !dbg !141

cond.end47:                                       ; preds = %cond.false46, %cond.true43
  %cond48 = phi i32 [ %sub45, %cond.true43 ], [ 0, %cond.false46 ], !dbg !141
  %40 = load ptr, ptr %dql.addr, align 8, !dbg !143
  %prev_ovlimit49 = getelementptr inbounds %struct.dql, ptr %40, i32 0, i32 6, !dbg !144
  %41 = load i32, ptr %prev_ovlimit49, align 8, !dbg !144
  %add50 = add i32 %cond48, %41, !dbg !145
  %42 = load i32, ptr %limit, align 4, !dbg !146
  %add51 = add i32 %42, %add50, !dbg !146
  store i32 %add51, ptr %limit, align 4, !dbg !146
  %43 = load volatile i64, ptr @jiffies, align 64, !dbg !147
  %44 = load ptr, ptr %dql.addr, align 8, !dbg !148
  %slack_start_time = getelementptr inbounds %struct.dql, ptr %44, i32 0, i32 10, !dbg !149
  store i64 %43, ptr %slack_start_time, align 8, !dbg !150
  %45 = load ptr, ptr %dql.addr, align 8, !dbg !151
  %lowest_slack = getelementptr inbounds %struct.dql, ptr %45, i32 0, i32 9, !dbg !152
  store i32 -1, ptr %lowest_slack, align 4, !dbg !153
  br label %if.end126, !dbg !154

if.else:                                          ; preds = %land.lhs.true35, %lor.lhs.false
  %46 = load i32, ptr %inprogress, align 4, !dbg !155
  %tobool52 = icmp ne i32 %46, 0, !dbg !155
  br i1 %tobool52, label %land.lhs.true53, label %if.end125, !dbg !156

land.lhs.true53:                                  ; preds = %if.else
  %47 = load i32, ptr %prev_inprogress, align 4, !dbg !157
  %tobool54 = icmp ne i32 %47, 0, !dbg !157
  br i1 %tobool54, label %land.lhs.true55, label %if.end125, !dbg !158

land.lhs.true55:                                  ; preds = %land.lhs.true53
  %48 = load i8, ptr %all_prev_completed, align 1, !dbg !159, !range !138, !noundef !139
  %tobool56 = trunc i8 %48 to i1, !dbg !159
  br i1 %tobool56, label %if.end125, label %if.then57, !dbg !160

if.then57:                                        ; preds = %land.lhs.true55
  call void @llvm.lifetime.start.p0(i64 4, ptr %slack) #4, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %slack, metadata !66, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %slack_last_objs) #4, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %slack_last_objs, metadata !70, metadata !DIExpression()), !dbg !163
  %49 = load i32, ptr %limit, align 4, !dbg !164
  %50 = load ptr, ptr %dql.addr, align 8, !dbg !164
  %prev_ovlimit58 = getelementptr inbounds %struct.dql, ptr %50, i32 0, i32 6, !dbg !164
  %51 = load i32, ptr %prev_ovlimit58, align 8, !dbg !164
  %add59 = add i32 %49, %51, !dbg !164
  %52 = load i32, ptr %completed, align 4, !dbg !164
  %53 = load ptr, ptr %dql.addr, align 8, !dbg !164
  %num_completed60 = getelementptr inbounds %struct.dql, ptr %53, i32 0, i32 5, !dbg !164
  %54 = load i32, ptr %num_completed60, align 4, !dbg !164
  %sub61 = sub i32 %52, %54, !dbg !164
  %mul = mul i32 2, %sub61, !dbg !164
  %sub62 = sub i32 %add59, %mul, !dbg !164
  %cmp63 = icmp sgt i32 %sub62, 0, !dbg !164
  br i1 %cmp63, label %cond.true65, label %cond.false72, !dbg !164

cond.true65:                                      ; preds = %if.then57
  %55 = load i32, ptr %limit, align 4, !dbg !164
  %56 = load ptr, ptr %dql.addr, align 8, !dbg !164
  %prev_ovlimit66 = getelementptr inbounds %struct.dql, ptr %56, i32 0, i32 6, !dbg !164
  %57 = load i32, ptr %prev_ovlimit66, align 8, !dbg !164
  %add67 = add i32 %55, %57, !dbg !164
  %58 = load i32, ptr %completed, align 4, !dbg !164
  %59 = load ptr, ptr %dql.addr, align 8, !dbg !164
  %num_completed68 = getelementptr inbounds %struct.dql, ptr %59, i32 0, i32 5, !dbg !164
  %60 = load i32, ptr %num_completed68, align 4, !dbg !164
  %sub69 = sub i32 %58, %60, !dbg !164
  %mul70 = mul i32 2, %sub69, !dbg !164
  %sub71 = sub i32 %add67, %mul70, !dbg !164
  br label %cond.end73, !dbg !164

cond.false72:                                     ; preds = %if.then57
  br label %cond.end73, !dbg !164

cond.end73:                                       ; preds = %cond.false72, %cond.true65
  %cond74 = phi i32 [ %sub71, %cond.true65 ], [ 0, %cond.false72 ], !dbg !164
  store i32 %cond74, ptr %slack, align 4, !dbg !165
  %61 = load ptr, ptr %dql.addr, align 8, !dbg !166
  %prev_ovlimit75 = getelementptr inbounds %struct.dql, ptr %61, i32 0, i32 6, !dbg !167
  %62 = load i32, ptr %prev_ovlimit75, align 8, !dbg !167
  %tobool76 = icmp ne i32 %62, 0, !dbg !166
  br i1 %tobool76, label %cond.true77, label %cond.false89, !dbg !166

cond.true77:                                      ; preds = %cond.end73
  %63 = load ptr, ptr %dql.addr, align 8, !dbg !168
  %prev_last_obj_cnt = getelementptr inbounds %struct.dql, ptr %63, i32 0, i32 8, !dbg !168
  %64 = load i32, ptr %prev_last_obj_cnt, align 16, !dbg !168
  %65 = load ptr, ptr %dql.addr, align 8, !dbg !168
  %prev_ovlimit78 = getelementptr inbounds %struct.dql, ptr %65, i32 0, i32 6, !dbg !168
  %66 = load i32, ptr %prev_ovlimit78, align 8, !dbg !168
  %sub79 = sub i32 %64, %66, !dbg !168
  %cmp80 = icmp sgt i32 %sub79, 0, !dbg !168
  br i1 %cmp80, label %cond.true82, label %cond.false86, !dbg !168

cond.true82:                                      ; preds = %cond.true77
  %67 = load ptr, ptr %dql.addr, align 8, !dbg !168
  %prev_last_obj_cnt83 = getelementptr inbounds %struct.dql, ptr %67, i32 0, i32 8, !dbg !168
  %68 = load i32, ptr %prev_last_obj_cnt83, align 16, !dbg !168
  %69 = load ptr, ptr %dql.addr, align 8, !dbg !168
  %prev_ovlimit84 = getelementptr inbounds %struct.dql, ptr %69, i32 0, i32 6, !dbg !168
  %70 = load i32, ptr %prev_ovlimit84, align 8, !dbg !168
  %sub85 = sub i32 %68, %70, !dbg !168
  br label %cond.end87, !dbg !168

cond.false86:                                     ; preds = %cond.true77
  br label %cond.end87, !dbg !168

cond.end87:                                       ; preds = %cond.false86, %cond.true82
  %cond88 = phi i32 [ %sub85, %cond.true82 ], [ 0, %cond.false86 ], !dbg !168
  br label %cond.end90, !dbg !166

cond.false89:                                     ; preds = %cond.end73
  br label %cond.end90, !dbg !166

cond.end90:                                       ; preds = %cond.false89, %cond.end87
  %cond91 = phi i32 [ %cond88, %cond.end87 ], [ 0, %cond.false89 ], !dbg !166
  store i32 %cond91, ptr %slack_last_objs, align 4, !dbg !169
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x18) #4, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x18, metadata !71, metadata !DIExpression()), !dbg !170
  %71 = load i32, ptr %slack, align 4, !dbg !170
  store i32 %71, ptr %__UNIQUE_ID___x18, align 4, !dbg !170
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y19) #4, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y19, metadata !73, metadata !DIExpression()), !dbg !170
  %72 = load i32, ptr %slack_last_objs, align 4, !dbg !170
  store i32 %72, ptr %__UNIQUE_ID___y19, align 4, !dbg !170
  %73 = load i32, ptr %__UNIQUE_ID___x18, align 4, !dbg !170
  %74 = load i32, ptr %__UNIQUE_ID___y19, align 4, !dbg !170
  %cmp93 = icmp ugt i32 %73, %74, !dbg !170
  br i1 %cmp93, label %cond.true95, label %cond.false96, !dbg !170

cond.true95:                                      ; preds = %cond.end90
  %75 = load i32, ptr %__UNIQUE_ID___x18, align 4, !dbg !170
  br label %cond.end97, !dbg !170

cond.false96:                                     ; preds = %cond.end90
  %76 = load i32, ptr %__UNIQUE_ID___y19, align 4, !dbg !170
  br label %cond.end97, !dbg !170

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi i32 [ %75, %cond.true95 ], [ %76, %cond.false96 ], !dbg !170
  store i32 %cond98, ptr %tmp92, align 4, !dbg !170
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y19) #4, !dbg !171
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x18) #4, !dbg !171
  %77 = load i32, ptr %tmp92, align 4, !dbg !170
  store i32 %77, ptr %slack, align 4, !dbg !172
  %78 = load i32, ptr %slack, align 4, !dbg !173
  %79 = load ptr, ptr %dql.addr, align 8, !dbg !175
  %lowest_slack99 = getelementptr inbounds %struct.dql, ptr %79, i32 0, i32 9, !dbg !176
  %80 = load i32, ptr %lowest_slack99, align 4, !dbg !176
  %cmp100 = icmp ult i32 %78, %80, !dbg !177
  br i1 %cmp100, label %if.then102, label %if.end104, !dbg !178

if.then102:                                       ; preds = %cond.end97
  %81 = load i32, ptr %slack, align 4, !dbg !179
  %82 = load ptr, ptr %dql.addr, align 8, !dbg !180
  %lowest_slack103 = getelementptr inbounds %struct.dql, ptr %82, i32 0, i32 9, !dbg !181
  store i32 %81, ptr %lowest_slack103, align 4, !dbg !182
  br label %if.end104, !dbg !180

if.end104:                                        ; preds = %if.then102, %cond.end97
  %83 = load ptr, ptr %dql.addr, align 8, !dbg !183
  %slack_start_time105 = getelementptr inbounds %struct.dql, ptr %83, i32 0, i32 10, !dbg !183
  %84 = load i64, ptr %slack_start_time105, align 8, !dbg !183
  %85 = load ptr, ptr %dql.addr, align 8, !dbg !183
  %slack_hold_time = getelementptr inbounds %struct.dql, ptr %85, i32 0, i32 13, !dbg !183
  %86 = load i32, ptr %slack_hold_time, align 8, !dbg !183
  %conv106 = zext i32 %86 to i64, !dbg !183
  %add107 = add i64 %84, %conv106, !dbg !183
  %87 = load volatile i64, ptr @jiffies, align 64, !dbg !183
  %sub108 = sub i64 %add107, %87, !dbg !183
  %cmp109 = icmp slt i64 %sub108, 0, !dbg !183
  br i1 %cmp109, label %if.then111, label %if.end124, !dbg !185

if.then111:                                       ; preds = %if.end104
  %88 = load i32, ptr %limit, align 4, !dbg !186
  %89 = load ptr, ptr %dql.addr, align 8, !dbg !186
  %lowest_slack112 = getelementptr inbounds %struct.dql, ptr %89, i32 0, i32 9, !dbg !186
  %90 = load i32, ptr %lowest_slack112, align 4, !dbg !186
  %sub113 = sub i32 %88, %90, !dbg !186
  %cmp114 = icmp sgt i32 %sub113, 0, !dbg !186
  br i1 %cmp114, label %cond.true116, label %cond.false119, !dbg !186

cond.true116:                                     ; preds = %if.then111
  %91 = load i32, ptr %limit, align 4, !dbg !186
  %92 = load ptr, ptr %dql.addr, align 8, !dbg !186
  %lowest_slack117 = getelementptr inbounds %struct.dql, ptr %92, i32 0, i32 9, !dbg !186
  %93 = load i32, ptr %lowest_slack117, align 4, !dbg !186
  %sub118 = sub i32 %91, %93, !dbg !186
  br label %cond.end120, !dbg !186

cond.false119:                                    ; preds = %if.then111
  br label %cond.end120, !dbg !186

cond.end120:                                      ; preds = %cond.false119, %cond.true116
  %cond121 = phi i32 [ %sub118, %cond.true116 ], [ 0, %cond.false119 ], !dbg !186
  store i32 %cond121, ptr %limit, align 4, !dbg !188
  %94 = load volatile i64, ptr @jiffies, align 64, !dbg !189
  %95 = load ptr, ptr %dql.addr, align 8, !dbg !190
  %slack_start_time122 = getelementptr inbounds %struct.dql, ptr %95, i32 0, i32 10, !dbg !191
  store i64 %94, ptr %slack_start_time122, align 8, !dbg !192
  %96 = load ptr, ptr %dql.addr, align 8, !dbg !193
  %lowest_slack123 = getelementptr inbounds %struct.dql, ptr %96, i32 0, i32 9, !dbg !194
  store i32 -1, ptr %lowest_slack123, align 4, !dbg !195
  br label %if.end124, !dbg !196

if.end124:                                        ; preds = %cond.end120, %if.end104
  call void @llvm.lifetime.end.p0(i64 4, ptr %slack_last_objs) #4, !dbg !197
  call void @llvm.lifetime.end.p0(i64 4, ptr %slack) #4, !dbg !197
  br label %if.end125, !dbg !198

if.end125:                                        ; preds = %if.end124, %land.lhs.true55, %land.lhs.true53, %if.else
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %cond.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___val20) #4, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val20, metadata !74, metadata !DIExpression()), !dbg !199
  %97 = load i32, ptr %limit, align 4, !dbg !199
  store i32 %97, ptr %__UNIQUE_ID___val20, align 4, !dbg !199
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___lo21) #4, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo21, metadata !77, metadata !DIExpression()), !dbg !199
  %98 = load ptr, ptr %dql.addr, align 8, !dbg !199
  %min_limit = getelementptr inbounds %struct.dql, ptr %98, i32 0, i32 12, !dbg !199
  %99 = load i32, ptr %min_limit, align 4, !dbg !199
  store i32 %99, ptr %__UNIQUE_ID___lo21, align 4, !dbg !199
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___hi22) #4, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi22, metadata !78, metadata !DIExpression()), !dbg !199
  %100 = load ptr, ptr %dql.addr, align 8, !dbg !199
  %max_limit = getelementptr inbounds %struct.dql, ptr %100, i32 0, i32 11, !dbg !199
  %101 = load i32, ptr %max_limit, align 32, !dbg !199
  store i32 %101, ptr %__UNIQUE_ID___hi22, align 4, !dbg !199
  %102 = load i32, ptr %__UNIQUE_ID___val20, align 4, !dbg !199
  %103 = load i32, ptr %__UNIQUE_ID___hi22, align 4, !dbg !199
  %cmp129 = icmp uge i32 %102, %103, !dbg !199
  br i1 %cmp129, label %cond.true131, label %cond.false132, !dbg !199

cond.true131:                                     ; preds = %if.end126
  %104 = load i32, ptr %__UNIQUE_ID___hi22, align 4, !dbg !199
  br label %cond.end139, !dbg !199

cond.false132:                                    ; preds = %if.end126
  %105 = load i32, ptr %__UNIQUE_ID___val20, align 4, !dbg !199
  %106 = load i32, ptr %__UNIQUE_ID___lo21, align 4, !dbg !199
  %cmp133 = icmp ule i32 %105, %106, !dbg !199
  br i1 %cmp133, label %cond.true135, label %cond.false136, !dbg !199

cond.true135:                                     ; preds = %cond.false132
  %107 = load i32, ptr %__UNIQUE_ID___lo21, align 4, !dbg !199
  br label %cond.end137, !dbg !199

cond.false136:                                    ; preds = %cond.false132
  %108 = load i32, ptr %__UNIQUE_ID___val20, align 4, !dbg !199
  br label %cond.end137, !dbg !199

cond.end137:                                      ; preds = %cond.false136, %cond.true135
  %cond138 = phi i32 [ %107, %cond.true135 ], [ %108, %cond.false136 ], !dbg !199
  br label %cond.end139, !dbg !199

cond.end139:                                      ; preds = %cond.end137, %cond.true131
  %cond140 = phi i32 [ %104, %cond.true131 ], [ %cond138, %cond.end137 ], !dbg !199
  store i32 %cond140, ptr %tmp128, align 4, !dbg !199
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___hi22) #4, !dbg !200
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___lo21) #4, !dbg !200
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___val20) #4, !dbg !200
  %109 = load i32, ptr %tmp128, align 4, !dbg !199
  store i32 %109, ptr %tmp127, align 4, !dbg !201
  %110 = load i32, ptr %tmp127, align 4, !dbg !200
  store i32 %110, ptr %limit, align 4, !dbg !202
  %111 = load i32, ptr %limit, align 4, !dbg !203
  %112 = load ptr, ptr %dql.addr, align 8, !dbg !205
  %limit141 = getelementptr inbounds %struct.dql, ptr %112, i32 0, i32 4, !dbg !206
  %113 = load i32, ptr %limit141, align 64, !dbg !206
  %cmp142 = icmp ne i32 %111, %113, !dbg !207
  br i1 %cmp142, label %if.then144, label %if.end146, !dbg !208

if.then144:                                       ; preds = %cond.end139
  %114 = load i32, ptr %limit, align 4, !dbg !209
  %115 = load ptr, ptr %dql.addr, align 8, !dbg !211
  %limit145 = getelementptr inbounds %struct.dql, ptr %115, i32 0, i32 4, !dbg !212
  store i32 %114, ptr %limit145, align 64, !dbg !213
  store i32 0, ptr %ovlimit, align 4, !dbg !214
  br label %if.end146, !dbg !215

if.end146:                                        ; preds = %if.then144, %cond.end139
  %116 = load i32, ptr %limit, align 4, !dbg !216
  %117 = load i32, ptr %completed, align 4, !dbg !217
  %add147 = add i32 %116, %117, !dbg !218
  %118 = load ptr, ptr %dql.addr, align 8, !dbg !219
  %adj_limit = getelementptr inbounds %struct.dql, ptr %118, i32 0, i32 1, !dbg !220
  store i32 %add147, ptr %adj_limit, align 4, !dbg !221
  %119 = load i32, ptr %ovlimit, align 4, !dbg !222
  %120 = load ptr, ptr %dql.addr, align 8, !dbg !223
  %prev_ovlimit148 = getelementptr inbounds %struct.dql, ptr %120, i32 0, i32 6, !dbg !224
  store i32 %119, ptr %prev_ovlimit148, align 8, !dbg !225
  %121 = load ptr, ptr %dql.addr, align 8, !dbg !226
  %last_obj_cnt = getelementptr inbounds %struct.dql, ptr %121, i32 0, i32 2, !dbg !227
  %122 = load i32, ptr %last_obj_cnt, align 8, !dbg !227
  %123 = load ptr, ptr %dql.addr, align 8, !dbg !228
  %prev_last_obj_cnt149 = getelementptr inbounds %struct.dql, ptr %123, i32 0, i32 8, !dbg !229
  store i32 %122, ptr %prev_last_obj_cnt149, align 16, !dbg !230
  %124 = load i32, ptr %completed, align 4, !dbg !231
  %125 = load ptr, ptr %dql.addr, align 8, !dbg !232
  %num_completed150 = getelementptr inbounds %struct.dql, ptr %125, i32 0, i32 5, !dbg !233
  store i32 %124, ptr %num_completed150, align 4, !dbg !234
  %126 = load i32, ptr %num_queued, align 4, !dbg !235
  %127 = load ptr, ptr %dql.addr, align 8, !dbg !236
  %prev_num_queued151 = getelementptr inbounds %struct.dql, ptr %127, i32 0, i32 7, !dbg !237
  store i32 %126, ptr %prev_num_queued151, align 4, !dbg !238
  call void @llvm.lifetime.end.p0(i64 1, ptr %all_prev_completed) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_queued) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %completed) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %ovlimit) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %limit) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %prev_inprogress) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %inprogress) #4, !dbg !239
  ret void, !dbg !239
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dql_reset(ptr noundef %dql) #0 align 16 !dbg !240 {
entry:
  %dql.addr = alloca ptr, align 8
  store ptr %dql, ptr %dql.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dql.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load ptr, ptr %dql.addr, align 8, !dbg !246
  %limit = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 4, !dbg !247
  store i32 0, ptr %limit, align 64, !dbg !248
  %1 = load ptr, ptr %dql.addr, align 8, !dbg !249
  %num_queued = getelementptr inbounds %struct.dql, ptr %1, i32 0, i32 0, !dbg !250
  store i32 0, ptr %num_queued, align 64, !dbg !251
  %2 = load ptr, ptr %dql.addr, align 8, !dbg !252
  %num_completed = getelementptr inbounds %struct.dql, ptr %2, i32 0, i32 5, !dbg !253
  store i32 0, ptr %num_completed, align 4, !dbg !254
  %3 = load ptr, ptr %dql.addr, align 8, !dbg !255
  %last_obj_cnt = getelementptr inbounds %struct.dql, ptr %3, i32 0, i32 2, !dbg !256
  store i32 0, ptr %last_obj_cnt, align 8, !dbg !257
  %4 = load ptr, ptr %dql.addr, align 8, !dbg !258
  %prev_num_queued = getelementptr inbounds %struct.dql, ptr %4, i32 0, i32 7, !dbg !259
  store i32 0, ptr %prev_num_queued, align 4, !dbg !260
  %5 = load ptr, ptr %dql.addr, align 8, !dbg !261
  %prev_last_obj_cnt = getelementptr inbounds %struct.dql, ptr %5, i32 0, i32 8, !dbg !262
  store i32 0, ptr %prev_last_obj_cnt, align 16, !dbg !263
  %6 = load ptr, ptr %dql.addr, align 8, !dbg !264
  %prev_ovlimit = getelementptr inbounds %struct.dql, ptr %6, i32 0, i32 6, !dbg !265
  store i32 0, ptr %prev_ovlimit, align 8, !dbg !266
  %7 = load ptr, ptr %dql.addr, align 8, !dbg !267
  %lowest_slack = getelementptr inbounds %struct.dql, ptr %7, i32 0, i32 9, !dbg !268
  store i32 -1, ptr %lowest_slack, align 4, !dbg !269
  %8 = load volatile i64, ptr @jiffies, align 64, !dbg !270
  %9 = load ptr, ptr %dql.addr, align 8, !dbg !271
  %slack_start_time = getelementptr inbounds %struct.dql, ptr %9, i32 0, i32 10, !dbg !272
  store i64 %8, ptr %slack_start_time, align 8, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dql_init(ptr noundef %dql, i32 noundef %hold_time) #0 align 16 !dbg !275 {
entry:
  %dql.addr = alloca ptr, align 8
  %hold_time.addr = alloca i32, align 4
  store ptr %dql, ptr %dql.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dql.addr, metadata !277, metadata !DIExpression()), !dbg !279
  store i32 %hold_time, ptr %hold_time.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hold_time.addr, metadata !278, metadata !DIExpression()), !dbg !280
  %0 = load ptr, ptr %dql.addr, align 8, !dbg !281
  %max_limit = getelementptr inbounds %struct.dql, ptr %0, i32 0, i32 11, !dbg !282
  store i32 1879048192, ptr %max_limit, align 32, !dbg !283
  %1 = load ptr, ptr %dql.addr, align 8, !dbg !284
  %min_limit = getelementptr inbounds %struct.dql, ptr %1, i32 0, i32 12, !dbg !285
  store i32 0, ptr %min_limit, align 4, !dbg !286
  %2 = load i32, ptr %hold_time.addr, align 4, !dbg !287
  %3 = load ptr, ptr %dql.addr, align 8, !dbg !288
  %slack_hold_time = getelementptr inbounds %struct.dql, ptr %3, i32 0, i32 13, !dbg !289
  store i32 %2, ptr %slack_hold_time, align 8, !dbg !290
  %4 = load ptr, ptr %dql.addr, align 8, !dbg !291
  call void @dql_reset(ptr noundef %4) #5, !dbg !292
  ret void, !dbg !293
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/dynamic_queue_limits.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49654018d6e885b5528d2cbd0a6fd8cb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 27)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dql_completed23", scope: !9, file: !2, line: 114, type: !17, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.dynamic_queue_limits.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/dynamic_queue_limits\22 -D KBUILD_BASENAME=\22dynamic_queue_limits\22 -D KBUILD_MODNAME=\22dynamic_queue_limits\22 -D __KBUILD_MODNAME=kmod_dynamic_queue_limits -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/dynamic_queue_limits.ll lib/dynamic_queue_limits.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !18, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !15, !16, !17}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0, !7, !19, !21}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dql_reset24", scope: !9, file: !2, line: 129, type: !17, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_dql_init25", scope: !9, file: !2, line: 138, type: !17, isLocal: true, isDefinition: true)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "dql_completed", scope: !2, file: !2, line: 18, type: !33, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !53)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !14}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dql", file: !37, line: 43, size: 1024, elements: !38)
!37 = !DIFile(filename: "./include/linux/dynamic_queue_limits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "461e58e1feeeb49fa0b486c6d6850e08")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "num_queued", scope: !36, file: !37, line: 45, baseType: !14, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "adj_limit", scope: !36, file: !37, line: 46, baseType: !14, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "last_obj_cnt", scope: !36, file: !37, line: 47, baseType: !14, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !36, file: !37, line: 51, baseType: !14, size: 32, align: 512, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "num_completed", scope: !36, file: !37, line: 52, baseType: !14, size: 32, offset: 544)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "prev_ovlimit", scope: !36, file: !37, line: 54, baseType: !14, size: 32, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "prev_num_queued", scope: !36, file: !37, line: 55, baseType: !14, size: 32, offset: 608)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "prev_last_obj_cnt", scope: !36, file: !37, line: 56, baseType: !14, size: 32, offset: 640)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_slack", scope: !36, file: !37, line: 58, baseType: !14, size: 32, offset: 672)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "slack_start_time", scope: !36, file: !37, line: 59, baseType: !49, size: 64, offset: 704)
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "max_limit", scope: !36, file: !37, line: 62, baseType: !14, size: 32, offset: 768)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "min_limit", scope: !36, file: !37, line: 63, baseType: !14, size: 32, offset: 800)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "slack_hold_time", scope: !36, file: !37, line: 64, baseType: !14, size: 32, offset: 832)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !66, !70, !71, !73, !74, !77, !78}
!54 = !DILocalVariable(name: "dql", arg: 1, scope: !32, file: !2, line: 18, type: !35)
!55 = !DILocalVariable(name: "count", arg: 2, scope: !32, file: !2, line: 18, type: !14)
!56 = !DILocalVariable(name: "inprogress", scope: !32, file: !2, line: 20, type: !14)
!57 = !DILocalVariable(name: "prev_inprogress", scope: !32, file: !2, line: 20, type: !14)
!58 = !DILocalVariable(name: "limit", scope: !32, file: !2, line: 20, type: !14)
!59 = !DILocalVariable(name: "ovlimit", scope: !32, file: !2, line: 21, type: !14)
!60 = !DILocalVariable(name: "completed", scope: !32, file: !2, line: 21, type: !14)
!61 = !DILocalVariable(name: "num_queued", scope: !32, file: !2, line: 21, type: !14)
!62 = !DILocalVariable(name: "all_prev_completed", scope: !32, file: !2, line: 22, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 35, baseType: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!65 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DILocalVariable(name: "slack", scope: !67, file: !2, line: 69, type: !14)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 57, column: 67)
!68 = distinct !DILexicalBlock(scope: !69, file: !2, line: 57, column: 13)
!69 = distinct !DILexicalBlock(scope: !32, file: !2, line: 36, column: 6)
!70 = !DILocalVariable(name: "slack_last_objs", scope: !67, file: !2, line: 69, type: !14)
!71 = !DILocalVariable(name: "__UNIQUE_ID___x18", scope: !72, file: !2, line: 87, type: !14)
!72 = distinct !DILexicalBlock(scope: !67, file: !2, line: 87, column: 11)
!73 = !DILocalVariable(name: "__UNIQUE_ID___y19", scope: !72, file: !2, line: 87, type: !14)
!74 = !DILocalVariable(name: "__UNIQUE_ID___val20", scope: !75, file: !2, line: 101, type: !14)
!75 = distinct !DILexicalBlock(scope: !76, file: !2, line: 101, column: 10)
!76 = distinct !DILexicalBlock(scope: !32, file: !2, line: 101, column: 10)
!77 = !DILocalVariable(name: "__UNIQUE_ID___lo21", scope: !75, file: !2, line: 101, type: !14)
!78 = !DILocalVariable(name: "__UNIQUE_ID___hi22", scope: !75, file: !2, line: 101, type: !14)
!79 = !DILocation(line: 18, column: 32, scope: !32)
!80 = !DILocation(line: 18, column: 50, scope: !32)
!81 = !DILocation(line: 20, column: 2, scope: !32)
!82 = !DILocation(line: 20, column: 15, scope: !32)
!83 = !DILocation(line: 20, column: 27, scope: !32)
!84 = !DILocation(line: 20, column: 44, scope: !32)
!85 = !DILocation(line: 21, column: 2, scope: !32)
!86 = !DILocation(line: 21, column: 15, scope: !32)
!87 = !DILocation(line: 21, column: 24, scope: !32)
!88 = !DILocation(line: 21, column: 35, scope: !32)
!89 = !DILocation(line: 22, column: 2, scope: !32)
!90 = !DILocation(line: 22, column: 7, scope: !32)
!91 = !DILocation(line: 24, column: 15, scope: !92)
!92 = distinct !DILexicalBlock(scope: !32, file: !2, line: 24, column: 15)
!93 = !DILocation(line: 24, column: 15, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !2, line: 24, column: 15)
!95 = !DILocation(line: 24, column: 13, scope: !32)
!96 = !DILocation(line: 27, column: 2, scope: !32)
!97 = !DILocation(line: 27, column: 2, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !2, line: 27, column: 2)
!99 = distinct !DILexicalBlock(scope: !32, file: !2, line: 27, column: 2)
!100 = !DILocation(line: 27, column: 2, scope: !99)
!101 = !DILocation(line: 27, column: 2, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !2, line: 27, column: 2)
!103 = !DILocation(line: 27, column: 2, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !2, line: 27, column: 2)
!105 = !DILocation(line: 27, column: 2, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !2, line: 27, column: 2)
!107 = !{i64 2149393772, i64 2149393801, i64 2149393847, i64 2149393905, i64 2149393959, i64 2149394013, i64 2149394068, i64 2149394099}
!108 = !DILocation(line: 29, column: 14, scope: !32)
!109 = !DILocation(line: 29, column: 19, scope: !32)
!110 = !DILocation(line: 29, column: 35, scope: !32)
!111 = !DILocation(line: 29, column: 33, scope: !32)
!112 = !DILocation(line: 29, column: 12, scope: !32)
!113 = !DILocation(line: 30, column: 10, scope: !32)
!114 = !DILocation(line: 30, column: 15, scope: !32)
!115 = !DILocation(line: 30, column: 8, scope: !32)
!116 = !DILocation(line: 31, column: 12, scope: !32)
!117 = !DILocation(line: 31, column: 10, scope: !32)
!118 = !DILocation(line: 32, column: 15, scope: !32)
!119 = !DILocation(line: 32, column: 28, scope: !32)
!120 = !DILocation(line: 32, column: 26, scope: !32)
!121 = !DILocation(line: 32, column: 13, scope: !32)
!122 = !DILocation(line: 33, column: 20, scope: !32)
!123 = !DILocation(line: 33, column: 25, scope: !32)
!124 = !DILocation(line: 33, column: 43, scope: !32)
!125 = !DILocation(line: 33, column: 48, scope: !32)
!126 = !DILocation(line: 33, column: 41, scope: !32)
!127 = !DILocation(line: 33, column: 18, scope: !32)
!128 = !DILocation(line: 34, column: 23, scope: !32)
!129 = !DILocation(line: 34, column: 21, scope: !32)
!130 = !DILocation(line: 36, column: 7, scope: !69)
!131 = !DILocation(line: 36, column: 15, scope: !69)
!132 = !DILocation(line: 36, column: 19, scope: !69)
!133 = !DILocation(line: 36, column: 31, scope: !69)
!134 = !DILocation(line: 37, column: 7, scope: !69)
!135 = !DILocation(line: 37, column: 12, scope: !69)
!136 = !DILocation(line: 37, column: 25, scope: !69)
!137 = !DILocation(line: 37, column: 28, scope: !69)
!138 = !{i8 0, i8 2}
!139 = !{}
!140 = !DILocation(line: 36, column: 6, scope: !32)
!141 = !DILocation(line: 53, column: 12, scope: !142)
!142 = distinct !DILexicalBlock(scope: !69, file: !2, line: 37, column: 49)
!143 = !DILocation(line: 54, column: 8, scope: !142)
!144 = !DILocation(line: 54, column: 13, scope: !142)
!145 = !DILocation(line: 53, column: 53, scope: !142)
!146 = !DILocation(line: 53, column: 9, scope: !142)
!147 = !DILocation(line: 55, column: 27, scope: !142)
!148 = !DILocation(line: 55, column: 3, scope: !142)
!149 = !DILocation(line: 55, column: 8, scope: !142)
!150 = !DILocation(line: 55, column: 25, scope: !142)
!151 = !DILocation(line: 56, column: 3, scope: !142)
!152 = !DILocation(line: 56, column: 8, scope: !142)
!153 = !DILocation(line: 56, column: 21, scope: !142)
!154 = !DILocation(line: 57, column: 2, scope: !142)
!155 = !DILocation(line: 57, column: 13, scope: !68)
!156 = !DILocation(line: 57, column: 24, scope: !68)
!157 = !DILocation(line: 57, column: 27, scope: !68)
!158 = !DILocation(line: 57, column: 43, scope: !68)
!159 = !DILocation(line: 57, column: 47, scope: !68)
!160 = !DILocation(line: 57, column: 13, scope: !69)
!161 = !DILocation(line: 69, column: 3, scope: !67)
!162 = !DILocation(line: 69, column: 16, scope: !67)
!163 = !DILocation(line: 69, column: 23, scope: !67)
!164 = !DILocation(line: 82, column: 11, scope: !67)
!165 = !DILocation(line: 82, column: 9, scope: !67)
!166 = !DILocation(line: 84, column: 21, scope: !67)
!167 = !DILocation(line: 84, column: 26, scope: !67)
!168 = !DILocation(line: 85, column: 7, scope: !67)
!169 = !DILocation(line: 84, column: 19, scope: !67)
!170 = !DILocation(line: 87, column: 11, scope: !72)
!171 = !DILocation(line: 87, column: 11, scope: !67)
!172 = !DILocation(line: 87, column: 9, scope: !67)
!173 = !DILocation(line: 89, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !67, file: !2, line: 89, column: 7)
!175 = !DILocation(line: 89, column: 15, scope: !174)
!176 = !DILocation(line: 89, column: 20, scope: !174)
!177 = !DILocation(line: 89, column: 13, scope: !174)
!178 = !DILocation(line: 89, column: 7, scope: !67)
!179 = !DILocation(line: 90, column: 24, scope: !174)
!180 = !DILocation(line: 90, column: 4, scope: !174)
!181 = !DILocation(line: 90, column: 9, scope: !174)
!182 = !DILocation(line: 90, column: 22, scope: !174)
!183 = !DILocation(line: 92, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !67, file: !2, line: 92, column: 7)
!185 = !DILocation(line: 92, column: 7, scope: !67)
!186 = !DILocation(line: 94, column: 12, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !2, line: 93, column: 58)
!188 = !DILocation(line: 94, column: 10, scope: !187)
!189 = !DILocation(line: 95, column: 28, scope: !187)
!190 = !DILocation(line: 95, column: 4, scope: !187)
!191 = !DILocation(line: 95, column: 9, scope: !187)
!192 = !DILocation(line: 95, column: 26, scope: !187)
!193 = !DILocation(line: 96, column: 4, scope: !187)
!194 = !DILocation(line: 96, column: 9, scope: !187)
!195 = !DILocation(line: 96, column: 22, scope: !187)
!196 = !DILocation(line: 97, column: 3, scope: !187)
!197 = !DILocation(line: 98, column: 2, scope: !68)
!198 = !DILocation(line: 98, column: 2, scope: !67)
!199 = !DILocation(line: 101, column: 10, scope: !75)
!200 = !DILocation(line: 101, column: 10, scope: !76)
!201 = !DILocation(line: 101, column: 10, scope: !32)
!202 = !DILocation(line: 101, column: 8, scope: !32)
!203 = !DILocation(line: 103, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !32, file: !2, line: 103, column: 6)
!205 = !DILocation(line: 103, column: 15, scope: !204)
!206 = !DILocation(line: 103, column: 20, scope: !204)
!207 = !DILocation(line: 103, column: 12, scope: !204)
!208 = !DILocation(line: 103, column: 6, scope: !32)
!209 = !DILocation(line: 104, column: 16, scope: !210)
!210 = distinct !DILexicalBlock(scope: !204, file: !2, line: 103, column: 27)
!211 = !DILocation(line: 104, column: 3, scope: !210)
!212 = !DILocation(line: 104, column: 8, scope: !210)
!213 = !DILocation(line: 104, column: 14, scope: !210)
!214 = !DILocation(line: 105, column: 11, scope: !210)
!215 = !DILocation(line: 106, column: 2, scope: !210)
!216 = !DILocation(line: 108, column: 19, scope: !32)
!217 = !DILocation(line: 108, column: 27, scope: !32)
!218 = !DILocation(line: 108, column: 25, scope: !32)
!219 = !DILocation(line: 108, column: 2, scope: !32)
!220 = !DILocation(line: 108, column: 7, scope: !32)
!221 = !DILocation(line: 108, column: 17, scope: !32)
!222 = !DILocation(line: 109, column: 22, scope: !32)
!223 = !DILocation(line: 109, column: 2, scope: !32)
!224 = !DILocation(line: 109, column: 7, scope: !32)
!225 = !DILocation(line: 109, column: 20, scope: !32)
!226 = !DILocation(line: 110, column: 27, scope: !32)
!227 = !DILocation(line: 110, column: 32, scope: !32)
!228 = !DILocation(line: 110, column: 2, scope: !32)
!229 = !DILocation(line: 110, column: 7, scope: !32)
!230 = !DILocation(line: 110, column: 25, scope: !32)
!231 = !DILocation(line: 111, column: 23, scope: !32)
!232 = !DILocation(line: 111, column: 2, scope: !32)
!233 = !DILocation(line: 111, column: 7, scope: !32)
!234 = !DILocation(line: 111, column: 21, scope: !32)
!235 = !DILocation(line: 112, column: 25, scope: !32)
!236 = !DILocation(line: 112, column: 2, scope: !32)
!237 = !DILocation(line: 112, column: 7, scope: !32)
!238 = !DILocation(line: 112, column: 23, scope: !32)
!239 = !DILocation(line: 113, column: 1, scope: !32)
!240 = distinct !DISubprogram(name: "dql_reset", scope: !2, file: !2, line: 116, type: !241, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !35}
!243 = !{!244}
!244 = !DILocalVariable(name: "dql", arg: 1, scope: !240, file: !2, line: 116, type: !35)
!245 = !DILocation(line: 116, column: 28, scope: !240)
!246 = !DILocation(line: 119, column: 2, scope: !240)
!247 = !DILocation(line: 119, column: 7, scope: !240)
!248 = !DILocation(line: 119, column: 13, scope: !240)
!249 = !DILocation(line: 120, column: 2, scope: !240)
!250 = !DILocation(line: 120, column: 7, scope: !240)
!251 = !DILocation(line: 120, column: 18, scope: !240)
!252 = !DILocation(line: 121, column: 2, scope: !240)
!253 = !DILocation(line: 121, column: 7, scope: !240)
!254 = !DILocation(line: 121, column: 21, scope: !240)
!255 = !DILocation(line: 122, column: 2, scope: !240)
!256 = !DILocation(line: 122, column: 7, scope: !240)
!257 = !DILocation(line: 122, column: 20, scope: !240)
!258 = !DILocation(line: 123, column: 2, scope: !240)
!259 = !DILocation(line: 123, column: 7, scope: !240)
!260 = !DILocation(line: 123, column: 23, scope: !240)
!261 = !DILocation(line: 124, column: 2, scope: !240)
!262 = !DILocation(line: 124, column: 7, scope: !240)
!263 = !DILocation(line: 124, column: 25, scope: !240)
!264 = !DILocation(line: 125, column: 2, scope: !240)
!265 = !DILocation(line: 125, column: 7, scope: !240)
!266 = !DILocation(line: 125, column: 20, scope: !240)
!267 = !DILocation(line: 126, column: 2, scope: !240)
!268 = !DILocation(line: 126, column: 7, scope: !240)
!269 = !DILocation(line: 126, column: 20, scope: !240)
!270 = !DILocation(line: 127, column: 26, scope: !240)
!271 = !DILocation(line: 127, column: 2, scope: !240)
!272 = !DILocation(line: 127, column: 7, scope: !240)
!273 = !DILocation(line: 127, column: 24, scope: !240)
!274 = !DILocation(line: 128, column: 1, scope: !240)
!275 = distinct !DISubprogram(name: "dql_init", scope: !2, file: !2, line: 131, type: !33, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !276)
!276 = !{!277, !278}
!277 = !DILocalVariable(name: "dql", arg: 1, scope: !275, file: !2, line: 131, type: !35)
!278 = !DILocalVariable(name: "hold_time", arg: 2, scope: !275, file: !2, line: 131, type: !14)
!279 = !DILocation(line: 131, column: 27, scope: !275)
!280 = !DILocation(line: 131, column: 45, scope: !275)
!281 = !DILocation(line: 133, column: 2, scope: !275)
!282 = !DILocation(line: 133, column: 7, scope: !275)
!283 = !DILocation(line: 133, column: 17, scope: !275)
!284 = !DILocation(line: 134, column: 2, scope: !275)
!285 = !DILocation(line: 134, column: 7, scope: !275)
!286 = !DILocation(line: 134, column: 17, scope: !275)
!287 = !DILocation(line: 135, column: 25, scope: !275)
!288 = !DILocation(line: 135, column: 2, scope: !275)
!289 = !DILocation(line: 135, column: 7, scope: !275)
!290 = !DILocation(line: 135, column: 23, scope: !275)
!291 = !DILocation(line: 136, column: 12, scope: !275)
!292 = !DILocation(line: 136, column: 2, scope: !275)
!293 = !DILocation(line: 137, column: 1, scope: !275)
