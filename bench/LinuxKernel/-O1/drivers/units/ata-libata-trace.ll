; ModuleID = 'drivers/ata/libata-trace.c'
source_filename = "drivers/ata/libata-trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i64, i32 }
%struct.seq_buf = type { ptr, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"{ \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"BUSY \00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"DRDY \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"DF \00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [5 x i8] c"DSC \00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [5 x i8] c"DRQ \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [6 x i8] c"CORR \00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [7 x i8] c"SENSE \00", align 1, !dbg !28
@.str.8 = private unnamed_addr constant [5 x i8] c"ERR \00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [6 x i8] c"INTR \00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [8 x i8] c"ACTIVE \00", align 1, !dbg !37
@.str.11 = private unnamed_addr constant [3 x i8] c"%x\00", align 1, !dbg !42
@.str.12 = private unnamed_addr constant [12 x i8] c"REVALIDATE \00", align 1, !dbg !44
@.str.13 = private unnamed_addr constant [7 x i8] c"RESET \00", align 1, !dbg !49
@.str.14 = private unnamed_addr constant [11 x i8] c"SOFTRESET \00", align 1, !dbg !51
@.str.15 = private unnamed_addr constant [11 x i8] c"HARDRESET \00", align 1, !dbg !56
@.str.16 = private unnamed_addr constant [13 x i8] c"ENABLE_LINK \00", align 1, !dbg !58
@.str.17 = private unnamed_addr constant [6 x i8] c"PARK \00", align 1, !dbg !63
@.str.18 = private unnamed_addr constant [5 x i8] c"DEV \00", align 1, !dbg !65
@.str.19 = private unnamed_addr constant [5 x i8] c"HSM \00", align 1, !dbg !67
@.str.20 = private unnamed_addr constant [9 x i8] c"TIMEOUT \00", align 1, !dbg !69
@.str.21 = private unnamed_addr constant [7 x i8] c"MEDIA \00", align 1, !dbg !74
@.str.22 = private unnamed_addr constant [9 x i8] c"ATA_BUS \00", align 1, !dbg !76
@.str.23 = private unnamed_addr constant [10 x i8] c"HOST_BUS \00", align 1, !dbg !78
@.str.24 = private unnamed_addr constant [8 x i8] c"SYSTEM \00", align 1, !dbg !83
@.str.25 = private unnamed_addr constant [9 x i8] c"INVALID \00", align 1, !dbg !85
@.str.26 = private unnamed_addr constant [7 x i8] c"OTHER \00", align 1, !dbg !87
@.str.27 = private unnamed_addr constant [12 x i8] c"NODEV_HINT \00", align 1, !dbg !89
@.str.28 = private unnamed_addr constant [5 x i8] c"NCQ \00", align 1, !dbg !91
@.str.29 = private unnamed_addr constant [8 x i8] c"DMAMAP \00", align 1, !dbg !93
@.str.30 = private unnamed_addr constant [4 x i8] c"IO \00", align 1, !dbg !95
@.str.31 = private unnamed_addr constant [11 x i8] c"RESULT_TF \00", align 1, !dbg !97
@.str.32 = private unnamed_addr constant [12 x i8] c"CLEAR_EXCL \00", align 1, !dbg !99
@.str.33 = private unnamed_addr constant [7 x i8] c"QUIET \00", align 1, !dbg !101
@.str.34 = private unnamed_addr constant [7 x i8] c"RETRY \00", align 1, !dbg !103
@.str.35 = private unnamed_addr constant [8 x i8] c"FAILED \00", align 1, !dbg !105
@.str.36 = private unnamed_addr constant [13 x i8] c"SENSE_VALID \00", align 1, !dbg !107
@.str.37 = private unnamed_addr constant [14 x i8] c"EH_SCHEDULED \00", align 1, !dbg !109
@.str.38 = private unnamed_addr constant [7 x i8] c"LBA48 \00", align 1, !dbg !114
@.str.39 = private unnamed_addr constant [8 x i8] c"ISADDR \00", align 1, !dbg !116
@.str.40 = private unnamed_addr constant [7 x i8] c"WRITE \00", align 1, !dbg !118
@.str.41 = private unnamed_addr constant [5 x i8] c"LBA \00", align 1, !dbg !120
@.str.42 = private unnamed_addr constant [5 x i8] c"FUA \00", align 1, !dbg !122
@.str.43 = private unnamed_addr constant [6 x i8] c"POLL \00", align 1, !dbg !124
@.str.44 = private unnamed_addr constant [18 x i8] c" READ_LOG_DMA_EXT\00", align 1, !dbg !126
@.str.45 = private unnamed_addr constant [13 x i8] c" ZAC_MGMT_IN\00", align 1, !dbg !131
@.str.46 = private unnamed_addr constant [19 x i8] c" WRITE_LOG_DMA_EXT\00", align 1, !dbg !133
@.str.47 = private unnamed_addr constant [20 x i8] c" DATASET_MANAGEMENT\00", align 1, !dbg !138
@.str.48 = private unnamed_addr constant [13 x i8] c" ABORT_QUEUE\00", align 1, !dbg !143
@.str.49 = private unnamed_addr constant [14 x i8] c" SET_FEATURES\00", align 1, !dbg !145
@.str.50 = private unnamed_addr constant [10 x i8] c" ZERO_EXT\00", align 1, !dbg !147
@.str.51 = private unnamed_addr constant [14 x i8] c" ZAC_MGMT_OUT\00", align 1, !dbg !149
@.str.52 = private unnamed_addr constant [14 x i8] c" REPORT_ZONES\00", align 1, !dbg !151
@.str.53 = private unnamed_addr constant [12 x i8] c" CLOSE_ZONE\00", align 1, !dbg !153
@.str.54 = private unnamed_addr constant [13 x i8] c" FINISH_ZONE\00", align 1, !dbg !155
@.str.55 = private unnamed_addr constant [11 x i8] c" OPEN_ZONE\00", align 1, !dbg !157
@.str.56 = private unnamed_addr constant [21 x i8] c" RESET_WRITE_POINTER\00", align 1, !dbg !159

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @libata_trace_parse_status(ptr noundef %p, i8 noundef zeroext %status) #0 align 16 !dbg !868 {
entry:
  %p.addr = alloca ptr, align 8
  %status.addr = alloca i8, align 1
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !899, metadata !DIExpression()), !dbg !902
  store i8 %status, ptr %status.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !900, metadata !DIExpression()), !dbg !903
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !904
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !901, metadata !DIExpression()), !dbg !905
  %0 = load ptr, ptr %p.addr, align 8, !dbg !906
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #6, !dbg !907
  store ptr %call, ptr %ret, align 8, !dbg !905
  %1 = load ptr, ptr %p.addr, align 8, !dbg !908
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef @.str) #6, !dbg !909
  %2 = load i8, ptr %status.addr, align 1, !dbg !910
  %conv = zext i8 %2 to i32, !dbg !910
  %and = and i32 %conv, 128, !dbg !912
  %tobool = icmp ne i32 %and, 0, !dbg !912
  br i1 %tobool, label %if.then, label %if.end, !dbg !913

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !914
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef @.str.1) #6, !dbg !915
  br label %if.end, !dbg !915

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, ptr %status.addr, align 1, !dbg !916
  %conv1 = zext i8 %4 to i32, !dbg !916
  %and2 = and i32 %conv1, 64, !dbg !918
  %tobool3 = icmp ne i32 %and2, 0, !dbg !918
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !919

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8, !dbg !920
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %5, ptr noundef @.str.2) #6, !dbg !921
  br label %if.end5, !dbg !921

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load i8, ptr %status.addr, align 1, !dbg !922
  %conv6 = zext i8 %6 to i32, !dbg !922
  %and7 = and i32 %conv6, 32, !dbg !924
  %tobool8 = icmp ne i32 %and7, 0, !dbg !924
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !925

if.then9:                                         ; preds = %if.end5
  %7 = load ptr, ptr %p.addr, align 8, !dbg !926
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %7, ptr noundef @.str.3) #6, !dbg !927
  br label %if.end10, !dbg !927

if.end10:                                         ; preds = %if.then9, %if.end5
  %8 = load i8, ptr %status.addr, align 1, !dbg !928
  %conv11 = zext i8 %8 to i32, !dbg !928
  %and12 = and i32 %conv11, 16, !dbg !930
  %tobool13 = icmp ne i32 %and12, 0, !dbg !930
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !931

if.then14:                                        ; preds = %if.end10
  %9 = load ptr, ptr %p.addr, align 8, !dbg !932
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %9, ptr noundef @.str.4) #6, !dbg !933
  br label %if.end15, !dbg !933

if.end15:                                         ; preds = %if.then14, %if.end10
  %10 = load i8, ptr %status.addr, align 1, !dbg !934
  %conv16 = zext i8 %10 to i32, !dbg !934
  %and17 = and i32 %conv16, 8, !dbg !936
  %tobool18 = icmp ne i32 %and17, 0, !dbg !936
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !937

if.then19:                                        ; preds = %if.end15
  %11 = load ptr, ptr %p.addr, align 8, !dbg !938
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %11, ptr noundef @.str.5) #6, !dbg !939
  br label %if.end20, !dbg !939

if.end20:                                         ; preds = %if.then19, %if.end15
  %12 = load i8, ptr %status.addr, align 1, !dbg !940
  %conv21 = zext i8 %12 to i32, !dbg !940
  %and22 = and i32 %conv21, 4, !dbg !942
  %tobool23 = icmp ne i32 %and22, 0, !dbg !942
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !943

if.then24:                                        ; preds = %if.end20
  %13 = load ptr, ptr %p.addr, align 8, !dbg !944
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %13, ptr noundef @.str.6) #6, !dbg !945
  br label %if.end25, !dbg !945

if.end25:                                         ; preds = %if.then24, %if.end20
  %14 = load i8, ptr %status.addr, align 1, !dbg !946
  %conv26 = zext i8 %14 to i32, !dbg !946
  %and27 = and i32 %conv26, 2, !dbg !948
  %tobool28 = icmp ne i32 %and27, 0, !dbg !948
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !949

if.then29:                                        ; preds = %if.end25
  %15 = load ptr, ptr %p.addr, align 8, !dbg !950
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %15, ptr noundef @.str.7) #6, !dbg !951
  br label %if.end30, !dbg !951

if.end30:                                         ; preds = %if.then29, %if.end25
  %16 = load i8, ptr %status.addr, align 1, !dbg !952
  %conv31 = zext i8 %16 to i32, !dbg !952
  %and32 = and i32 %conv31, 1, !dbg !954
  %tobool33 = icmp ne i32 %and32, 0, !dbg !954
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !955

if.then34:                                        ; preds = %if.end30
  %17 = load ptr, ptr %p.addr, align 8, !dbg !956
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %17, ptr noundef @.str.8) #6, !dbg !957
  br label %if.end35, !dbg !957

if.end35:                                         ; preds = %if.then34, %if.end30
  %18 = load ptr, ptr %p.addr, align 8, !dbg !958
  call void @trace_seq_putc(ptr noundef %18, i8 noundef zeroext 125) #6, !dbg !959
  %19 = load ptr, ptr %p.addr, align 8, !dbg !960
  call void @trace_seq_putc(ptr noundef %19, i8 noundef zeroext 0) #6, !dbg !961
  %20 = load ptr, ptr %ret, align 8, !dbg !962
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !963
  ret ptr %20, !dbg !964
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @trace_seq_buffer_ptr(ptr noundef %s) #3 align 16 !dbg !965 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !969, metadata !DIExpression()), !dbg !970
  %0 = load ptr, ptr %s.addr, align 8, !dbg !971
  %buffer = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 0, !dbg !972
  %arraydecay = getelementptr inbounds [4096 x i8], ptr %buffer, i64 0, i64 0, !dbg !971
  %1 = load ptr, ptr %s.addr, align 8, !dbg !973
  %seq = getelementptr inbounds %struct.trace_seq, ptr %1, i32 0, i32 1, !dbg !974
  %call = call i32 @seq_buf_used(ptr noundef %seq) #6, !dbg !975
  %idx.ext = zext i32 %call to i64, !dbg !976
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 %idx.ext, !dbg !976
  ret ptr %add.ptr, !dbg !977
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !978 dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !981 dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @libata_trace_parse_host_stat(ptr noundef %p, i8 noundef zeroext %host_stat) #0 align 16 !dbg !984 {
entry:
  %p.addr = alloca ptr, align 8
  %host_stat.addr = alloca i8, align 1
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !986, metadata !DIExpression()), !dbg !989
  store i8 %host_stat, ptr %host_stat.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %host_stat.addr, metadata !987, metadata !DIExpression()), !dbg !990
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !991
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !988, metadata !DIExpression()), !dbg !992
  %0 = load ptr, ptr %p.addr, align 8, !dbg !993
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #6, !dbg !994
  store ptr %call, ptr %ret, align 8, !dbg !992
  %1 = load ptr, ptr %p.addr, align 8, !dbg !995
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef @.str) #6, !dbg !996
  %2 = load i8, ptr %host_stat.addr, align 1, !dbg !997
  %conv = zext i8 %2 to i32, !dbg !997
  %and = and i32 %conv, 4, !dbg !999
  %tobool = icmp ne i32 %and, 0, !dbg !999
  br i1 %tobool, label %if.then, label %if.end, !dbg !1000

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1001
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef @.str.9) #6, !dbg !1002
  br label %if.end, !dbg !1002

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, ptr %host_stat.addr, align 1, !dbg !1003
  %conv1 = zext i8 %4 to i32, !dbg !1003
  %and2 = and i32 %conv1, 2, !dbg !1005
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1005
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1006

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8, !dbg !1007
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %5, ptr noundef @.str.8) #6, !dbg !1008
  br label %if.end5, !dbg !1008

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load i8, ptr %host_stat.addr, align 1, !dbg !1009
  %conv6 = zext i8 %6 to i32, !dbg !1009
  %and7 = and i32 %conv6, 1, !dbg !1011
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1011
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1012

if.then9:                                         ; preds = %if.end5
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1013
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %7, ptr noundef @.str.10) #6, !dbg !1014
  br label %if.end10, !dbg !1014

if.end10:                                         ; preds = %if.then9, %if.end5
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1015
  call void @trace_seq_putc(ptr noundef %8, i8 noundef zeroext 125) #6, !dbg !1016
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1017
  call void @trace_seq_putc(ptr noundef %9, i8 noundef zeroext 0) #6, !dbg !1018
  %10 = load ptr, ptr %ret, align 8, !dbg !1019
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !1020
  ret ptr %10, !dbg !1021
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @libata_trace_parse_eh_action(ptr noundef %p, i32 noundef %eh_action) #0 align 16 !dbg !1022 {
entry:
  %p.addr = alloca ptr, align 8
  %eh_action.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1026, metadata !DIExpression()), !dbg !1029
  store i32 %eh_action, ptr %eh_action.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %eh_action.addr, metadata !1027, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1028, metadata !DIExpression()), !dbg !1032
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1033
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #6, !dbg !1034
  store ptr %call, ptr %ret, align 8, !dbg !1032
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1035
  %2 = load i32, ptr %eh_action.addr, align 4, !dbg !1036
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef @.str.11, i32 noundef %2) #6, !dbg !1037
  %3 = load i32, ptr %eh_action.addr, align 4, !dbg !1038
  %tobool = icmp ne i32 %3, 0, !dbg !1038
  br i1 %tobool, label %if.then, label %if.end24, !dbg !1040

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1041
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef @.str) #6, !dbg !1043
  %5 = load i32, ptr %eh_action.addr, align 4, !dbg !1044
  %and = and i32 %5, 1, !dbg !1046
  %tobool1 = icmp ne i32 %and, 0, !dbg !1046
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1047

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1048
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str.12) #6, !dbg !1049
  br label %if.end, !dbg !1049

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, ptr %eh_action.addr, align 4, !dbg !1050
  %and3 = and i32 %7, 6, !dbg !1052
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1052
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !1053

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1054
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %8, ptr noundef @.str.13) #6, !dbg !1055
  br label %if.end15, !dbg !1055

if.else:                                          ; preds = %if.end
  %9 = load i32, ptr %eh_action.addr, align 4, !dbg !1056
  %and6 = and i32 %9, 2, !dbg !1058
  %tobool7 = icmp ne i32 %and6, 0, !dbg !1058
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !1059

if.then8:                                         ; preds = %if.else
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1060
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef @.str.14) #6, !dbg !1061
  br label %if.end14, !dbg !1061

if.else9:                                         ; preds = %if.else
  %11 = load i32, ptr %eh_action.addr, align 4, !dbg !1062
  %and10 = and i32 %11, 4, !dbg !1064
  %tobool11 = icmp ne i32 %and10, 0, !dbg !1064
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1065

if.then12:                                        ; preds = %if.else9
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1066
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %12, ptr noundef @.str.15) #6, !dbg !1067
  br label %if.end13, !dbg !1067

if.end13:                                         ; preds = %if.then12, %if.else9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then5
  %13 = load i32, ptr %eh_action.addr, align 4, !dbg !1068
  %and16 = and i32 %13, 8, !dbg !1070
  %tobool17 = icmp ne i32 %and16, 0, !dbg !1070
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1071

if.then18:                                        ; preds = %if.end15
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1072
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %14, ptr noundef @.str.16) #6, !dbg !1073
  br label %if.end19, !dbg !1073

if.end19:                                         ; preds = %if.then18, %if.end15
  %15 = load i32, ptr %eh_action.addr, align 4, !dbg !1074
  %and20 = and i32 %15, 32, !dbg !1076
  %tobool21 = icmp ne i32 %and20, 0, !dbg !1076
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1077

if.then22:                                        ; preds = %if.end19
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1078
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %16, ptr noundef @.str.17) #6, !dbg !1079
  br label %if.end23, !dbg !1079

if.end23:                                         ; preds = %if.then22, %if.end19
  %17 = load ptr, ptr %p.addr, align 8, !dbg !1080
  call void @trace_seq_putc(ptr noundef %17, i8 noundef zeroext 125) #6, !dbg !1081
  br label %if.end24, !dbg !1082

if.end24:                                         ; preds = %if.end23, %entry
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1083
  call void @trace_seq_putc(ptr noundef %18, i8 noundef zeroext 0) #6, !dbg !1084
  %19 = load ptr, ptr %ret, align 8, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !1086
  ret ptr %19, !dbg !1087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @libata_trace_parse_eh_err_mask(ptr noundef %p, i32 noundef %eh_err_mask) #0 align 16 !dbg !1088 {
entry:
  %p.addr = alloca ptr, align 8
  %eh_err_mask.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1090, metadata !DIExpression()), !dbg !1093
  store i32 %eh_err_mask, ptr %eh_err_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %eh_err_mask.addr, metadata !1091, metadata !DIExpression()), !dbg !1094
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !1095
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1092, metadata !DIExpression()), !dbg !1096
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1097
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #6, !dbg !1098
  store ptr %call, ptr %ret, align 8, !dbg !1096
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1099
  %2 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1100
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef @.str.11, i32 noundef %2) #6, !dbg !1101
  %3 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1102
  %tobool = icmp ne i32 %3, 0, !dbg !1102
  br i1 %tobool, label %if.then, label %if.end43, !dbg !1104

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1105
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef @.str) #6, !dbg !1107
  %5 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1108
  %and = and i32 %5, 1, !dbg !1110
  %tobool1 = icmp ne i32 %and, 0, !dbg !1110
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1111

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1112
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str.18) #6, !dbg !1113
  br label %if.end, !dbg !1113

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1114
  %and3 = and i32 %7, 2, !dbg !1116
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1116
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1117

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1118
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %8, ptr noundef @.str.19) #6, !dbg !1119
  br label %if.end6, !dbg !1119

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1120
  %and7 = and i32 %9, 4, !dbg !1122
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1122
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1123

if.then9:                                         ; preds = %if.end6
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1124
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef @.str.20) #6, !dbg !1125
  br label %if.end10, !dbg !1125

if.end10:                                         ; preds = %if.then9, %if.end6
  %11 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1126
  %and11 = and i32 %11, 8, !dbg !1128
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1128
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1129

if.then13:                                        ; preds = %if.end10
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1130
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %12, ptr noundef @.str.21) #6, !dbg !1131
  br label %if.end14, !dbg !1131

if.end14:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1132
  %and15 = and i32 %13, 16, !dbg !1134
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1134
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1135

if.then17:                                        ; preds = %if.end14
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1136
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %14, ptr noundef @.str.22) #6, !dbg !1137
  br label %if.end18, !dbg !1137

if.end18:                                         ; preds = %if.then17, %if.end14
  %15 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1138
  %and19 = and i32 %15, 32, !dbg !1140
  %tobool20 = icmp ne i32 %and19, 0, !dbg !1140
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1141

if.then21:                                        ; preds = %if.end18
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1142
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %16, ptr noundef @.str.23) #6, !dbg !1143
  br label %if.end22, !dbg !1143

if.end22:                                         ; preds = %if.then21, %if.end18
  %17 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1144
  %and23 = and i32 %17, 64, !dbg !1146
  %tobool24 = icmp ne i32 %and23, 0, !dbg !1146
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1147

if.then25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1148
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %18, ptr noundef @.str.24) #6, !dbg !1149
  br label %if.end26, !dbg !1149

if.end26:                                         ; preds = %if.then25, %if.end22
  %19 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1150
  %and27 = and i32 %19, 128, !dbg !1152
  %tobool28 = icmp ne i32 %and27, 0, !dbg !1152
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1153

if.then29:                                        ; preds = %if.end26
  %20 = load ptr, ptr %p.addr, align 8, !dbg !1154
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %20, ptr noundef @.str.25) #6, !dbg !1155
  br label %if.end30, !dbg !1155

if.end30:                                         ; preds = %if.then29, %if.end26
  %21 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1156
  %and31 = and i32 %21, 256, !dbg !1158
  %tobool32 = icmp ne i32 %and31, 0, !dbg !1158
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1159

if.then33:                                        ; preds = %if.end30
  %22 = load ptr, ptr %p.addr, align 8, !dbg !1160
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %22, ptr noundef @.str.26) #6, !dbg !1161
  br label %if.end34, !dbg !1161

if.end34:                                         ; preds = %if.then33, %if.end30
  %23 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1162
  %and35 = and i32 %23, 512, !dbg !1164
  %tobool36 = icmp ne i32 %and35, 0, !dbg !1164
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1165

if.then37:                                        ; preds = %if.end34
  %24 = load ptr, ptr %p.addr, align 8, !dbg !1166
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %24, ptr noundef @.str.27) #6, !dbg !1167
  br label %if.end38, !dbg !1167

if.end38:                                         ; preds = %if.then37, %if.end34
  %25 = load i32, ptr %eh_err_mask.addr, align 4, !dbg !1168
  %and39 = and i32 %25, 1024, !dbg !1170
  %tobool40 = icmp ne i32 %and39, 0, !dbg !1170
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !1171

if.then41:                                        ; preds = %if.end38
  %26 = load ptr, ptr %p.addr, align 8, !dbg !1172
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %26, ptr noundef @.str.28) #6, !dbg !1173
  br label %if.end42, !dbg !1173

if.end42:                                         ; preds = %if.then41, %if.end38
  %27 = load ptr, ptr %p.addr, align 8, !dbg !1174
  call void @trace_seq_putc(ptr noundef %27, i8 noundef zeroext 125) #6, !dbg !1175
  br label %if.end43, !dbg !1176

if.end43:                                         ; preds = %if.end42, %entry
  %28 = load ptr, ptr %p.addr, align 8, !dbg !1177
  call void @trace_seq_putc(ptr noundef %28, i8 noundef zeroext 0) #6, !dbg !1178
  %29 = load ptr, ptr %ret, align 8, !dbg !1179
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !1180
  ret ptr %29, !dbg !1181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @libata_trace_parse_qc_flags(ptr noundef %p, i32 noundef %qc_flags) #0 align 16 !dbg !1182 {
entry:
  %p.addr = alloca ptr, align 8
  %qc_flags.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1184, metadata !DIExpression()), !dbg !1187
  store i32 %qc_flags, ptr %qc_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %qc_flags.addr, metadata !1185, metadata !DIExpression()), !dbg !1188
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1186, metadata !DIExpression()), !dbg !1190
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1191
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #6, !dbg !1192
  store ptr %call, ptr %ret, align 8, !dbg !1190
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1193
  %2 = load i32, ptr %qc_flags.addr, align 4, !dbg !1194
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef @.str.11, i32 noundef %2) #6, !dbg !1195
  %3 = load i32, ptr %qc_flags.addr, align 4, !dbg !1196
  %tobool = icmp ne i32 %3, 0, !dbg !1196
  br i1 %tobool, label %if.then, label %if.end39, !dbg !1198

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1199
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef @.str) #6, !dbg !1201
  %5 = load i32, ptr %qc_flags.addr, align 4, !dbg !1202
  %and = and i32 %5, 1, !dbg !1204
  %tobool1 = icmp ne i32 %and, 0, !dbg !1204
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1205

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1206
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str.10) #6, !dbg !1207
  br label %if.end, !dbg !1207

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, ptr %qc_flags.addr, align 4, !dbg !1208
  %and3 = and i32 %7, 2, !dbg !1210
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1210
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1211

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1212
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %8, ptr noundef @.str.29) #6, !dbg !1213
  br label %if.end6, !dbg !1213

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load i32, ptr %qc_flags.addr, align 4, !dbg !1214
  %and7 = and i32 %9, 8, !dbg !1216
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1216
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1217

if.then9:                                         ; preds = %if.end6
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1218
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef @.str.30) #6, !dbg !1219
  br label %if.end10, !dbg !1219

if.end10:                                         ; preds = %if.then9, %if.end6
  %11 = load i32, ptr %qc_flags.addr, align 4, !dbg !1220
  %and11 = and i32 %11, 16, !dbg !1222
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1222
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1223

if.then13:                                        ; preds = %if.end10
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1224
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %12, ptr noundef @.str.31) #6, !dbg !1225
  br label %if.end14, !dbg !1225

if.end14:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, ptr %qc_flags.addr, align 4, !dbg !1226
  %and15 = and i32 %13, 32, !dbg !1228
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1228
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1229

if.then17:                                        ; preds = %if.end14
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1230
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %14, ptr noundef @.str.32) #6, !dbg !1231
  br label %if.end18, !dbg !1231

if.end18:                                         ; preds = %if.then17, %if.end14
  %15 = load i32, ptr %qc_flags.addr, align 4, !dbg !1232
  %and19 = and i32 %15, 64, !dbg !1234
  %tobool20 = icmp ne i32 %and19, 0, !dbg !1234
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1235

if.then21:                                        ; preds = %if.end18
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1236
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %16, ptr noundef @.str.33) #6, !dbg !1237
  br label %if.end22, !dbg !1237

if.end22:                                         ; preds = %if.then21, %if.end18
  %17 = load i32, ptr %qc_flags.addr, align 4, !dbg !1238
  %and23 = and i32 %17, 128, !dbg !1240
  %tobool24 = icmp ne i32 %and23, 0, !dbg !1240
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1241

if.then25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1242
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %18, ptr noundef @.str.34) #6, !dbg !1243
  br label %if.end26, !dbg !1243

if.end26:                                         ; preds = %if.then25, %if.end22
  %19 = load i32, ptr %qc_flags.addr, align 4, !dbg !1244
  %and27 = and i32 %19, 65536, !dbg !1246
  %tobool28 = icmp ne i32 %and27, 0, !dbg !1246
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1247

if.then29:                                        ; preds = %if.end26
  %20 = load ptr, ptr %p.addr, align 8, !dbg !1248
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %20, ptr noundef @.str.35) #6, !dbg !1249
  br label %if.end30, !dbg !1249

if.end30:                                         ; preds = %if.then29, %if.end26
  %21 = load i32, ptr %qc_flags.addr, align 4, !dbg !1250
  %and31 = and i32 %21, 131072, !dbg !1252
  %tobool32 = icmp ne i32 %and31, 0, !dbg !1252
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1253

if.then33:                                        ; preds = %if.end30
  %22 = load ptr, ptr %p.addr, align 8, !dbg !1254
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %22, ptr noundef @.str.36) #6, !dbg !1255
  br label %if.end34, !dbg !1255

if.end34:                                         ; preds = %if.then33, %if.end30
  %23 = load i32, ptr %qc_flags.addr, align 4, !dbg !1256
  %and35 = and i32 %23, 262144, !dbg !1258
  %tobool36 = icmp ne i32 %and35, 0, !dbg !1258
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1259

if.then37:                                        ; preds = %if.end34
  %24 = load ptr, ptr %p.addr, align 8, !dbg !1260
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %24, ptr noundef @.str.37) #6, !dbg !1261
  br label %if.end38, !dbg !1261

if.end38:                                         ; preds = %if.then37, %if.end34
  %25 = load ptr, ptr %p.addr, align 8, !dbg !1262
  call void @trace_seq_putc(ptr noundef %25, i8 noundef zeroext 125) #6, !dbg !1263
  br label %if.end39, !dbg !1264

if.end39:                                         ; preds = %if.end38, %entry
  %26 = load ptr, ptr %p.addr, align 8, !dbg !1265
  call void @trace_seq_putc(ptr noundef %26, i8 noundef zeroext 0) #6, !dbg !1266
  %27 = load ptr, ptr %ret, align 8, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !1268
  ret ptr %27, !dbg !1269
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @libata_trace_parse_tf_flags(ptr noundef %p, i32 noundef %tf_flags) #0 align 16 !dbg !1270 {
entry:
  %p.addr = alloca ptr, align 8
  %tf_flags.addr = alloca i32, align 4
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1272, metadata !DIExpression()), !dbg !1275
  store i32 %tf_flags, ptr %tf_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %tf_flags.addr, metadata !1273, metadata !DIExpression()), !dbg !1276
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !1277
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1274, metadata !DIExpression()), !dbg !1278
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1279
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #6, !dbg !1280
  store ptr %call, ptr %ret, align 8, !dbg !1278
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1281
  %2 = load i32, ptr %tf_flags.addr, align 4, !dbg !1282
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef @.str.11, i32 noundef %2) #6, !dbg !1283
  %3 = load i32, ptr %tf_flags.addr, align 4, !dbg !1284
  %tobool = icmp ne i32 %3, 0, !dbg !1284
  br i1 %tobool, label %if.then, label %if.end27, !dbg !1286

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1287
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef @.str) #6, !dbg !1289
  %5 = load i32, ptr %tf_flags.addr, align 4, !dbg !1290
  %and = and i32 %5, 1, !dbg !1292
  %tobool1 = icmp ne i32 %and, 0, !dbg !1292
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1293

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1294
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str.38) #6, !dbg !1295
  br label %if.end, !dbg !1295

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, ptr %tf_flags.addr, align 4, !dbg !1296
  %and3 = and i32 %7, 2, !dbg !1298
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1298
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1299

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %p.addr, align 8, !dbg !1300
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %8, ptr noundef @.str.39) #6, !dbg !1301
  br label %if.end6, !dbg !1301

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load i32, ptr %tf_flags.addr, align 4, !dbg !1302
  %and7 = and i32 %9, 4, !dbg !1304
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1304
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1305

if.then9:                                         ; preds = %if.end6
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1306
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef @.str.18) #6, !dbg !1307
  br label %if.end10, !dbg !1307

if.end10:                                         ; preds = %if.then9, %if.end6
  %11 = load i32, ptr %tf_flags.addr, align 4, !dbg !1308
  %and11 = and i32 %11, 8, !dbg !1310
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1310
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1311

if.then13:                                        ; preds = %if.end10
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1312
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %12, ptr noundef @.str.40) #6, !dbg !1313
  br label %if.end14, !dbg !1313

if.end14:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, ptr %tf_flags.addr, align 4, !dbg !1314
  %and15 = and i32 %13, 16, !dbg !1316
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1316
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1317

if.then17:                                        ; preds = %if.end14
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1318
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %14, ptr noundef @.str.41) #6, !dbg !1319
  br label %if.end18, !dbg !1319

if.end18:                                         ; preds = %if.then17, %if.end14
  %15 = load i32, ptr %tf_flags.addr, align 4, !dbg !1320
  %and19 = and i32 %15, 32, !dbg !1322
  %tobool20 = icmp ne i32 %and19, 0, !dbg !1322
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1323

if.then21:                                        ; preds = %if.end18
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1324
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %16, ptr noundef @.str.42) #6, !dbg !1325
  br label %if.end22, !dbg !1325

if.end22:                                         ; preds = %if.then21, %if.end18
  %17 = load i32, ptr %tf_flags.addr, align 4, !dbg !1326
  %and23 = and i32 %17, 64, !dbg !1328
  %tobool24 = icmp ne i32 %and23, 0, !dbg !1328
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1329

if.then25:                                        ; preds = %if.end22
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1330
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %18, ptr noundef @.str.43) #6, !dbg !1331
  br label %if.end26, !dbg !1331

if.end26:                                         ; preds = %if.then25, %if.end22
  %19 = load ptr, ptr %p.addr, align 8, !dbg !1332
  call void @trace_seq_putc(ptr noundef %19, i8 noundef zeroext 125) #6, !dbg !1333
  br label %if.end27, !dbg !1334

if.end27:                                         ; preds = %if.end26, %entry
  %20 = load ptr, ptr %p.addr, align 8, !dbg !1335
  call void @trace_seq_putc(ptr noundef %20, i8 noundef zeroext 0) #6, !dbg !1336
  %21 = load ptr, ptr %ret, align 8, !dbg !1337
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !1338
  ret ptr %21, !dbg !1339
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @libata_trace_parse_subcmd(ptr noundef %p, i8 noundef zeroext %cmd, i8 noundef zeroext %feature, i8 noundef zeroext %hob_nsect) #0 align 16 !dbg !1340 {
entry:
  %p.addr = alloca ptr, align 8
  %cmd.addr = alloca i8, align 1
  %feature.addr = alloca i8, align 1
  %hob_nsect.addr = alloca i8, align 1
  %ret = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1344, metadata !DIExpression()), !dbg !1349
  store i8 %cmd, ptr %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !1345, metadata !DIExpression()), !dbg !1350
  store i8 %feature, ptr %feature.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !1346, metadata !DIExpression()), !dbg !1351
  store i8 %hob_nsect, ptr %hob_nsect.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %hob_nsect.addr, metadata !1347, metadata !DIExpression()), !dbg !1352
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #5, !dbg !1353
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1348, metadata !DIExpression()), !dbg !1354
  %0 = load ptr, ptr %p.addr, align 8, !dbg !1355
  %call = call ptr @trace_seq_buffer_ptr(ptr noundef %0) #6, !dbg !1356
  store ptr %call, ptr %ret, align 8, !dbg !1354
  %1 = load i8, ptr %cmd.addr, align 1, !dbg !1357
  %conv = zext i8 %1 to i32, !dbg !1357
  switch i32 %conv, label %sw.epilog28 [
    i32 101, label %sw.bb
    i32 100, label %sw.bb4
    i32 99, label %sw.bb10
    i32 74, label %sw.bb17
    i32 159, label %sw.bb21
  ], !dbg !1358

sw.bb:                                            ; preds = %entry
  %2 = load i8, ptr %hob_nsect.addr, align 1, !dbg !1359
  %conv1 = zext i8 %2 to i32, !dbg !1359
  %and = and i32 %conv1, 95, !dbg !1361
  switch i32 %and, label %sw.epilog [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !1362

sw.bb2:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %p.addr, align 8, !dbg !1363
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef @.str.44) #6, !dbg !1365
  br label %sw.epilog, !dbg !1366

sw.bb3:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %p.addr, align 8, !dbg !1367
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %4, ptr noundef @.str.45) #6, !dbg !1368
  br label %sw.epilog, !dbg !1369

sw.epilog:                                        ; preds = %sw.bb, %sw.bb3, %sw.bb2
  br label %sw.epilog28, !dbg !1370

sw.bb4:                                           ; preds = %entry
  %5 = load i8, ptr %hob_nsect.addr, align 1, !dbg !1371
  %conv5 = zext i8 %5 to i32, !dbg !1371
  %and6 = and i32 %conv5, 95, !dbg !1372
  switch i32 %and6, label %sw.epilog9 [
    i32 2, label %sw.bb7
    i32 0, label %sw.bb8
  ], !dbg !1373

sw.bb7:                                           ; preds = %sw.bb4
  %6 = load ptr, ptr %p.addr, align 8, !dbg !1374
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %6, ptr noundef @.str.46) #6, !dbg !1376
  br label %sw.epilog9, !dbg !1377

sw.bb8:                                           ; preds = %sw.bb4
  %7 = load ptr, ptr %p.addr, align 8, !dbg !1378
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %7, ptr noundef @.str.47) #6, !dbg !1379
  br label %sw.epilog9, !dbg !1380

sw.epilog9:                                       ; preds = %sw.bb4, %sw.bb8, %sw.bb7
  br label %sw.epilog28, !dbg !1381

sw.bb10:                                          ; preds = %entry
  %8 = load i8, ptr %feature.addr, align 1, !dbg !1382
  %conv11 = zext i8 %8 to i32, !dbg !1382
  switch i32 %conv11, label %sw.epilog16 [
    i32 0, label %sw.bb12
    i32 5, label %sw.bb13
    i32 6, label %sw.bb14
    i32 7, label %sw.bb15
  ], !dbg !1383

sw.bb12:                                          ; preds = %sw.bb10
  %9 = load ptr, ptr %p.addr, align 8, !dbg !1384
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %9, ptr noundef @.str.48) #6, !dbg !1386
  br label %sw.epilog16, !dbg !1387

sw.bb13:                                          ; preds = %sw.bb10
  %10 = load ptr, ptr %p.addr, align 8, !dbg !1388
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %10, ptr noundef @.str.49) #6, !dbg !1389
  br label %sw.epilog16, !dbg !1390

sw.bb14:                                          ; preds = %sw.bb10
  %11 = load ptr, ptr %p.addr, align 8, !dbg !1391
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %11, ptr noundef @.str.50) #6, !dbg !1392
  br label %sw.epilog16, !dbg !1393

sw.bb15:                                          ; preds = %sw.bb10
  %12 = load ptr, ptr %p.addr, align 8, !dbg !1394
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %12, ptr noundef @.str.51) #6, !dbg !1395
  br label %sw.epilog16, !dbg !1396

sw.epilog16:                                      ; preds = %sw.bb10, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12
  br label %sw.epilog28, !dbg !1397

sw.bb17:                                          ; preds = %entry
  %13 = load i8, ptr %feature.addr, align 1, !dbg !1398
  %conv18 = zext i8 %13 to i32, !dbg !1398
  switch i32 %conv18, label %sw.epilog20 [
    i32 0, label %sw.bb19
  ], !dbg !1399

sw.bb19:                                          ; preds = %sw.bb17
  %14 = load ptr, ptr %p.addr, align 8, !dbg !1400
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %14, ptr noundef @.str.52) #6, !dbg !1402
  br label %sw.epilog20, !dbg !1403

sw.epilog20:                                      ; preds = %sw.bb17, %sw.bb19
  br label %sw.epilog28, !dbg !1404

sw.bb21:                                          ; preds = %entry
  %15 = load i8, ptr %feature.addr, align 1, !dbg !1405
  %conv22 = zext i8 %15 to i32, !dbg !1405
  switch i32 %conv22, label %sw.epilog27 [
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
    i32 3, label %sw.bb25
    i32 4, label %sw.bb26
  ], !dbg !1406

sw.bb23:                                          ; preds = %sw.bb21
  %16 = load ptr, ptr %p.addr, align 8, !dbg !1407
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %16, ptr noundef @.str.53) #6, !dbg !1409
  br label %sw.epilog27, !dbg !1410

sw.bb24:                                          ; preds = %sw.bb21
  %17 = load ptr, ptr %p.addr, align 8, !dbg !1411
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %17, ptr noundef @.str.54) #6, !dbg !1412
  br label %sw.epilog27, !dbg !1413

sw.bb25:                                          ; preds = %sw.bb21
  %18 = load ptr, ptr %p.addr, align 8, !dbg !1414
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %18, ptr noundef @.str.55) #6, !dbg !1415
  br label %sw.epilog27, !dbg !1416

sw.bb26:                                          ; preds = %sw.bb21
  %19 = load ptr, ptr %p.addr, align 8, !dbg !1417
  call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %19, ptr noundef @.str.56) #6, !dbg !1418
  br label %sw.epilog27, !dbg !1419

sw.epilog27:                                      ; preds = %sw.bb21, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23
  br label %sw.epilog28, !dbg !1420

sw.epilog28:                                      ; preds = %entry, %sw.epilog27, %sw.epilog20, %sw.epilog16, %sw.epilog9, %sw.epilog
  %20 = load ptr, ptr %p.addr, align 8, !dbg !1421
  call void @trace_seq_putc(ptr noundef %20, i8 noundef zeroext 0) #6, !dbg !1422
  %21 = load ptr, ptr %ret, align 8, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #5, !dbg !1424
  ret ptr %21, !dbg !1425
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @seq_buf_used(ptr noundef %s) #3 align 16 !dbg !1426 {
entry:
  %s.addr = alloca ptr, align 8
  %__UNIQUE_ID___x249 = alloca i64, align 8
  %__UNIQUE_ID___y250 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1431, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x249) #5, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x249, metadata !1432, metadata !DIExpression()), !dbg !1436
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1436
  %len = getelementptr inbounds %struct.seq_buf, ptr %0, i32 0, i32 2, !dbg !1436
  %1 = load i64, ptr %len, align 8, !dbg !1436
  store i64 %1, ptr %__UNIQUE_ID___x249, align 8, !dbg !1436
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y250) #5, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y250, metadata !1434, metadata !DIExpression()), !dbg !1436
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1436
  %size = getelementptr inbounds %struct.seq_buf, ptr %2, i32 0, i32 1, !dbg !1436
  %3 = load i64, ptr %size, align 8, !dbg !1436
  store i64 %3, ptr %__UNIQUE_ID___y250, align 8, !dbg !1436
  %4 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !1436
  %5 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !1436
  %cmp = icmp ult i64 %4, %5, !dbg !1436
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1436

cond.true:                                        ; preds = %entry
  %6 = load i64, ptr %__UNIQUE_ID___x249, align 8, !dbg !1436
  br label %cond.end, !dbg !1436

cond.false:                                       ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___y250, align 8, !dbg !1436
  br label %cond.end, !dbg !1436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !1436
  store i64 %cond, ptr %tmp, align 8, !dbg !1436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y250) #5, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x249) #5, !dbg !1437
  %8 = load i64, ptr %tmp, align 8, !dbg !1436
  %conv = trunc i64 %8 to i32, !dbg !1437
  ret i32 %conv, !dbg !1438
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!164}
!llvm.module.flags = !{!859, !860, !861, !862, !863, !864, !865, !866}
!llvm.ident = !{!867}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/ata/libata-trace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff277f565bcadcc9793c8e0199555102")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 4)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 5)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !9, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 7)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !21, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !9, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 8)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 12)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !30, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 11)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !53, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 13)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !9, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !21, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !21, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 9)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !30, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !71, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 10)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !39, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !71, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !30, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !46, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !21, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !39, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !16, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !53, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !46, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !30, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !30, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !39, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !60, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 14)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !30, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !39, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !30, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !21, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !21, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !9, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 18)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !60, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 19)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 20)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !60, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !111, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !80, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !111, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !111, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !46, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !60, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 246, type: !53, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 21)
!164 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/ata/.libata-trace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/ata/libata\22 -D KBUILD_BASENAME=\22libata_trace\22 -D KBUILD_MODNAME=\22libata\22 -D __KBUILD_MODNAME=kmod_libata -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/ata/libata-trace.ll drivers/ata/libata-trace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !165, globals: !858, splitDebugInlining: false, nameTableKind: None)
!165 = !{!166, !588, !843}
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !167, line: 24, baseType: !168, size: 32, elements: !169)
!167 = !DIFile(filename: "./include/linux/ata.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7a781d7d48ff2b3a34eb98af0e4aa4aa")
!168 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!170 = !DIEnumerator(name: "ATA_MAX_DEVICES", value: 2)
!171 = !DIEnumerator(name: "ATA_MAX_PRD", value: 256)
!172 = !DIEnumerator(name: "ATA_SECT_SIZE", value: 512)
!173 = !DIEnumerator(name: "ATA_MAX_SECTORS_128", value: 128)
!174 = !DIEnumerator(name: "ATA_MAX_SECTORS", value: 256)
!175 = !DIEnumerator(name: "ATA_MAX_SECTORS_1024", value: 1024)
!176 = !DIEnumerator(name: "ATA_MAX_SECTORS_LBA48", value: 65535)
!177 = !DIEnumerator(name: "ATA_MAX_SECTORS_TAPE", value: 65535)
!178 = !DIEnumerator(name: "ATA_MAX_TRIM_RNUM", value: 64)
!179 = !DIEnumerator(name: "ATA_ID_WORDS", value: 256)
!180 = !DIEnumerator(name: "ATA_ID_CONFIG", value: 0)
!181 = !DIEnumerator(name: "ATA_ID_CYLS", value: 1)
!182 = !DIEnumerator(name: "ATA_ID_HEADS", value: 3)
!183 = !DIEnumerator(name: "ATA_ID_SECTORS", value: 6)
!184 = !DIEnumerator(name: "ATA_ID_SERNO", value: 10)
!185 = !DIEnumerator(name: "ATA_ID_BUF_SIZE", value: 21)
!186 = !DIEnumerator(name: "ATA_ID_FW_REV", value: 23)
!187 = !DIEnumerator(name: "ATA_ID_PROD", value: 27)
!188 = !DIEnumerator(name: "ATA_ID_MAX_MULTSECT", value: 47)
!189 = !DIEnumerator(name: "ATA_ID_DWORD_IO", value: 48)
!190 = !DIEnumerator(name: "ATA_ID_TRUSTED", value: 48)
!191 = !DIEnumerator(name: "ATA_ID_CAPABILITY", value: 49)
!192 = !DIEnumerator(name: "ATA_ID_OLD_PIO_MODES", value: 51)
!193 = !DIEnumerator(name: "ATA_ID_OLD_DMA_MODES", value: 52)
!194 = !DIEnumerator(name: "ATA_ID_FIELD_VALID", value: 53)
!195 = !DIEnumerator(name: "ATA_ID_CUR_CYLS", value: 54)
!196 = !DIEnumerator(name: "ATA_ID_CUR_HEADS", value: 55)
!197 = !DIEnumerator(name: "ATA_ID_CUR_SECTORS", value: 56)
!198 = !DIEnumerator(name: "ATA_ID_MULTSECT", value: 59)
!199 = !DIEnumerator(name: "ATA_ID_LBA_CAPACITY", value: 60)
!200 = !DIEnumerator(name: "ATA_ID_SWDMA_MODES", value: 62)
!201 = !DIEnumerator(name: "ATA_ID_MWDMA_MODES", value: 63)
!202 = !DIEnumerator(name: "ATA_ID_PIO_MODES", value: 64)
!203 = !DIEnumerator(name: "ATA_ID_EIDE_DMA_MIN", value: 65)
!204 = !DIEnumerator(name: "ATA_ID_EIDE_DMA_TIME", value: 66)
!205 = !DIEnumerator(name: "ATA_ID_EIDE_PIO", value: 67)
!206 = !DIEnumerator(name: "ATA_ID_EIDE_PIO_IORDY", value: 68)
!207 = !DIEnumerator(name: "ATA_ID_ADDITIONAL_SUPP", value: 69)
!208 = !DIEnumerator(name: "ATA_ID_QUEUE_DEPTH", value: 75)
!209 = !DIEnumerator(name: "ATA_ID_SATA_CAPABILITY", value: 76)
!210 = !DIEnumerator(name: "ATA_ID_SATA_CAPABILITY_2", value: 77)
!211 = !DIEnumerator(name: "ATA_ID_FEATURE_SUPP", value: 78)
!212 = !DIEnumerator(name: "ATA_ID_MAJOR_VER", value: 80)
!213 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_1", value: 82)
!214 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_2", value: 83)
!215 = !DIEnumerator(name: "ATA_ID_CFSSE", value: 84)
!216 = !DIEnumerator(name: "ATA_ID_CFS_ENABLE_1", value: 85)
!217 = !DIEnumerator(name: "ATA_ID_CFS_ENABLE_2", value: 86)
!218 = !DIEnumerator(name: "ATA_ID_CSF_DEFAULT", value: 87)
!219 = !DIEnumerator(name: "ATA_ID_UDMA_MODES", value: 88)
!220 = !DIEnumerator(name: "ATA_ID_HW_CONFIG", value: 93)
!221 = !DIEnumerator(name: "ATA_ID_SPG", value: 98)
!222 = !DIEnumerator(name: "ATA_ID_LBA_CAPACITY_2", value: 100)
!223 = !DIEnumerator(name: "ATA_ID_SECTOR_SIZE", value: 106)
!224 = !DIEnumerator(name: "ATA_ID_WWN", value: 108)
!225 = !DIEnumerator(name: "ATA_ID_LOGICAL_SECTOR_SIZE", value: 117)
!226 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_3", value: 119)
!227 = !DIEnumerator(name: "ATA_ID_COMMAND_SET_4", value: 120)
!228 = !DIEnumerator(name: "ATA_ID_LAST_LUN", value: 126)
!229 = !DIEnumerator(name: "ATA_ID_DLF", value: 128)
!230 = !DIEnumerator(name: "ATA_ID_CSFO", value: 129)
!231 = !DIEnumerator(name: "ATA_ID_CFA_POWER", value: 160)
!232 = !DIEnumerator(name: "ATA_ID_CFA_KEY_MGMT", value: 162)
!233 = !DIEnumerator(name: "ATA_ID_CFA_MODES", value: 163)
!234 = !DIEnumerator(name: "ATA_ID_DATA_SET_MGMT", value: 169)
!235 = !DIEnumerator(name: "ATA_ID_SCT_CMD_XPORT", value: 206)
!236 = !DIEnumerator(name: "ATA_ID_ROT_SPEED", value: 217)
!237 = !DIEnumerator(name: "ATA_ID_PIO4", value: 2)
!238 = !DIEnumerator(name: "ATA_ID_SERNO_LEN", value: 20)
!239 = !DIEnumerator(name: "ATA_ID_FW_REV_LEN", value: 8)
!240 = !DIEnumerator(name: "ATA_ID_PROD_LEN", value: 40)
!241 = !DIEnumerator(name: "ATA_ID_WWN_LEN", value: 8)
!242 = !DIEnumerator(name: "ATA_PCI_CTL_OFS", value: 2)
!243 = !DIEnumerator(name: "ATA_PIO0", value: 1)
!244 = !DIEnumerator(name: "ATA_PIO1", value: 3)
!245 = !DIEnumerator(name: "ATA_PIO2", value: 7)
!246 = !DIEnumerator(name: "ATA_PIO3", value: 15)
!247 = !DIEnumerator(name: "ATA_PIO4", value: 31)
!248 = !DIEnumerator(name: "ATA_PIO5", value: 63)
!249 = !DIEnumerator(name: "ATA_PIO6", value: 127)
!250 = !DIEnumerator(name: "ATA_PIO4_ONLY", value: 16)
!251 = !DIEnumerator(name: "ATA_SWDMA0", value: 1)
!252 = !DIEnumerator(name: "ATA_SWDMA1", value: 3)
!253 = !DIEnumerator(name: "ATA_SWDMA2", value: 7)
!254 = !DIEnumerator(name: "ATA_SWDMA2_ONLY", value: 4)
!255 = !DIEnumerator(name: "ATA_MWDMA0", value: 1)
!256 = !DIEnumerator(name: "ATA_MWDMA1", value: 3)
!257 = !DIEnumerator(name: "ATA_MWDMA2", value: 7)
!258 = !DIEnumerator(name: "ATA_MWDMA3", value: 15)
!259 = !DIEnumerator(name: "ATA_MWDMA4", value: 31)
!260 = !DIEnumerator(name: "ATA_MWDMA12_ONLY", value: 6)
!261 = !DIEnumerator(name: "ATA_MWDMA2_ONLY", value: 4)
!262 = !DIEnumerator(name: "ATA_UDMA0", value: 1)
!263 = !DIEnumerator(name: "ATA_UDMA1", value: 3)
!264 = !DIEnumerator(name: "ATA_UDMA2", value: 7)
!265 = !DIEnumerator(name: "ATA_UDMA3", value: 15)
!266 = !DIEnumerator(name: "ATA_UDMA4", value: 31)
!267 = !DIEnumerator(name: "ATA_UDMA5", value: 63)
!268 = !DIEnumerator(name: "ATA_UDMA6", value: 127)
!269 = !DIEnumerator(name: "ATA_UDMA7", value: 255)
!270 = !DIEnumerator(name: "ATA_UDMA24_ONLY", value: 20)
!271 = !DIEnumerator(name: "ATA_UDMA_MASK_40C", value: 7)
!272 = !DIEnumerator(name: "ATA_PRD_SZ", value: 8)
!273 = !DIEnumerator(name: "ATA_PRD_TBL_SZ", value: 2048)
!274 = !DIEnumerator(name: "ATA_PRD_EOT", value: -2147483648)
!275 = !DIEnumerator(name: "ATA_DMA_TABLE_OFS", value: 4)
!276 = !DIEnumerator(name: "ATA_DMA_STATUS", value: 2)
!277 = !DIEnumerator(name: "ATA_DMA_CMD", value: 0)
!278 = !DIEnumerator(name: "ATA_DMA_WR", value: 8)
!279 = !DIEnumerator(name: "ATA_DMA_START", value: 1)
!280 = !DIEnumerator(name: "ATA_DMA_INTR", value: 4)
!281 = !DIEnumerator(name: "ATA_DMA_ERR", value: 2)
!282 = !DIEnumerator(name: "ATA_DMA_ACTIVE", value: 1)
!283 = !DIEnumerator(name: "ATA_HOB", value: 128)
!284 = !DIEnumerator(name: "ATA_NIEN", value: 2)
!285 = !DIEnumerator(name: "ATA_LBA", value: 64)
!286 = !DIEnumerator(name: "ATA_DEV1", value: 16)
!287 = !DIEnumerator(name: "ATA_DEVICE_OBS", value: 160)
!288 = !DIEnumerator(name: "ATA_DEVCTL_OBS", value: 8)
!289 = !DIEnumerator(name: "ATA_BUSY", value: 128)
!290 = !DIEnumerator(name: "ATA_DRDY", value: 64)
!291 = !DIEnumerator(name: "ATA_DF", value: 32)
!292 = !DIEnumerator(name: "ATA_DSC", value: 16)
!293 = !DIEnumerator(name: "ATA_DRQ", value: 8)
!294 = !DIEnumerator(name: "ATA_CORR", value: 4)
!295 = !DIEnumerator(name: "ATA_SENSE", value: 2)
!296 = !DIEnumerator(name: "ATA_ERR", value: 1)
!297 = !DIEnumerator(name: "ATA_SRST", value: 4)
!298 = !DIEnumerator(name: "ATA_ICRC", value: 128)
!299 = !DIEnumerator(name: "ATA_BBK", value: 128)
!300 = !DIEnumerator(name: "ATA_UNC", value: 64)
!301 = !DIEnumerator(name: "ATA_MC", value: 32)
!302 = !DIEnumerator(name: "ATA_IDNF", value: 16)
!303 = !DIEnumerator(name: "ATA_MCR", value: 8)
!304 = !DIEnumerator(name: "ATA_ABORTED", value: 4)
!305 = !DIEnumerator(name: "ATA_TRK0NF", value: 2)
!306 = !DIEnumerator(name: "ATA_AMNF", value: 1)
!307 = !DIEnumerator(name: "ATAPI_LFS", value: 240)
!308 = !DIEnumerator(name: "ATAPI_EOM", value: 2)
!309 = !DIEnumerator(name: "ATAPI_ILI", value: 1)
!310 = !DIEnumerator(name: "ATAPI_IO", value: 2)
!311 = !DIEnumerator(name: "ATAPI_COD", value: 1)
!312 = !DIEnumerator(name: "ATA_REG_DATA", value: 0)
!313 = !DIEnumerator(name: "ATA_REG_ERR", value: 1)
!314 = !DIEnumerator(name: "ATA_REG_NSECT", value: 2)
!315 = !DIEnumerator(name: "ATA_REG_LBAL", value: 3)
!316 = !DIEnumerator(name: "ATA_REG_LBAM", value: 4)
!317 = !DIEnumerator(name: "ATA_REG_LBAH", value: 5)
!318 = !DIEnumerator(name: "ATA_REG_DEVICE", value: 6)
!319 = !DIEnumerator(name: "ATA_REG_STATUS", value: 7)
!320 = !DIEnumerator(name: "ATA_REG_FEATURE", value: 1)
!321 = !DIEnumerator(name: "ATA_REG_CMD", value: 7)
!322 = !DIEnumerator(name: "ATA_REG_BYTEL", value: 4)
!323 = !DIEnumerator(name: "ATA_REG_BYTEH", value: 5)
!324 = !DIEnumerator(name: "ATA_REG_DEVSEL", value: 6)
!325 = !DIEnumerator(name: "ATA_REG_IRQ", value: 2)
!326 = !DIEnumerator(name: "ATA_CMD_DEV_RESET", value: 8)
!327 = !DIEnumerator(name: "ATA_CMD_CHK_POWER", value: 229)
!328 = !DIEnumerator(name: "ATA_CMD_STANDBY", value: 226)
!329 = !DIEnumerator(name: "ATA_CMD_IDLE", value: 227)
!330 = !DIEnumerator(name: "ATA_CMD_EDD", value: 144)
!331 = !DIEnumerator(name: "ATA_CMD_DOWNLOAD_MICRO", value: 146)
!332 = !DIEnumerator(name: "ATA_CMD_DOWNLOAD_MICRO_DMA", value: 147)
!333 = !DIEnumerator(name: "ATA_CMD_NOP", value: 0)
!334 = !DIEnumerator(name: "ATA_CMD_FLUSH", value: 231)
!335 = !DIEnumerator(name: "ATA_CMD_FLUSH_EXT", value: 234)
!336 = !DIEnumerator(name: "ATA_CMD_ID_ATA", value: 236)
!337 = !DIEnumerator(name: "ATA_CMD_ID_ATAPI", value: 161)
!338 = !DIEnumerator(name: "ATA_CMD_SERVICE", value: 162)
!339 = !DIEnumerator(name: "ATA_CMD_READ", value: 200)
!340 = !DIEnumerator(name: "ATA_CMD_READ_EXT", value: 37)
!341 = !DIEnumerator(name: "ATA_CMD_READ_QUEUED", value: 38)
!342 = !DIEnumerator(name: "ATA_CMD_READ_STREAM_EXT", value: 43)
!343 = !DIEnumerator(name: "ATA_CMD_READ_STREAM_DMA_EXT", value: 42)
!344 = !DIEnumerator(name: "ATA_CMD_WRITE", value: 202)
!345 = !DIEnumerator(name: "ATA_CMD_WRITE_EXT", value: 53)
!346 = !DIEnumerator(name: "ATA_CMD_WRITE_QUEUED", value: 54)
!347 = !DIEnumerator(name: "ATA_CMD_WRITE_STREAM_EXT", value: 59)
!348 = !DIEnumerator(name: "ATA_CMD_WRITE_STREAM_DMA_EXT", value: 58)
!349 = !DIEnumerator(name: "ATA_CMD_WRITE_FUA_EXT", value: 61)
!350 = !DIEnumerator(name: "ATA_CMD_WRITE_QUEUED_FUA_EXT", value: 62)
!351 = !DIEnumerator(name: "ATA_CMD_FPDMA_READ", value: 96)
!352 = !DIEnumerator(name: "ATA_CMD_FPDMA_WRITE", value: 97)
!353 = !DIEnumerator(name: "ATA_CMD_NCQ_NON_DATA", value: 99)
!354 = !DIEnumerator(name: "ATA_CMD_FPDMA_SEND", value: 100)
!355 = !DIEnumerator(name: "ATA_CMD_FPDMA_RECV", value: 101)
!356 = !DIEnumerator(name: "ATA_CMD_PIO_READ", value: 32)
!357 = !DIEnumerator(name: "ATA_CMD_PIO_READ_EXT", value: 36)
!358 = !DIEnumerator(name: "ATA_CMD_PIO_WRITE", value: 48)
!359 = !DIEnumerator(name: "ATA_CMD_PIO_WRITE_EXT", value: 52)
!360 = !DIEnumerator(name: "ATA_CMD_READ_MULTI", value: 196)
!361 = !DIEnumerator(name: "ATA_CMD_READ_MULTI_EXT", value: 41)
!362 = !DIEnumerator(name: "ATA_CMD_WRITE_MULTI", value: 197)
!363 = !DIEnumerator(name: "ATA_CMD_WRITE_MULTI_EXT", value: 57)
!364 = !DIEnumerator(name: "ATA_CMD_WRITE_MULTI_FUA_EXT", value: 206)
!365 = !DIEnumerator(name: "ATA_CMD_SET_FEATURES", value: 239)
!366 = !DIEnumerator(name: "ATA_CMD_SET_MULTI", value: 198)
!367 = !DIEnumerator(name: "ATA_CMD_PACKET", value: 160)
!368 = !DIEnumerator(name: "ATA_CMD_VERIFY", value: 64)
!369 = !DIEnumerator(name: "ATA_CMD_VERIFY_EXT", value: 66)
!370 = !DIEnumerator(name: "ATA_CMD_WRITE_UNCORR_EXT", value: 69)
!371 = !DIEnumerator(name: "ATA_CMD_STANDBYNOW1", value: 224)
!372 = !DIEnumerator(name: "ATA_CMD_IDLEIMMEDIATE", value: 225)
!373 = !DIEnumerator(name: "ATA_CMD_SLEEP", value: 230)
!374 = !DIEnumerator(name: "ATA_CMD_INIT_DEV_PARAMS", value: 145)
!375 = !DIEnumerator(name: "ATA_CMD_READ_NATIVE_MAX", value: 248)
!376 = !DIEnumerator(name: "ATA_CMD_READ_NATIVE_MAX_EXT", value: 39)
!377 = !DIEnumerator(name: "ATA_CMD_SET_MAX", value: 249)
!378 = !DIEnumerator(name: "ATA_CMD_SET_MAX_EXT", value: 55)
!379 = !DIEnumerator(name: "ATA_CMD_READ_LOG_EXT", value: 47)
!380 = !DIEnumerator(name: "ATA_CMD_WRITE_LOG_EXT", value: 63)
!381 = !DIEnumerator(name: "ATA_CMD_READ_LOG_DMA_EXT", value: 71)
!382 = !DIEnumerator(name: "ATA_CMD_WRITE_LOG_DMA_EXT", value: 87)
!383 = !DIEnumerator(name: "ATA_CMD_TRUSTED_NONDATA", value: 91)
!384 = !DIEnumerator(name: "ATA_CMD_TRUSTED_RCV", value: 92)
!385 = !DIEnumerator(name: "ATA_CMD_TRUSTED_RCV_DMA", value: 93)
!386 = !DIEnumerator(name: "ATA_CMD_TRUSTED_SND", value: 94)
!387 = !DIEnumerator(name: "ATA_CMD_TRUSTED_SND_DMA", value: 95)
!388 = !DIEnumerator(name: "ATA_CMD_PMP_READ", value: 228)
!389 = !DIEnumerator(name: "ATA_CMD_PMP_READ_DMA", value: 233)
!390 = !DIEnumerator(name: "ATA_CMD_PMP_WRITE", value: 232)
!391 = !DIEnumerator(name: "ATA_CMD_PMP_WRITE_DMA", value: 235)
!392 = !DIEnumerator(name: "ATA_CMD_CONF_OVERLAY", value: 177)
!393 = !DIEnumerator(name: "ATA_CMD_SEC_SET_PASS", value: 241)
!394 = !DIEnumerator(name: "ATA_CMD_SEC_UNLOCK", value: 242)
!395 = !DIEnumerator(name: "ATA_CMD_SEC_ERASE_PREP", value: 243)
!396 = !DIEnumerator(name: "ATA_CMD_SEC_ERASE_UNIT", value: 244)
!397 = !DIEnumerator(name: "ATA_CMD_SEC_FREEZE_LOCK", value: 245)
!398 = !DIEnumerator(name: "ATA_CMD_SEC_DISABLE_PASS", value: 246)
!399 = !DIEnumerator(name: "ATA_CMD_CONFIG_STREAM", value: 81)
!400 = !DIEnumerator(name: "ATA_CMD_SMART", value: 176)
!401 = !DIEnumerator(name: "ATA_CMD_MEDIA_LOCK", value: 222)
!402 = !DIEnumerator(name: "ATA_CMD_MEDIA_UNLOCK", value: 223)
!403 = !DIEnumerator(name: "ATA_CMD_DSM", value: 6)
!404 = !DIEnumerator(name: "ATA_CMD_CHK_MED_CRD_TYP", value: 209)
!405 = !DIEnumerator(name: "ATA_CMD_CFA_REQ_EXT_ERR", value: 3)
!406 = !DIEnumerator(name: "ATA_CMD_CFA_WRITE_NE", value: 56)
!407 = !DIEnumerator(name: "ATA_CMD_CFA_TRANS_SECT", value: 135)
!408 = !DIEnumerator(name: "ATA_CMD_CFA_ERASE", value: 192)
!409 = !DIEnumerator(name: "ATA_CMD_CFA_WRITE_MULT_NE", value: 205)
!410 = !DIEnumerator(name: "ATA_CMD_REQ_SENSE_DATA", value: 11)
!411 = !DIEnumerator(name: "ATA_CMD_SANITIZE_DEVICE", value: 180)
!412 = !DIEnumerator(name: "ATA_CMD_ZAC_MGMT_IN", value: 74)
!413 = !DIEnumerator(name: "ATA_CMD_ZAC_MGMT_OUT", value: 159)
!414 = !DIEnumerator(name: "ATA_CMD_RESTORE", value: 16)
!415 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_RECV_RD_LOG_DMA_EXT", value: 1)
!416 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_RECV_ZAC_MGMT_IN", value: 2)
!417 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_SEND_DSM", value: 0)
!418 = !DIEnumerator(name: "ATA_SUBCMD_FPDMA_SEND_WR_LOG_DMA_EXT", value: 2)
!419 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_ABORT_QUEUE", value: 0)
!420 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_SET_FEATURES", value: 5)
!421 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_ZERO_EXT", value: 6)
!422 = !DIEnumerator(name: "ATA_SUBCMD_NCQ_NON_DATA_ZAC_MGMT_OUT", value: 7)
!423 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_IN_REPORT_ZONES", value: 0)
!424 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_CLOSE_ZONE", value: 1)
!425 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_FINISH_ZONE", value: 2)
!426 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_OPEN_ZONE", value: 3)
!427 = !DIEnumerator(name: "ATA_SUBCMD_ZAC_MGMT_OUT_RESET_WRITE_POINTER", value: 4)
!428 = !DIEnumerator(name: "ATA_LOG_DIRECTORY", value: 0)
!429 = !DIEnumerator(name: "ATA_LOG_SATA_NCQ", value: 16)
!430 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA", value: 18)
!431 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV", value: 19)
!432 = !DIEnumerator(name: "ATA_LOG_CDL", value: 24)
!433 = !DIEnumerator(name: "ATA_LOG_CDL_SIZE", value: 512)
!434 = !DIEnumerator(name: "ATA_LOG_IDENTIFY_DEVICE", value: 48)
!435 = !DIEnumerator(name: "ATA_LOG_SENSE_NCQ", value: 15)
!436 = !DIEnumerator(name: "ATA_LOG_SENSE_NCQ_SIZE", value: 1024)
!437 = !DIEnumerator(name: "ATA_LOG_CONCURRENT_POSITIONING_RANGES", value: 71)
!438 = !DIEnumerator(name: "ATA_LOG_SUPPORTED_CAPABILITIES", value: 3)
!439 = !DIEnumerator(name: "ATA_LOG_CURRENT_SETTINGS", value: 4)
!440 = !DIEnumerator(name: "ATA_LOG_SECURITY", value: 6)
!441 = !DIEnumerator(name: "ATA_LOG_SATA_SETTINGS", value: 8)
!442 = !DIEnumerator(name: "ATA_LOG_ZONED_INFORMATION", value: 9)
!443 = !DIEnumerator(name: "ATA_LOG_DEVSLP_OFFSET", value: 48)
!444 = !DIEnumerator(name: "ATA_LOG_DEVSLP_SIZE", value: 8)
!445 = !DIEnumerator(name: "ATA_LOG_DEVSLP_MDAT", value: 0)
!446 = !DIEnumerator(name: "ATA_LOG_DEVSLP_MDAT_MASK", value: 31)
!447 = !DIEnumerator(name: "ATA_LOG_DEVSLP_DETO", value: 1)
!448 = !DIEnumerator(name: "ATA_LOG_DEVSLP_VALID", value: 7)
!449 = !DIEnumerator(name: "ATA_LOG_DEVSLP_VALID_MASK", value: 128)
!450 = !DIEnumerator(name: "ATA_LOG_NCQ_PRIO_OFFSET", value: 9)
!451 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_SUBCMDS_OFFSET", value: 0)
!452 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_SUBCMDS_DSM", value: 1)
!453 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_DSM_OFFSET", value: 4)
!454 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_DSM_TRIM", value: 1)
!455 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_RD_LOG_OFFSET", value: 8)
!456 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_RD_LOG_SUPPORTED", value: 1)
!457 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_WR_LOG_OFFSET", value: 12)
!458 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_WR_LOG_SUPPORTED", value: 1)
!459 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_ZAC_MGMT_OFFSET", value: 16)
!460 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_ZAC_MGMT_OUT_SUPPORTED", value: 1)
!461 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_ZAC_MGMT_IN_SUPPORTED", value: 2)
!462 = !DIEnumerator(name: "ATA_LOG_NCQ_SEND_RECV_SIZE", value: 20)
!463 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_SUBCMDS_OFFSET", value: 0)
!464 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_OFFSET", value: 0)
!465 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_NCQ", value: 1)
!466 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_ALL", value: 2)
!467 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_STREAMING", value: 4)
!468 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_NON_STREAMING", value: 8)
!469 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ABORT_SELECTED", value: 16)
!470 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ZAC_MGMT_OFFSET", value: 28)
!471 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_ZAC_MGMT_OUT", value: 1)
!472 = !DIEnumerator(name: "ATA_LOG_NCQ_NON_DATA_SIZE", value: 64)
!473 = !DIEnumerator(name: "ATA_CMD_READ_LONG", value: 34)
!474 = !DIEnumerator(name: "ATA_CMD_READ_LONG_ONCE", value: 35)
!475 = !DIEnumerator(name: "ATA_CMD_WRITE_LONG", value: 50)
!476 = !DIEnumerator(name: "ATA_CMD_WRITE_LONG_ONCE", value: 51)
!477 = !DIEnumerator(name: "SETFEATURES_XFER", value: 3)
!478 = !DIEnumerator(name: "XFER_UDMA_7", value: 71)
!479 = !DIEnumerator(name: "XFER_UDMA_6", value: 70)
!480 = !DIEnumerator(name: "XFER_UDMA_5", value: 69)
!481 = !DIEnumerator(name: "XFER_UDMA_4", value: 68)
!482 = !DIEnumerator(name: "XFER_UDMA_3", value: 67)
!483 = !DIEnumerator(name: "XFER_UDMA_2", value: 66)
!484 = !DIEnumerator(name: "XFER_UDMA_1", value: 65)
!485 = !DIEnumerator(name: "XFER_UDMA_0", value: 64)
!486 = !DIEnumerator(name: "XFER_MW_DMA_4", value: 36)
!487 = !DIEnumerator(name: "XFER_MW_DMA_3", value: 35)
!488 = !DIEnumerator(name: "XFER_MW_DMA_2", value: 34)
!489 = !DIEnumerator(name: "XFER_MW_DMA_1", value: 33)
!490 = !DIEnumerator(name: "XFER_MW_DMA_0", value: 32)
!491 = !DIEnumerator(name: "XFER_SW_DMA_2", value: 18)
!492 = !DIEnumerator(name: "XFER_SW_DMA_1", value: 17)
!493 = !DIEnumerator(name: "XFER_SW_DMA_0", value: 16)
!494 = !DIEnumerator(name: "XFER_PIO_6", value: 14)
!495 = !DIEnumerator(name: "XFER_PIO_5", value: 13)
!496 = !DIEnumerator(name: "XFER_PIO_4", value: 12)
!497 = !DIEnumerator(name: "XFER_PIO_3", value: 11)
!498 = !DIEnumerator(name: "XFER_PIO_2", value: 10)
!499 = !DIEnumerator(name: "XFER_PIO_1", value: 9)
!500 = !DIEnumerator(name: "XFER_PIO_0", value: 8)
!501 = !DIEnumerator(name: "XFER_PIO_SLOW", value: 0)
!502 = !DIEnumerator(name: "SETFEATURES_WC_ON", value: 2)
!503 = !DIEnumerator(name: "SETFEATURES_WC_OFF", value: 130)
!504 = !DIEnumerator(name: "SETFEATURES_RA_ON", value: 170)
!505 = !DIEnumerator(name: "SETFEATURES_RA_OFF", value: 85)
!506 = !DIEnumerator(name: "SETFEATURES_AAM_ON", value: 66)
!507 = !DIEnumerator(name: "SETFEATURES_AAM_OFF", value: 194)
!508 = !DIEnumerator(name: "SETFEATURES_SPINUP", value: 7)
!509 = !DIEnumerator(name: "SETFEATURES_SPINUP_TIMEOUT", value: 30000)
!510 = !DIEnumerator(name: "SETFEATURES_SATA_ENABLE", value: 16)
!511 = !DIEnumerator(name: "SETFEATURES_SATA_DISABLE", value: 144)
!512 = !DIEnumerator(name: "SETFEATURES_CDL", value: 13)
!513 = !DIEnumerator(name: "SATA_FPDMA_OFFSET", value: 1)
!514 = !DIEnumerator(name: "SATA_FPDMA_AA", value: 2)
!515 = !DIEnumerator(name: "SATA_DIPM", value: 3)
!516 = !DIEnumerator(name: "SATA_FPDMA_IN_ORDER", value: 4)
!517 = !DIEnumerator(name: "SATA_AN", value: 5)
!518 = !DIEnumerator(name: "SATA_SSP", value: 6)
!519 = !DIEnumerator(name: "SATA_DEVSLP", value: 9)
!520 = !DIEnumerator(name: "SETFEATURE_SENSE_DATA", value: 195)
!521 = !DIEnumerator(name: "SETFEATURE_SENSE_DATA_SUCC_NCQ", value: 196)
!522 = !DIEnumerator(name: "ATA_SET_MAX_ADDR", value: 0)
!523 = !DIEnumerator(name: "ATA_SET_MAX_PASSWD", value: 1)
!524 = !DIEnumerator(name: "ATA_SET_MAX_LOCK", value: 2)
!525 = !DIEnumerator(name: "ATA_SET_MAX_UNLOCK", value: 3)
!526 = !DIEnumerator(name: "ATA_SET_MAX_FREEZE_LOCK", value: 4)
!527 = !DIEnumerator(name: "ATA_SET_MAX_PASSWD_DMA", value: 5)
!528 = !DIEnumerator(name: "ATA_SET_MAX_UNLOCK_DMA", value: 6)
!529 = !DIEnumerator(name: "ATA_DCO_RESTORE", value: 192)
!530 = !DIEnumerator(name: "ATA_DCO_FREEZE_LOCK", value: 193)
!531 = !DIEnumerator(name: "ATA_DCO_IDENTIFY", value: 194)
!532 = !DIEnumerator(name: "ATA_DCO_SET", value: 195)
!533 = !DIEnumerator(name: "ATA_SMART_ENABLE", value: 216)
!534 = !DIEnumerator(name: "ATA_SMART_READ_VALUES", value: 208)
!535 = !DIEnumerator(name: "ATA_SMART_READ_THRESHOLDS", value: 209)
!536 = !DIEnumerator(name: "ATA_DSM_TRIM", value: 1)
!537 = !DIEnumerator(name: "ATA_SMART_LBAM_PASS", value: 79)
!538 = !DIEnumerator(name: "ATA_SMART_LBAH_PASS", value: 194)
!539 = !DIEnumerator(name: "ATAPI_PKT_DMA", value: 1)
!540 = !DIEnumerator(name: "ATAPI_DMADIR", value: 4)
!541 = !DIEnumerator(name: "ATAPI_CDB_LEN", value: 16)
!542 = !DIEnumerator(name: "SATA_PMP_MAX_PORTS", value: 15)
!543 = !DIEnumerator(name: "SATA_PMP_CTRL_PORT", value: 15)
!544 = !DIEnumerator(name: "SATA_PMP_GSCR_DWORDS", value: 128)
!545 = !DIEnumerator(name: "SATA_PMP_GSCR_PROD_ID", value: 0)
!546 = !DIEnumerator(name: "SATA_PMP_GSCR_REV", value: 1)
!547 = !DIEnumerator(name: "SATA_PMP_GSCR_PORT_INFO", value: 2)
!548 = !DIEnumerator(name: "SATA_PMP_GSCR_ERROR", value: 32)
!549 = !DIEnumerator(name: "SATA_PMP_GSCR_ERROR_EN", value: 33)
!550 = !DIEnumerator(name: "SATA_PMP_GSCR_FEAT", value: 64)
!551 = !DIEnumerator(name: "SATA_PMP_GSCR_FEAT_EN", value: 96)
!552 = !DIEnumerator(name: "SATA_PMP_PSCR_STATUS", value: 0)
!553 = !DIEnumerator(name: "SATA_PMP_PSCR_ERROR", value: 1)
!554 = !DIEnumerator(name: "SATA_PMP_PSCR_CONTROL", value: 2)
!555 = !DIEnumerator(name: "SATA_PMP_FEAT_BIST", value: 1)
!556 = !DIEnumerator(name: "SATA_PMP_FEAT_PMREQ", value: 2)
!557 = !DIEnumerator(name: "SATA_PMP_FEAT_DYNSSC", value: 4)
!558 = !DIEnumerator(name: "SATA_PMP_FEAT_NOTIFY", value: 8)
!559 = !DIEnumerator(name: "ATA_CBL_NONE", value: 0)
!560 = !DIEnumerator(name: "ATA_CBL_PATA40", value: 1)
!561 = !DIEnumerator(name: "ATA_CBL_PATA80", value: 2)
!562 = !DIEnumerator(name: "ATA_CBL_PATA40_SHORT", value: 3)
!563 = !DIEnumerator(name: "ATA_CBL_PATA_UNK", value: 4)
!564 = !DIEnumerator(name: "ATA_CBL_PATA_IGN", value: 5)
!565 = !DIEnumerator(name: "ATA_CBL_SATA", value: 6)
!566 = !DIEnumerator(name: "SCR_STATUS", value: 0)
!567 = !DIEnumerator(name: "SCR_ERROR", value: 1)
!568 = !DIEnumerator(name: "SCR_CONTROL", value: 2)
!569 = !DIEnumerator(name: "SCR_ACTIVE", value: 3)
!570 = !DIEnumerator(name: "SCR_NOTIFICATION", value: 4)
!571 = !DIEnumerator(name: "SERR_DATA_RECOVERED", value: 1)
!572 = !DIEnumerator(name: "SERR_COMM_RECOVERED", value: 2)
!573 = !DIEnumerator(name: "SERR_DATA", value: 256)
!574 = !DIEnumerator(name: "SERR_PERSISTENT", value: 512)
!575 = !DIEnumerator(name: "SERR_PROTOCOL", value: 1024)
!576 = !DIEnumerator(name: "SERR_INTERNAL", value: 2048)
!577 = !DIEnumerator(name: "SERR_PHYRDY_CHG", value: 65536)
!578 = !DIEnumerator(name: "SERR_PHY_INT_ERR", value: 131072)
!579 = !DIEnumerator(name: "SERR_COMM_WAKE", value: 262144)
!580 = !DIEnumerator(name: "SERR_10B_8B_ERR", value: 524288)
!581 = !DIEnumerator(name: "SERR_DISPARITY", value: 1048576)
!582 = !DIEnumerator(name: "SERR_CRC", value: 2097152)
!583 = !DIEnumerator(name: "SERR_HANDSHAKE", value: 4194304)
!584 = !DIEnumerator(name: "SERR_LINK_SEQ_ERR", value: 8388608)
!585 = !DIEnumerator(name: "SERR_TRANS_ST_ERROR", value: 16777216)
!586 = !DIEnumerator(name: "SERR_UNRECOG_FIS", value: 33554432)
!587 = !DIEnumerator(name: "SERR_DEV_XCHG", value: 67108864)
!588 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !589, line: 58, baseType: !168, size: 32, elements: !590)
!589 = !DIFile(filename: "./include/linux/libata.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "273a170c323c07a494b452561b925358")
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842}
!591 = !DIEnumerator(name: "LIBATA_MAX_PRD", value: 128)
!592 = !DIEnumerator(name: "LIBATA_DUMB_MAX_PRD", value: 64)
!593 = !DIEnumerator(name: "ATA_DEF_QUEUE", value: 1)
!594 = !DIEnumerator(name: "ATA_MAX_QUEUE", value: 32)
!595 = !DIEnumerator(name: "ATA_TAG_INTERNAL", value: 32)
!596 = !DIEnumerator(name: "ATA_SHORT_PAUSE", value: 16)
!597 = !DIEnumerator(name: "ATAPI_MAX_DRAIN", value: 16384)
!598 = !DIEnumerator(name: "ATA_ALL_DEVICES", value: 3)
!599 = !DIEnumerator(name: "ATA_SHT_EMULATED", value: 1)
!600 = !DIEnumerator(name: "ATA_SHT_THIS_ID", value: -1)
!601 = !DIEnumerator(name: "ATA_TFLAG_LBA48", value: 1)
!602 = !DIEnumerator(name: "ATA_TFLAG_ISADDR", value: 2)
!603 = !DIEnumerator(name: "ATA_TFLAG_DEVICE", value: 4)
!604 = !DIEnumerator(name: "ATA_TFLAG_WRITE", value: 8)
!605 = !DIEnumerator(name: "ATA_TFLAG_LBA", value: 16)
!606 = !DIEnumerator(name: "ATA_TFLAG_FUA", value: 32)
!607 = !DIEnumerator(name: "ATA_TFLAG_POLLING", value: 64)
!608 = !DIEnumerator(name: "ATA_DFLAG_LBA", value: 1)
!609 = !DIEnumerator(name: "ATA_DFLAG_LBA48", value: 2)
!610 = !DIEnumerator(name: "ATA_DFLAG_CDB_INTR", value: 4)
!611 = !DIEnumerator(name: "ATA_DFLAG_NCQ", value: 8)
!612 = !DIEnumerator(name: "ATA_DFLAG_FLUSH_EXT", value: 16)
!613 = !DIEnumerator(name: "ATA_DFLAG_ACPI_PENDING", value: 32)
!614 = !DIEnumerator(name: "ATA_DFLAG_ACPI_FAILED", value: 64)
!615 = !DIEnumerator(name: "ATA_DFLAG_AN", value: 128)
!616 = !DIEnumerator(name: "ATA_DFLAG_TRUSTED", value: 256)
!617 = !DIEnumerator(name: "ATA_DFLAG_FUA", value: 512)
!618 = !DIEnumerator(name: "ATA_DFLAG_DMADIR", value: 1024)
!619 = !DIEnumerator(name: "ATA_DFLAG_NCQ_SEND_RECV", value: 2048)
!620 = !DIEnumerator(name: "ATA_DFLAG_NCQ_PRIO", value: 4096)
!621 = !DIEnumerator(name: "ATA_DFLAG_CDL", value: 8192)
!622 = !DIEnumerator(name: "ATA_DFLAG_CFG_MASK", value: 16383)
!623 = !DIEnumerator(name: "ATA_DFLAG_PIO", value: 16384)
!624 = !DIEnumerator(name: "ATA_DFLAG_NCQ_OFF", value: 32768)
!625 = !DIEnumerator(name: "ATA_DFLAG_SLEEPING", value: 65536)
!626 = !DIEnumerator(name: "ATA_DFLAG_DUBIOUS_XFER", value: 131072)
!627 = !DIEnumerator(name: "ATA_DFLAG_NO_UNLOAD", value: 262144)
!628 = !DIEnumerator(name: "ATA_DFLAG_UNLOCK_HPA", value: 524288)
!629 = !DIEnumerator(name: "ATA_DFLAG_INIT_MASK", value: 1048575)
!630 = !DIEnumerator(name: "ATA_DFLAG_NCQ_PRIO_ENABLED", value: 1048576)
!631 = !DIEnumerator(name: "ATA_DFLAG_CDL_ENABLED", value: 2097152)
!632 = !DIEnumerator(name: "ATA_DFLAG_RESUMING", value: 4194304)
!633 = !DIEnumerator(name: "ATA_DFLAG_DETACH", value: 16777216)
!634 = !DIEnumerator(name: "ATA_DFLAG_DETACHED", value: 33554432)
!635 = !DIEnumerator(name: "ATA_DFLAG_DA", value: 67108864)
!636 = !DIEnumerator(name: "ATA_DFLAG_DEVSLP", value: 134217728)
!637 = !DIEnumerator(name: "ATA_DFLAG_ACPI_DISABLED", value: 268435456)
!638 = !DIEnumerator(name: "ATA_DFLAG_D_SENSE", value: 536870912)
!639 = !DIEnumerator(name: "ATA_DFLAG_ZAC", value: 1073741824)
!640 = !DIEnumerator(name: "ATA_DFLAG_FEATURES_MASK", value: 201341696)
!641 = !DIEnumerator(name: "ATA_DEV_UNKNOWN", value: 0)
!642 = !DIEnumerator(name: "ATA_DEV_ATA", value: 1)
!643 = !DIEnumerator(name: "ATA_DEV_ATA_UNSUP", value: 2)
!644 = !DIEnumerator(name: "ATA_DEV_ATAPI", value: 3)
!645 = !DIEnumerator(name: "ATA_DEV_ATAPI_UNSUP", value: 4)
!646 = !DIEnumerator(name: "ATA_DEV_PMP", value: 5)
!647 = !DIEnumerator(name: "ATA_DEV_PMP_UNSUP", value: 6)
!648 = !DIEnumerator(name: "ATA_DEV_SEMB", value: 7)
!649 = !DIEnumerator(name: "ATA_DEV_SEMB_UNSUP", value: 8)
!650 = !DIEnumerator(name: "ATA_DEV_ZAC", value: 9)
!651 = !DIEnumerator(name: "ATA_DEV_ZAC_UNSUP", value: 10)
!652 = !DIEnumerator(name: "ATA_DEV_NONE", value: 11)
!653 = !DIEnumerator(name: "ATA_LFLAG_NO_HRST", value: 2)
!654 = !DIEnumerator(name: "ATA_LFLAG_NO_SRST", value: 4)
!655 = !DIEnumerator(name: "ATA_LFLAG_ASSUME_ATA", value: 8)
!656 = !DIEnumerator(name: "ATA_LFLAG_ASSUME_SEMB", value: 16)
!657 = !DIEnumerator(name: "ATA_LFLAG_ASSUME_CLASS", value: 24)
!658 = !DIEnumerator(name: "ATA_LFLAG_NO_RETRY", value: 32)
!659 = !DIEnumerator(name: "ATA_LFLAG_DISABLED", value: 64)
!660 = !DIEnumerator(name: "ATA_LFLAG_SW_ACTIVITY", value: 128)
!661 = !DIEnumerator(name: "ATA_LFLAG_NO_LPM", value: 256)
!662 = !DIEnumerator(name: "ATA_LFLAG_RST_ONCE", value: 512)
!663 = !DIEnumerator(name: "ATA_LFLAG_CHANGED", value: 1024)
!664 = !DIEnumerator(name: "ATA_LFLAG_NO_DEBOUNCE_DELAY", value: 2048)
!665 = !DIEnumerator(name: "ATA_FLAG_SLAVE_POSS", value: 1)
!666 = !DIEnumerator(name: "ATA_FLAG_SATA", value: 2)
!667 = !DIEnumerator(name: "ATA_FLAG_NO_LPM", value: 4)
!668 = !DIEnumerator(name: "ATA_FLAG_NO_LOG_PAGE", value: 32)
!669 = !DIEnumerator(name: "ATA_FLAG_NO_ATAPI", value: 64)
!670 = !DIEnumerator(name: "ATA_FLAG_PIO_DMA", value: 128)
!671 = !DIEnumerator(name: "ATA_FLAG_PIO_LBA48", value: 256)
!672 = !DIEnumerator(name: "ATA_FLAG_PIO_POLLING", value: 512)
!673 = !DIEnumerator(name: "ATA_FLAG_NCQ", value: 1024)
!674 = !DIEnumerator(name: "ATA_FLAG_NO_POWEROFF_SPINDOWN", value: 2048)
!675 = !DIEnumerator(name: "ATA_FLAG_NO_HIBERNATE_SPINDOWN", value: 4096)
!676 = !DIEnumerator(name: "ATA_FLAG_DEBUGMSG", value: 8192)
!677 = !DIEnumerator(name: "ATA_FLAG_FPDMA_AA", value: 16384)
!678 = !DIEnumerator(name: "ATA_FLAG_IGN_SIMPLEX", value: 32768)
!679 = !DIEnumerator(name: "ATA_FLAG_NO_IORDY", value: 65536)
!680 = !DIEnumerator(name: "ATA_FLAG_ACPI_SATA", value: 131072)
!681 = !DIEnumerator(name: "ATA_FLAG_AN", value: 262144)
!682 = !DIEnumerator(name: "ATA_FLAG_PMP", value: 524288)
!683 = !DIEnumerator(name: "ATA_FLAG_FPDMA_AUX", value: 1048576)
!684 = !DIEnumerator(name: "ATA_FLAG_EM", value: 2097152)
!685 = !DIEnumerator(name: "ATA_FLAG_SW_ACTIVITY", value: 4194304)
!686 = !DIEnumerator(name: "ATA_FLAG_NO_DIPM", value: 8388608)
!687 = !DIEnumerator(name: "ATA_FLAG_SAS_HOST", value: 16777216)
!688 = !DIEnumerator(name: "ATA_PFLAG_EH_PENDING", value: 1)
!689 = !DIEnumerator(name: "ATA_PFLAG_EH_IN_PROGRESS", value: 2)
!690 = !DIEnumerator(name: "ATA_PFLAG_FROZEN", value: 4)
!691 = !DIEnumerator(name: "ATA_PFLAG_RECOVERED", value: 8)
!692 = !DIEnumerator(name: "ATA_PFLAG_LOADING", value: 16)
!693 = !DIEnumerator(name: "ATA_PFLAG_SCSI_HOTPLUG", value: 64)
!694 = !DIEnumerator(name: "ATA_PFLAG_INITIALIZING", value: 128)
!695 = !DIEnumerator(name: "ATA_PFLAG_RESETTING", value: 256)
!696 = !DIEnumerator(name: "ATA_PFLAG_UNLOADING", value: 512)
!697 = !DIEnumerator(name: "ATA_PFLAG_UNLOADED", value: 1024)
!698 = !DIEnumerator(name: "ATA_PFLAG_RESUMING", value: 65536)
!699 = !DIEnumerator(name: "ATA_PFLAG_SUSPENDED", value: 131072)
!700 = !DIEnumerator(name: "ATA_PFLAG_PM_PENDING", value: 262144)
!701 = !DIEnumerator(name: "ATA_PFLAG_INIT_GTM_VALID", value: 524288)
!702 = !DIEnumerator(name: "ATA_PFLAG_PIO32", value: 1048576)
!703 = !DIEnumerator(name: "ATA_PFLAG_PIO32CHANGE", value: 2097152)
!704 = !DIEnumerator(name: "ATA_PFLAG_EXTERNAL", value: 4194304)
!705 = !DIEnumerator(name: "ATA_QCFLAG_ACTIVE", value: 1)
!706 = !DIEnumerator(name: "ATA_QCFLAG_DMAMAP", value: 2)
!707 = !DIEnumerator(name: "ATA_QCFLAG_RTF_FILLED", value: 4)
!708 = !DIEnumerator(name: "ATA_QCFLAG_IO", value: 8)
!709 = !DIEnumerator(name: "ATA_QCFLAG_RESULT_TF", value: 16)
!710 = !DIEnumerator(name: "ATA_QCFLAG_CLEAR_EXCL", value: 32)
!711 = !DIEnumerator(name: "ATA_QCFLAG_QUIET", value: 64)
!712 = !DIEnumerator(name: "ATA_QCFLAG_RETRY", value: 128)
!713 = !DIEnumerator(name: "ATA_QCFLAG_HAS_CDL", value: 256)
!714 = !DIEnumerator(name: "ATA_QCFLAG_EH", value: 65536)
!715 = !DIEnumerator(name: "ATA_QCFLAG_SENSE_VALID", value: 131072)
!716 = !DIEnumerator(name: "ATA_QCFLAG_EH_SCHEDULED", value: 262144)
!717 = !DIEnumerator(name: "ATA_QCFLAG_EH_SUCCESS_CMD", value: 524288)
!718 = !DIEnumerator(name: "ATA_HOST_SIMPLEX", value: 1)
!719 = !DIEnumerator(name: "ATA_HOST_STARTED", value: 2)
!720 = !DIEnumerator(name: "ATA_HOST_PARALLEL_SCAN", value: 4)
!721 = !DIEnumerator(name: "ATA_HOST_IGNORE_ATA", value: 8)
!722 = !DIEnumerator(name: "ATA_HOST_NO_PART", value: 16)
!723 = !DIEnumerator(name: "ATA_HOST_NO_SSC", value: 32)
!724 = !DIEnumerator(name: "ATA_HOST_NO_DEVSLP", value: 64)
!725 = !DIEnumerator(name: "ATA_TMOUT_BOOT", value: 30000)
!726 = !DIEnumerator(name: "ATA_TMOUT_BOOT_QUICK", value: 7000)
!727 = !DIEnumerator(name: "ATA_TMOUT_INTERNAL_QUICK", value: 5000)
!728 = !DIEnumerator(name: "ATA_TMOUT_MAX_PARK", value: 30000)
!729 = !DIEnumerator(name: "ATA_TMOUT_FF_WAIT_LONG", value: 2000)
!730 = !DIEnumerator(name: "ATA_TMOUT_FF_WAIT", value: 800)
!731 = !DIEnumerator(name: "ATA_WAIT_AFTER_RESET", value: 150)
!732 = !DIEnumerator(name: "ATA_TMOUT_PMP_SRST_WAIT", value: 10000)
!733 = !DIEnumerator(name: "ATA_TMOUT_SPURIOUS_PHY", value: 10000)
!734 = !DIEnumerator(name: "BUS_UNKNOWN", value: 0)
!735 = !DIEnumerator(name: "BUS_DMA", value: 1)
!736 = !DIEnumerator(name: "BUS_IDLE", value: 2)
!737 = !DIEnumerator(name: "BUS_NOINTR", value: 3)
!738 = !DIEnumerator(name: "BUS_NODATA", value: 4)
!739 = !DIEnumerator(name: "BUS_TIMER", value: 5)
!740 = !DIEnumerator(name: "BUS_PIO", value: 6)
!741 = !DIEnumerator(name: "BUS_EDD", value: 7)
!742 = !DIEnumerator(name: "BUS_IDENTIFY", value: 8)
!743 = !DIEnumerator(name: "BUS_PACKET", value: 9)
!744 = !DIEnumerator(name: "PORT_UNKNOWN", value: 0)
!745 = !DIEnumerator(name: "PORT_ENABLED", value: 1)
!746 = !DIEnumerator(name: "PORT_DISABLED", value: 2)
!747 = !DIEnumerator(name: "ATA_NR_PIO_MODES", value: 7)
!748 = !DIEnumerator(name: "ATA_NR_MWDMA_MODES", value: 5)
!749 = !DIEnumerator(name: "ATA_NR_UDMA_MODES", value: 8)
!750 = !DIEnumerator(name: "ATA_SHIFT_PIO", value: 0)
!751 = !DIEnumerator(name: "ATA_SHIFT_MWDMA", value: 7)
!752 = !DIEnumerator(name: "ATA_SHIFT_UDMA", value: 12)
!753 = !DIEnumerator(name: "ATA_SHIFT_PRIO", value: 6)
!754 = !DIEnumerator(name: "ATA_PRIO_HIGH", value: 2)
!755 = !DIEnumerator(name: "ATA_DMA_PAD_SZ", value: 4)
!756 = !DIEnumerator(name: "ATA_ERING_SIZE", value: 32)
!757 = !DIEnumerator(name: "ATA_DEFER_LINK", value: 1)
!758 = !DIEnumerator(name: "ATA_DEFER_PORT", value: 2)
!759 = !DIEnumerator(name: "ATA_EH_DESC_LEN", value: 80)
!760 = !DIEnumerator(name: "ATA_EH_REVALIDATE", value: 1)
!761 = !DIEnumerator(name: "ATA_EH_SOFTRESET", value: 2)
!762 = !DIEnumerator(name: "ATA_EH_HARDRESET", value: 4)
!763 = !DIEnumerator(name: "ATA_EH_RESET", value: 6)
!764 = !DIEnumerator(name: "ATA_EH_ENABLE_LINK", value: 8)
!765 = !DIEnumerator(name: "ATA_EH_PARK", value: 32)
!766 = !DIEnumerator(name: "ATA_EH_GET_SUCCESS_SENSE", value: 64)
!767 = !DIEnumerator(name: "ATA_EH_SET_ACTIVE", value: 128)
!768 = !DIEnumerator(name: "ATA_EH_PERDEV_MASK", value: 225)
!769 = !DIEnumerator(name: "ATA_EH_ALL_ACTIONS", value: 15)
!770 = !DIEnumerator(name: "ATA_EHI_HOTPLUGGED", value: 1)
!771 = !DIEnumerator(name: "ATA_EHI_NO_AUTOPSY", value: 4)
!772 = !DIEnumerator(name: "ATA_EHI_QUIET", value: 8)
!773 = !DIEnumerator(name: "ATA_EHI_NO_RECOVERY", value: 16)
!774 = !DIEnumerator(name: "ATA_EHI_DID_SOFTRESET", value: 65536)
!775 = !DIEnumerator(name: "ATA_EHI_DID_HARDRESET", value: 131072)
!776 = !DIEnumerator(name: "ATA_EHI_PRINTINFO", value: 262144)
!777 = !DIEnumerator(name: "ATA_EHI_SETMODE", value: 524288)
!778 = !DIEnumerator(name: "ATA_EHI_POST_SETMODE", value: 1048576)
!779 = !DIEnumerator(name: "ATA_EHI_DID_RESET", value: 196608)
!780 = !DIEnumerator(name: "ATA_EHI_TO_SLAVE_MASK", value: 12)
!781 = !DIEnumerator(name: "ATA_EH_MAX_TRIES", value: 5)
!782 = !DIEnumerator(name: "ATA_LINK_RESUME_TRIES", value: 5)
!783 = !DIEnumerator(name: "ATA_EH_DEV_TRIES", value: 3)
!784 = !DIEnumerator(name: "ATA_EH_PMP_TRIES", value: 5)
!785 = !DIEnumerator(name: "ATA_EH_PMP_LINK_TRIES", value: 3)
!786 = !DIEnumerator(name: "SATA_PMP_RW_TIMEOUT", value: 3000)
!787 = !DIEnumerator(name: "ATA_EH_CMD_TIMEOUT_TABLE_SIZE", value: 8)
!788 = !DIEnumerator(name: "ATA_HORKAGE_DIAGNOSTIC", value: 1)
!789 = !DIEnumerator(name: "ATA_HORKAGE_NODMA", value: 2)
!790 = !DIEnumerator(name: "ATA_HORKAGE_NONCQ", value: 4)
!791 = !DIEnumerator(name: "ATA_HORKAGE_MAX_SEC_128", value: 8)
!792 = !DIEnumerator(name: "ATA_HORKAGE_BROKEN_HPA", value: 16)
!793 = !DIEnumerator(name: "ATA_HORKAGE_DISABLE", value: 32)
!794 = !DIEnumerator(name: "ATA_HORKAGE_HPA_SIZE", value: 64)
!795 = !DIEnumerator(name: "ATA_HORKAGE_IVB", value: 256)
!796 = !DIEnumerator(name: "ATA_HORKAGE_STUCK_ERR", value: 512)
!797 = !DIEnumerator(name: "ATA_HORKAGE_BRIDGE_OK", value: 1024)
!798 = !DIEnumerator(name: "ATA_HORKAGE_ATAPI_MOD16_DMA", value: 2048)
!799 = !DIEnumerator(name: "ATA_HORKAGE_FIRMWARE_WARN", value: 4096)
!800 = !DIEnumerator(name: "ATA_HORKAGE_1_5_GBPS", value: 8192)
!801 = !DIEnumerator(name: "ATA_HORKAGE_NOSETXFER", value: 16384)
!802 = !DIEnumerator(name: "ATA_HORKAGE_BROKEN_FPDMA_AA", value: 32768)
!803 = !DIEnumerator(name: "ATA_HORKAGE_DUMP_ID", value: 65536)
!804 = !DIEnumerator(name: "ATA_HORKAGE_MAX_SEC_LBA48", value: 131072)
!805 = !DIEnumerator(name: "ATA_HORKAGE_ATAPI_DMADIR", value: 262144)
!806 = !DIEnumerator(name: "ATA_HORKAGE_NO_NCQ_TRIM", value: 524288)
!807 = !DIEnumerator(name: "ATA_HORKAGE_NOLPM", value: 1048576)
!808 = !DIEnumerator(name: "ATA_HORKAGE_WD_BROKEN_LPM", value: 2097152)
!809 = !DIEnumerator(name: "ATA_HORKAGE_ZERO_AFTER_TRIM", value: 4194304)
!810 = !DIEnumerator(name: "ATA_HORKAGE_NO_DMA_LOG", value: 8388608)
!811 = !DIEnumerator(name: "ATA_HORKAGE_NOTRIM", value: 16777216)
!812 = !DIEnumerator(name: "ATA_HORKAGE_MAX_SEC_1024", value: 33554432)
!813 = !DIEnumerator(name: "ATA_HORKAGE_MAX_TRIM_128M", value: 67108864)
!814 = !DIEnumerator(name: "ATA_HORKAGE_NO_NCQ_ON_ATI", value: 134217728)
!815 = !DIEnumerator(name: "ATA_HORKAGE_NO_ID_DEV_LOG", value: 268435456)
!816 = !DIEnumerator(name: "ATA_HORKAGE_NO_LOG_DIR", value: 536870912)
!817 = !DIEnumerator(name: "ATA_HORKAGE_NO_FUA", value: 1073741824)
!818 = !DIEnumerator(name: "ATA_DMA_MASK_ATA", value: 1)
!819 = !DIEnumerator(name: "ATA_DMA_MASK_ATAPI", value: 2)
!820 = !DIEnumerator(name: "ATA_DMA_MASK_CFA", value: 4)
!821 = !DIEnumerator(name: "ATAPI_READ", value: 0)
!822 = !DIEnumerator(name: "ATAPI_WRITE", value: 1)
!823 = !DIEnumerator(name: "ATAPI_READ_CD", value: 2)
!824 = !DIEnumerator(name: "ATAPI_PASS_THRU", value: 3)
!825 = !DIEnumerator(name: "ATAPI_MISC", value: 4)
!826 = !DIEnumerator(name: "ATA_TIMING_SETUP", value: 1)
!827 = !DIEnumerator(name: "ATA_TIMING_ACT8B", value: 2)
!828 = !DIEnumerator(name: "ATA_TIMING_REC8B", value: 4)
!829 = !DIEnumerator(name: "ATA_TIMING_CYC8B", value: 8)
!830 = !DIEnumerator(name: "ATA_TIMING_8BIT", value: 14)
!831 = !DIEnumerator(name: "ATA_TIMING_ACTIVE", value: 16)
!832 = !DIEnumerator(name: "ATA_TIMING_RECOVER", value: 32)
!833 = !DIEnumerator(name: "ATA_TIMING_DMACK_HOLD", value: 64)
!834 = !DIEnumerator(name: "ATA_TIMING_CYCLE", value: 128)
!835 = !DIEnumerator(name: "ATA_TIMING_UDMA", value: 256)
!836 = !DIEnumerator(name: "ATA_TIMING_ALL", value: 511)
!837 = !DIEnumerator(name: "ATA_ACPI_FILTER_SETXFER", value: 1)
!838 = !DIEnumerator(name: "ATA_ACPI_FILTER_LOCK", value: 2)
!839 = !DIEnumerator(name: "ATA_ACPI_FILTER_DIPM", value: 4)
!840 = !DIEnumerator(name: "ATA_ACPI_FILTER_FPDMA_OFFSET", value: 8)
!841 = !DIEnumerator(name: "ATA_ACPI_FILTER_FPDMA_AA", value: 16)
!842 = !DIEnumerator(name: "ATA_ACPI_FILTER_DEFAULT", value: 7)
!843 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ata_completion_errors", file: !589, line: 458, baseType: !844, size: 32, elements: !845)
!844 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!846 = !DIEnumerator(name: "AC_ERR_OK", value: 0)
!847 = !DIEnumerator(name: "AC_ERR_DEV", value: 1)
!848 = !DIEnumerator(name: "AC_ERR_HSM", value: 2)
!849 = !DIEnumerator(name: "AC_ERR_TIMEOUT", value: 4)
!850 = !DIEnumerator(name: "AC_ERR_MEDIA", value: 8)
!851 = !DIEnumerator(name: "AC_ERR_ATA_BUS", value: 16)
!852 = !DIEnumerator(name: "AC_ERR_HOST_BUS", value: 32)
!853 = !DIEnumerator(name: "AC_ERR_SYSTEM", value: 64)
!854 = !DIEnumerator(name: "AC_ERR_INVALID", value: 128)
!855 = !DIEnumerator(name: "AC_ERR_OTHER", value: 256)
!856 = !DIEnumerator(name: "AC_ERR_NODEV_HINT", value: 512)
!857 = !DIEnumerator(name: "AC_ERR_NCQ", value: 1024)
!858 = !{!0, !7, !12, !14, !19, !24, !26, !28, !33, !35, !37, !42, !44, !49, !51, !56, !58, !63, !65, !67, !69, !74, !76, !78, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !114, !116, !118, !120, !122, !124, !126, !131, !133, !138, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!859 = !{i32 7, !"Dwarf Version", i32 5}
!860 = !{i32 2, !"Debug Info Version", i32 3}
!861 = !{i32 1, !"wchar_size", i32 2}
!862 = !{i32 8, !"cf-protection-branch", i32 1}
!863 = !{i32 4, !"function_return_thunk_extern", i32 1}
!864 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!865 = !{i32 1, !"Code Model", i32 2}
!866 = !{i32 1, !"override-stack-alignment", i32 8}
!867 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!868 = distinct !DISubprogram(name: "libata_trace_parse_status", scope: !2, file: !2, line: 14, type: !869, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !898)
!869 = !DISubroutineType(types: !870)
!870 = !{!871, !873, !897}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !875, line: 14, size: 33088, elements: !876)
!875 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!876 = !{!877, !881, !895, !896}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !874, file: !875, line: 15, baseType: !878, size: 32768)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 4096)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !874, file: !875, line: 16, baseType: !882, size: 192, offset: 32768)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !883, line: 18, size: 192, elements: !884)
!883 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!884 = !{!885, !887, !894}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !882, file: !883, line: 19, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !882, file: !883, line: 20, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !889, line: 61, baseType: !890)
!889 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !891, line: 72, baseType: !892)
!891 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !891, line: 16, baseType: !893)
!893 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !882, file: !883, line: 21, baseType: !888, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !874, file: !875, line: 17, baseType: !888, size: 64, offset: 32960)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !874, file: !875, line: 18, baseType: !168, size: 32, offset: 33024)
!897 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!898 = !{!899, !900, !901}
!899 = !DILocalVariable(name: "p", arg: 1, scope: !868, file: !2, line: 14, type: !873)
!900 = !DILocalVariable(name: "status", arg: 2, scope: !868, file: !2, line: 14, type: !897)
!901 = !DILocalVariable(name: "ret", scope: !868, file: !2, line: 16, type: !871)
!902 = !DILocation(line: 14, column: 45, scope: !868)
!903 = !DILocation(line: 14, column: 62, scope: !868)
!904 = !DILocation(line: 16, column: 2, scope: !868)
!905 = !DILocation(line: 16, column: 14, scope: !868)
!906 = !DILocation(line: 16, column: 41, scope: !868)
!907 = !DILocation(line: 16, column: 20, scope: !868)
!908 = !DILocation(line: 18, column: 19, scope: !868)
!909 = !DILocation(line: 18, column: 2, scope: !868)
!910 = !DILocation(line: 19, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !868, file: !2, line: 19, column: 6)
!912 = !DILocation(line: 19, column: 13, scope: !911)
!913 = !DILocation(line: 19, column: 6, scope: !868)
!914 = !DILocation(line: 20, column: 20, scope: !911)
!915 = !DILocation(line: 20, column: 3, scope: !911)
!916 = !DILocation(line: 21, column: 6, scope: !917)
!917 = distinct !DILexicalBlock(scope: !868, file: !2, line: 21, column: 6)
!918 = !DILocation(line: 21, column: 13, scope: !917)
!919 = !DILocation(line: 21, column: 6, scope: !868)
!920 = !DILocation(line: 22, column: 20, scope: !917)
!921 = !DILocation(line: 22, column: 3, scope: !917)
!922 = !DILocation(line: 23, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !868, file: !2, line: 23, column: 6)
!924 = !DILocation(line: 23, column: 13, scope: !923)
!925 = !DILocation(line: 23, column: 6, scope: !868)
!926 = !DILocation(line: 24, column: 20, scope: !923)
!927 = !DILocation(line: 24, column: 3, scope: !923)
!928 = !DILocation(line: 25, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !868, file: !2, line: 25, column: 6)
!930 = !DILocation(line: 25, column: 13, scope: !929)
!931 = !DILocation(line: 25, column: 6, scope: !868)
!932 = !DILocation(line: 26, column: 20, scope: !929)
!933 = !DILocation(line: 26, column: 3, scope: !929)
!934 = !DILocation(line: 27, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !868, file: !2, line: 27, column: 6)
!936 = !DILocation(line: 27, column: 13, scope: !935)
!937 = !DILocation(line: 27, column: 6, scope: !868)
!938 = !DILocation(line: 28, column: 20, scope: !935)
!939 = !DILocation(line: 28, column: 3, scope: !935)
!940 = !DILocation(line: 29, column: 6, scope: !941)
!941 = distinct !DILexicalBlock(scope: !868, file: !2, line: 29, column: 6)
!942 = !DILocation(line: 29, column: 13, scope: !941)
!943 = !DILocation(line: 29, column: 6, scope: !868)
!944 = !DILocation(line: 30, column: 20, scope: !941)
!945 = !DILocation(line: 30, column: 3, scope: !941)
!946 = !DILocation(line: 31, column: 6, scope: !947)
!947 = distinct !DILexicalBlock(scope: !868, file: !2, line: 31, column: 6)
!948 = !DILocation(line: 31, column: 13, scope: !947)
!949 = !DILocation(line: 31, column: 6, scope: !868)
!950 = !DILocation(line: 32, column: 20, scope: !947)
!951 = !DILocation(line: 32, column: 3, scope: !947)
!952 = !DILocation(line: 33, column: 6, scope: !953)
!953 = distinct !DILexicalBlock(scope: !868, file: !2, line: 33, column: 6)
!954 = !DILocation(line: 33, column: 13, scope: !953)
!955 = !DILocation(line: 33, column: 6, scope: !868)
!956 = !DILocation(line: 34, column: 20, scope: !953)
!957 = !DILocation(line: 34, column: 3, scope: !953)
!958 = !DILocation(line: 35, column: 17, scope: !868)
!959 = !DILocation(line: 35, column: 2, scope: !868)
!960 = !DILocation(line: 36, column: 17, scope: !868)
!961 = !DILocation(line: 36, column: 2, scope: !868)
!962 = !DILocation(line: 38, column: 9, scope: !868)
!963 = !DILocation(line: 39, column: 1, scope: !868)
!964 = !DILocation(line: 38, column: 2, scope: !868)
!965 = distinct !DISubprogram(name: "trace_seq_buffer_ptr", scope: !875, file: !875, line: 57, type: !966, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!886, !873}
!968 = !{!969}
!969 = !DILocalVariable(name: "s", arg: 1, scope: !965, file: !875, line: 57, type: !873)
!970 = !DILocation(line: 57, column: 40, scope: !965)
!971 = !DILocation(line: 59, column: 9, scope: !965)
!972 = !DILocation(line: 59, column: 12, scope: !965)
!973 = !DILocation(line: 59, column: 35, scope: !965)
!974 = !DILocation(line: 59, column: 38, scope: !965)
!975 = !DILocation(line: 59, column: 21, scope: !965)
!976 = !DILocation(line: 59, column: 19, scope: !965)
!977 = !DILocation(line: 59, column: 2, scope: !965)
!978 = !DISubprogram(name: "trace_seq_printf", scope: !875, file: !875, line: 79, type: !979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !873, !871, null}
!981 = !DISubprogram(name: "trace_seq_putc", scope: !875, file: !875, line: 88, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !873, !897}
!984 = distinct !DISubprogram(name: "libata_trace_parse_host_stat", scope: !2, file: !2, line: 42, type: !869, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !985)
!985 = !{!986, !987, !988}
!986 = !DILocalVariable(name: "p", arg: 1, scope: !984, file: !2, line: 42, type: !873)
!987 = !DILocalVariable(name: "host_stat", arg: 2, scope: !984, file: !2, line: 42, type: !897)
!988 = !DILocalVariable(name: "ret", scope: !984, file: !2, line: 44, type: !871)
!989 = !DILocation(line: 42, column: 48, scope: !984)
!990 = !DILocation(line: 42, column: 65, scope: !984)
!991 = !DILocation(line: 44, column: 2, scope: !984)
!992 = !DILocation(line: 44, column: 14, scope: !984)
!993 = !DILocation(line: 44, column: 41, scope: !984)
!994 = !DILocation(line: 44, column: 20, scope: !984)
!995 = !DILocation(line: 46, column: 19, scope: !984)
!996 = !DILocation(line: 46, column: 2, scope: !984)
!997 = !DILocation(line: 47, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !984, file: !2, line: 47, column: 6)
!999 = !DILocation(line: 47, column: 16, scope: !998)
!1000 = !DILocation(line: 47, column: 6, scope: !984)
!1001 = !DILocation(line: 48, column: 20, scope: !998)
!1002 = !DILocation(line: 48, column: 3, scope: !998)
!1003 = !DILocation(line: 49, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !984, file: !2, line: 49, column: 6)
!1005 = !DILocation(line: 49, column: 16, scope: !1004)
!1006 = !DILocation(line: 49, column: 6, scope: !984)
!1007 = !DILocation(line: 50, column: 20, scope: !1004)
!1008 = !DILocation(line: 50, column: 3, scope: !1004)
!1009 = !DILocation(line: 51, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !984, file: !2, line: 51, column: 6)
!1011 = !DILocation(line: 51, column: 16, scope: !1010)
!1012 = !DILocation(line: 51, column: 6, scope: !984)
!1013 = !DILocation(line: 52, column: 20, scope: !1010)
!1014 = !DILocation(line: 52, column: 3, scope: !1010)
!1015 = !DILocation(line: 53, column: 17, scope: !984)
!1016 = !DILocation(line: 53, column: 2, scope: !984)
!1017 = !DILocation(line: 54, column: 17, scope: !984)
!1018 = !DILocation(line: 54, column: 2, scope: !984)
!1019 = !DILocation(line: 56, column: 9, scope: !984)
!1020 = !DILocation(line: 57, column: 1, scope: !984)
!1021 = !DILocation(line: 56, column: 2, scope: !984)
!1022 = distinct !DISubprogram(name: "libata_trace_parse_eh_action", scope: !2, file: !2, line: 60, type: !1023, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1025)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!871, !873, !844}
!1025 = !{!1026, !1027, !1028}
!1026 = !DILocalVariable(name: "p", arg: 1, scope: !1022, file: !2, line: 60, type: !873)
!1027 = !DILocalVariable(name: "eh_action", arg: 2, scope: !1022, file: !2, line: 60, type: !844)
!1028 = !DILocalVariable(name: "ret", scope: !1022, file: !2, line: 62, type: !871)
!1029 = !DILocation(line: 60, column: 48, scope: !1022)
!1030 = !DILocation(line: 60, column: 64, scope: !1022)
!1031 = !DILocation(line: 62, column: 2, scope: !1022)
!1032 = !DILocation(line: 62, column: 14, scope: !1022)
!1033 = !DILocation(line: 62, column: 41, scope: !1022)
!1034 = !DILocation(line: 62, column: 20, scope: !1022)
!1035 = !DILocation(line: 64, column: 19, scope: !1022)
!1036 = !DILocation(line: 64, column: 28, scope: !1022)
!1037 = !DILocation(line: 64, column: 2, scope: !1022)
!1038 = !DILocation(line: 65, column: 6, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 65, column: 6)
!1040 = !DILocation(line: 65, column: 6, scope: !1022)
!1041 = !DILocation(line: 66, column: 20, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 65, column: 17)
!1043 = !DILocation(line: 66, column: 3, scope: !1042)
!1044 = !DILocation(line: 67, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 67, column: 7)
!1046 = !DILocation(line: 67, column: 17, scope: !1045)
!1047 = !DILocation(line: 67, column: 7, scope: !1042)
!1048 = !DILocation(line: 68, column: 21, scope: !1045)
!1049 = !DILocation(line: 68, column: 4, scope: !1045)
!1050 = !DILocation(line: 69, column: 7, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 69, column: 7)
!1052 = !DILocation(line: 69, column: 17, scope: !1051)
!1053 = !DILocation(line: 69, column: 7, scope: !1042)
!1054 = !DILocation(line: 70, column: 21, scope: !1051)
!1055 = !DILocation(line: 70, column: 4, scope: !1051)
!1056 = !DILocation(line: 71, column: 12, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 71, column: 12)
!1058 = !DILocation(line: 71, column: 22, scope: !1057)
!1059 = !DILocation(line: 71, column: 12, scope: !1051)
!1060 = !DILocation(line: 72, column: 21, scope: !1057)
!1061 = !DILocation(line: 72, column: 4, scope: !1057)
!1062 = !DILocation(line: 73, column: 12, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 73, column: 12)
!1064 = !DILocation(line: 73, column: 22, scope: !1063)
!1065 = !DILocation(line: 73, column: 12, scope: !1057)
!1066 = !DILocation(line: 74, column: 21, scope: !1063)
!1067 = !DILocation(line: 74, column: 4, scope: !1063)
!1068 = !DILocation(line: 75, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 75, column: 7)
!1070 = !DILocation(line: 75, column: 17, scope: !1069)
!1071 = !DILocation(line: 75, column: 7, scope: !1042)
!1072 = !DILocation(line: 76, column: 21, scope: !1069)
!1073 = !DILocation(line: 76, column: 4, scope: !1069)
!1074 = !DILocation(line: 77, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 77, column: 7)
!1076 = !DILocation(line: 77, column: 17, scope: !1075)
!1077 = !DILocation(line: 77, column: 7, scope: !1042)
!1078 = !DILocation(line: 78, column: 21, scope: !1075)
!1079 = !DILocation(line: 78, column: 4, scope: !1075)
!1080 = !DILocation(line: 79, column: 18, scope: !1042)
!1081 = !DILocation(line: 79, column: 3, scope: !1042)
!1082 = !DILocation(line: 80, column: 2, scope: !1042)
!1083 = !DILocation(line: 81, column: 17, scope: !1022)
!1084 = !DILocation(line: 81, column: 2, scope: !1022)
!1085 = !DILocation(line: 83, column: 9, scope: !1022)
!1086 = !DILocation(line: 84, column: 1, scope: !1022)
!1087 = !DILocation(line: 83, column: 2, scope: !1022)
!1088 = distinct !DISubprogram(name: "libata_trace_parse_eh_err_mask", scope: !2, file: !2, line: 87, type: !1023, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DILocalVariable(name: "p", arg: 1, scope: !1088, file: !2, line: 87, type: !873)
!1091 = !DILocalVariable(name: "eh_err_mask", arg: 2, scope: !1088, file: !2, line: 87, type: !844)
!1092 = !DILocalVariable(name: "ret", scope: !1088, file: !2, line: 89, type: !871)
!1093 = !DILocation(line: 87, column: 50, scope: !1088)
!1094 = !DILocation(line: 87, column: 66, scope: !1088)
!1095 = !DILocation(line: 89, column: 2, scope: !1088)
!1096 = !DILocation(line: 89, column: 14, scope: !1088)
!1097 = !DILocation(line: 89, column: 41, scope: !1088)
!1098 = !DILocation(line: 89, column: 20, scope: !1088)
!1099 = !DILocation(line: 91, column: 19, scope: !1088)
!1100 = !DILocation(line: 91, column: 28, scope: !1088)
!1101 = !DILocation(line: 91, column: 2, scope: !1088)
!1102 = !DILocation(line: 92, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 92, column: 6)
!1104 = !DILocation(line: 92, column: 6, scope: !1088)
!1105 = !DILocation(line: 93, column: 20, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 92, column: 19)
!1107 = !DILocation(line: 93, column: 3, scope: !1106)
!1108 = !DILocation(line: 94, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 94, column: 7)
!1110 = !DILocation(line: 94, column: 19, scope: !1109)
!1111 = !DILocation(line: 94, column: 7, scope: !1106)
!1112 = !DILocation(line: 95, column: 21, scope: !1109)
!1113 = !DILocation(line: 95, column: 4, scope: !1109)
!1114 = !DILocation(line: 96, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 96, column: 7)
!1116 = !DILocation(line: 96, column: 19, scope: !1115)
!1117 = !DILocation(line: 96, column: 7, scope: !1106)
!1118 = !DILocation(line: 97, column: 21, scope: !1115)
!1119 = !DILocation(line: 97, column: 4, scope: !1115)
!1120 = !DILocation(line: 98, column: 7, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 98, column: 7)
!1122 = !DILocation(line: 98, column: 19, scope: !1121)
!1123 = !DILocation(line: 98, column: 7, scope: !1106)
!1124 = !DILocation(line: 99, column: 21, scope: !1121)
!1125 = !DILocation(line: 99, column: 4, scope: !1121)
!1126 = !DILocation(line: 100, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 100, column: 7)
!1128 = !DILocation(line: 100, column: 19, scope: !1127)
!1129 = !DILocation(line: 100, column: 7, scope: !1106)
!1130 = !DILocation(line: 101, column: 21, scope: !1127)
!1131 = !DILocation(line: 101, column: 4, scope: !1127)
!1132 = !DILocation(line: 102, column: 7, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 102, column: 7)
!1134 = !DILocation(line: 102, column: 19, scope: !1133)
!1135 = !DILocation(line: 102, column: 7, scope: !1106)
!1136 = !DILocation(line: 103, column: 21, scope: !1133)
!1137 = !DILocation(line: 103, column: 4, scope: !1133)
!1138 = !DILocation(line: 104, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 104, column: 7)
!1140 = !DILocation(line: 104, column: 19, scope: !1139)
!1141 = !DILocation(line: 104, column: 7, scope: !1106)
!1142 = !DILocation(line: 105, column: 21, scope: !1139)
!1143 = !DILocation(line: 105, column: 4, scope: !1139)
!1144 = !DILocation(line: 106, column: 7, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 106, column: 7)
!1146 = !DILocation(line: 106, column: 19, scope: !1145)
!1147 = !DILocation(line: 106, column: 7, scope: !1106)
!1148 = !DILocation(line: 107, column: 21, scope: !1145)
!1149 = !DILocation(line: 107, column: 4, scope: !1145)
!1150 = !DILocation(line: 108, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 108, column: 7)
!1152 = !DILocation(line: 108, column: 19, scope: !1151)
!1153 = !DILocation(line: 108, column: 7, scope: !1106)
!1154 = !DILocation(line: 109, column: 21, scope: !1151)
!1155 = !DILocation(line: 109, column: 4, scope: !1151)
!1156 = !DILocation(line: 110, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 110, column: 7)
!1158 = !DILocation(line: 110, column: 19, scope: !1157)
!1159 = !DILocation(line: 110, column: 7, scope: !1106)
!1160 = !DILocation(line: 111, column: 21, scope: !1157)
!1161 = !DILocation(line: 111, column: 4, scope: !1157)
!1162 = !DILocation(line: 112, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 112, column: 7)
!1164 = !DILocation(line: 112, column: 19, scope: !1163)
!1165 = !DILocation(line: 112, column: 7, scope: !1106)
!1166 = !DILocation(line: 113, column: 21, scope: !1163)
!1167 = !DILocation(line: 113, column: 4, scope: !1163)
!1168 = !DILocation(line: 114, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 114, column: 7)
!1170 = !DILocation(line: 114, column: 19, scope: !1169)
!1171 = !DILocation(line: 114, column: 7, scope: !1106)
!1172 = !DILocation(line: 115, column: 21, scope: !1169)
!1173 = !DILocation(line: 115, column: 4, scope: !1169)
!1174 = !DILocation(line: 116, column: 18, scope: !1106)
!1175 = !DILocation(line: 116, column: 3, scope: !1106)
!1176 = !DILocation(line: 117, column: 2, scope: !1106)
!1177 = !DILocation(line: 118, column: 17, scope: !1088)
!1178 = !DILocation(line: 118, column: 2, scope: !1088)
!1179 = !DILocation(line: 120, column: 9, scope: !1088)
!1180 = !DILocation(line: 121, column: 1, scope: !1088)
!1181 = !DILocation(line: 120, column: 2, scope: !1088)
!1182 = distinct !DISubprogram(name: "libata_trace_parse_qc_flags", scope: !2, file: !2, line: 124, type: !1023, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1183)
!1183 = !{!1184, !1185, !1186}
!1184 = !DILocalVariable(name: "p", arg: 1, scope: !1182, file: !2, line: 124, type: !873)
!1185 = !DILocalVariable(name: "qc_flags", arg: 2, scope: !1182, file: !2, line: 124, type: !844)
!1186 = !DILocalVariable(name: "ret", scope: !1182, file: !2, line: 126, type: !871)
!1187 = !DILocation(line: 124, column: 47, scope: !1182)
!1188 = !DILocation(line: 124, column: 63, scope: !1182)
!1189 = !DILocation(line: 126, column: 2, scope: !1182)
!1190 = !DILocation(line: 126, column: 14, scope: !1182)
!1191 = !DILocation(line: 126, column: 41, scope: !1182)
!1192 = !DILocation(line: 126, column: 20, scope: !1182)
!1193 = !DILocation(line: 128, column: 19, scope: !1182)
!1194 = !DILocation(line: 128, column: 28, scope: !1182)
!1195 = !DILocation(line: 128, column: 2, scope: !1182)
!1196 = !DILocation(line: 129, column: 6, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 129, column: 6)
!1198 = !DILocation(line: 129, column: 6, scope: !1182)
!1199 = !DILocation(line: 130, column: 20, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 129, column: 16)
!1201 = !DILocation(line: 130, column: 3, scope: !1200)
!1202 = !DILocation(line: 131, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 131, column: 7)
!1204 = !DILocation(line: 131, column: 16, scope: !1203)
!1205 = !DILocation(line: 131, column: 7, scope: !1200)
!1206 = !DILocation(line: 132, column: 21, scope: !1203)
!1207 = !DILocation(line: 132, column: 4, scope: !1203)
!1208 = !DILocation(line: 133, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 133, column: 7)
!1210 = !DILocation(line: 133, column: 16, scope: !1209)
!1211 = !DILocation(line: 133, column: 7, scope: !1200)
!1212 = !DILocation(line: 134, column: 21, scope: !1209)
!1213 = !DILocation(line: 134, column: 4, scope: !1209)
!1214 = !DILocation(line: 135, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 135, column: 7)
!1216 = !DILocation(line: 135, column: 16, scope: !1215)
!1217 = !DILocation(line: 135, column: 7, scope: !1200)
!1218 = !DILocation(line: 136, column: 21, scope: !1215)
!1219 = !DILocation(line: 136, column: 4, scope: !1215)
!1220 = !DILocation(line: 137, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 137, column: 7)
!1222 = !DILocation(line: 137, column: 16, scope: !1221)
!1223 = !DILocation(line: 137, column: 7, scope: !1200)
!1224 = !DILocation(line: 138, column: 21, scope: !1221)
!1225 = !DILocation(line: 138, column: 4, scope: !1221)
!1226 = !DILocation(line: 139, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 139, column: 7)
!1228 = !DILocation(line: 139, column: 16, scope: !1227)
!1229 = !DILocation(line: 139, column: 7, scope: !1200)
!1230 = !DILocation(line: 140, column: 21, scope: !1227)
!1231 = !DILocation(line: 140, column: 4, scope: !1227)
!1232 = !DILocation(line: 141, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 141, column: 7)
!1234 = !DILocation(line: 141, column: 16, scope: !1233)
!1235 = !DILocation(line: 141, column: 7, scope: !1200)
!1236 = !DILocation(line: 142, column: 21, scope: !1233)
!1237 = !DILocation(line: 142, column: 4, scope: !1233)
!1238 = !DILocation(line: 143, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 143, column: 7)
!1240 = !DILocation(line: 143, column: 16, scope: !1239)
!1241 = !DILocation(line: 143, column: 7, scope: !1200)
!1242 = !DILocation(line: 144, column: 21, scope: !1239)
!1243 = !DILocation(line: 144, column: 4, scope: !1239)
!1244 = !DILocation(line: 145, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 145, column: 7)
!1246 = !DILocation(line: 145, column: 16, scope: !1245)
!1247 = !DILocation(line: 145, column: 7, scope: !1200)
!1248 = !DILocation(line: 146, column: 21, scope: !1245)
!1249 = !DILocation(line: 146, column: 4, scope: !1245)
!1250 = !DILocation(line: 147, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 147, column: 7)
!1252 = !DILocation(line: 147, column: 16, scope: !1251)
!1253 = !DILocation(line: 147, column: 7, scope: !1200)
!1254 = !DILocation(line: 148, column: 21, scope: !1251)
!1255 = !DILocation(line: 148, column: 4, scope: !1251)
!1256 = !DILocation(line: 149, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 149, column: 7)
!1258 = !DILocation(line: 149, column: 16, scope: !1257)
!1259 = !DILocation(line: 149, column: 7, scope: !1200)
!1260 = !DILocation(line: 150, column: 21, scope: !1257)
!1261 = !DILocation(line: 150, column: 4, scope: !1257)
!1262 = !DILocation(line: 151, column: 18, scope: !1200)
!1263 = !DILocation(line: 151, column: 3, scope: !1200)
!1264 = !DILocation(line: 152, column: 2, scope: !1200)
!1265 = !DILocation(line: 153, column: 17, scope: !1182)
!1266 = !DILocation(line: 153, column: 2, scope: !1182)
!1267 = !DILocation(line: 155, column: 9, scope: !1182)
!1268 = !DILocation(line: 156, column: 1, scope: !1182)
!1269 = !DILocation(line: 155, column: 2, scope: !1182)
!1270 = distinct !DISubprogram(name: "libata_trace_parse_tf_flags", scope: !2, file: !2, line: 159, type: !1023, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1271)
!1271 = !{!1272, !1273, !1274}
!1272 = !DILocalVariable(name: "p", arg: 1, scope: !1270, file: !2, line: 159, type: !873)
!1273 = !DILocalVariable(name: "tf_flags", arg: 2, scope: !1270, file: !2, line: 159, type: !844)
!1274 = !DILocalVariable(name: "ret", scope: !1270, file: !2, line: 161, type: !871)
!1275 = !DILocation(line: 159, column: 47, scope: !1270)
!1276 = !DILocation(line: 159, column: 63, scope: !1270)
!1277 = !DILocation(line: 161, column: 2, scope: !1270)
!1278 = !DILocation(line: 161, column: 14, scope: !1270)
!1279 = !DILocation(line: 161, column: 41, scope: !1270)
!1280 = !DILocation(line: 161, column: 20, scope: !1270)
!1281 = !DILocation(line: 163, column: 19, scope: !1270)
!1282 = !DILocation(line: 163, column: 28, scope: !1270)
!1283 = !DILocation(line: 163, column: 2, scope: !1270)
!1284 = !DILocation(line: 164, column: 6, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 164, column: 6)
!1286 = !DILocation(line: 164, column: 6, scope: !1270)
!1287 = !DILocation(line: 165, column: 20, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 164, column: 16)
!1289 = !DILocation(line: 165, column: 3, scope: !1288)
!1290 = !DILocation(line: 166, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 166, column: 7)
!1292 = !DILocation(line: 166, column: 16, scope: !1291)
!1293 = !DILocation(line: 166, column: 7, scope: !1288)
!1294 = !DILocation(line: 167, column: 21, scope: !1291)
!1295 = !DILocation(line: 167, column: 4, scope: !1291)
!1296 = !DILocation(line: 168, column: 7, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 168, column: 7)
!1298 = !DILocation(line: 168, column: 16, scope: !1297)
!1299 = !DILocation(line: 168, column: 7, scope: !1288)
!1300 = !DILocation(line: 169, column: 21, scope: !1297)
!1301 = !DILocation(line: 169, column: 4, scope: !1297)
!1302 = !DILocation(line: 170, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 170, column: 7)
!1304 = !DILocation(line: 170, column: 16, scope: !1303)
!1305 = !DILocation(line: 170, column: 7, scope: !1288)
!1306 = !DILocation(line: 171, column: 21, scope: !1303)
!1307 = !DILocation(line: 171, column: 4, scope: !1303)
!1308 = !DILocation(line: 172, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 172, column: 7)
!1310 = !DILocation(line: 172, column: 16, scope: !1309)
!1311 = !DILocation(line: 172, column: 7, scope: !1288)
!1312 = !DILocation(line: 173, column: 21, scope: !1309)
!1313 = !DILocation(line: 173, column: 4, scope: !1309)
!1314 = !DILocation(line: 174, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 174, column: 7)
!1316 = !DILocation(line: 174, column: 16, scope: !1315)
!1317 = !DILocation(line: 174, column: 7, scope: !1288)
!1318 = !DILocation(line: 175, column: 21, scope: !1315)
!1319 = !DILocation(line: 175, column: 4, scope: !1315)
!1320 = !DILocation(line: 176, column: 7, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 176, column: 7)
!1322 = !DILocation(line: 176, column: 16, scope: !1321)
!1323 = !DILocation(line: 176, column: 7, scope: !1288)
!1324 = !DILocation(line: 177, column: 21, scope: !1321)
!1325 = !DILocation(line: 177, column: 4, scope: !1321)
!1326 = !DILocation(line: 178, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 178, column: 7)
!1328 = !DILocation(line: 178, column: 16, scope: !1327)
!1329 = !DILocation(line: 178, column: 7, scope: !1288)
!1330 = !DILocation(line: 179, column: 21, scope: !1327)
!1331 = !DILocation(line: 179, column: 4, scope: !1327)
!1332 = !DILocation(line: 180, column: 18, scope: !1288)
!1333 = !DILocation(line: 180, column: 3, scope: !1288)
!1334 = !DILocation(line: 181, column: 2, scope: !1288)
!1335 = !DILocation(line: 182, column: 17, scope: !1270)
!1336 = !DILocation(line: 182, column: 2, scope: !1270)
!1337 = !DILocation(line: 184, column: 9, scope: !1270)
!1338 = !DILocation(line: 185, column: 1, scope: !1270)
!1339 = !DILocation(line: 184, column: 2, scope: !1270)
!1340 = distinct !DISubprogram(name: "libata_trace_parse_subcmd", scope: !2, file: !2, line: 188, type: !1341, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!871, !873, !897, !897, !897}
!1343 = !{!1344, !1345, !1346, !1347, !1348}
!1344 = !DILocalVariable(name: "p", arg: 1, scope: !1340, file: !2, line: 188, type: !873)
!1345 = !DILocalVariable(name: "cmd", arg: 2, scope: !1340, file: !2, line: 188, type: !897)
!1346 = !DILocalVariable(name: "feature", arg: 3, scope: !1340, file: !2, line: 189, type: !897)
!1347 = !DILocalVariable(name: "hob_nsect", arg: 4, scope: !1340, file: !2, line: 189, type: !897)
!1348 = !DILocalVariable(name: "ret", scope: !1340, file: !2, line: 191, type: !871)
!1349 = !DILocation(line: 188, column: 45, scope: !1340)
!1350 = !DILocation(line: 188, column: 62, scope: !1340)
!1351 = !DILocation(line: 189, column: 20, scope: !1340)
!1352 = !DILocation(line: 189, column: 43, scope: !1340)
!1353 = !DILocation(line: 191, column: 2, scope: !1340)
!1354 = !DILocation(line: 191, column: 14, scope: !1340)
!1355 = !DILocation(line: 191, column: 41, scope: !1340)
!1356 = !DILocation(line: 191, column: 20, scope: !1340)
!1357 = !DILocation(line: 193, column: 10, scope: !1340)
!1358 = !DILocation(line: 193, column: 2, scope: !1340)
!1359 = !DILocation(line: 195, column: 11, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 193, column: 15)
!1361 = !DILocation(line: 195, column: 21, scope: !1360)
!1362 = !DILocation(line: 195, column: 3, scope: !1360)
!1363 = !DILocation(line: 197, column: 21, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 195, column: 29)
!1365 = !DILocation(line: 197, column: 4, scope: !1364)
!1366 = !DILocation(line: 198, column: 4, scope: !1364)
!1367 = !DILocation(line: 200, column: 21, scope: !1364)
!1368 = !DILocation(line: 200, column: 4, scope: !1364)
!1369 = !DILocation(line: 201, column: 4, scope: !1364)
!1370 = !DILocation(line: 203, column: 3, scope: !1360)
!1371 = !DILocation(line: 205, column: 11, scope: !1360)
!1372 = !DILocation(line: 205, column: 21, scope: !1360)
!1373 = !DILocation(line: 205, column: 3, scope: !1360)
!1374 = !DILocation(line: 207, column: 21, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 205, column: 29)
!1376 = !DILocation(line: 207, column: 4, scope: !1375)
!1377 = !DILocation(line: 208, column: 4, scope: !1375)
!1378 = !DILocation(line: 210, column: 21, scope: !1375)
!1379 = !DILocation(line: 210, column: 4, scope: !1375)
!1380 = !DILocation(line: 211, column: 4, scope: !1375)
!1381 = !DILocation(line: 213, column: 3, scope: !1360)
!1382 = !DILocation(line: 215, column: 11, scope: !1360)
!1383 = !DILocation(line: 215, column: 3, scope: !1360)
!1384 = !DILocation(line: 217, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 215, column: 20)
!1386 = !DILocation(line: 217, column: 4, scope: !1385)
!1387 = !DILocation(line: 218, column: 4, scope: !1385)
!1388 = !DILocation(line: 220, column: 21, scope: !1385)
!1389 = !DILocation(line: 220, column: 4, scope: !1385)
!1390 = !DILocation(line: 221, column: 4, scope: !1385)
!1391 = !DILocation(line: 223, column: 21, scope: !1385)
!1392 = !DILocation(line: 223, column: 4, scope: !1385)
!1393 = !DILocation(line: 224, column: 4, scope: !1385)
!1394 = !DILocation(line: 226, column: 21, scope: !1385)
!1395 = !DILocation(line: 226, column: 4, scope: !1385)
!1396 = !DILocation(line: 227, column: 4, scope: !1385)
!1397 = !DILocation(line: 229, column: 3, scope: !1360)
!1398 = !DILocation(line: 231, column: 11, scope: !1360)
!1399 = !DILocation(line: 231, column: 3, scope: !1360)
!1400 = !DILocation(line: 233, column: 21, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 231, column: 20)
!1402 = !DILocation(line: 233, column: 4, scope: !1401)
!1403 = !DILocation(line: 234, column: 4, scope: !1401)
!1404 = !DILocation(line: 236, column: 3, scope: !1360)
!1405 = !DILocation(line: 238, column: 11, scope: !1360)
!1406 = !DILocation(line: 238, column: 3, scope: !1360)
!1407 = !DILocation(line: 240, column: 21, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 238, column: 20)
!1409 = !DILocation(line: 240, column: 4, scope: !1408)
!1410 = !DILocation(line: 241, column: 4, scope: !1408)
!1411 = !DILocation(line: 243, column: 21, scope: !1408)
!1412 = !DILocation(line: 243, column: 4, scope: !1408)
!1413 = !DILocation(line: 244, column: 4, scope: !1408)
!1414 = !DILocation(line: 246, column: 21, scope: !1408)
!1415 = !DILocation(line: 246, column: 4, scope: !1408)
!1416 = !DILocation(line: 247, column: 4, scope: !1408)
!1417 = !DILocation(line: 249, column: 21, scope: !1408)
!1418 = !DILocation(line: 249, column: 4, scope: !1408)
!1419 = !DILocation(line: 250, column: 4, scope: !1408)
!1420 = !DILocation(line: 252, column: 3, scope: !1360)
!1421 = !DILocation(line: 254, column: 17, scope: !1340)
!1422 = !DILocation(line: 254, column: 2, scope: !1340)
!1423 = !DILocation(line: 256, column: 9, scope: !1340)
!1424 = !DILocation(line: 257, column: 1, scope: !1340)
!1425 = !DILocation(line: 256, column: 2, scope: !1340)
!1426 = distinct !DISubprogram(name: "seq_buf_used", scope: !883, file: !883, line: 74, type: !1427, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1430)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!844, !1429}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!1430 = !{!1431, !1432, !1434}
!1431 = !DILocalVariable(name: "s", arg: 1, scope: !1426, file: !883, line: 74, type: !1429)
!1432 = !DILocalVariable(name: "__UNIQUE_ID___x249", scope: !1433, file: !883, line: 76, type: !888)
!1433 = distinct !DILexicalBlock(scope: !1426, file: !883, line: 76, column: 9)
!1434 = !DILocalVariable(name: "__UNIQUE_ID___y250", scope: !1433, file: !883, line: 76, type: !888)
!1435 = !DILocation(line: 74, column: 57, scope: !1426)
!1436 = !DILocation(line: 76, column: 9, scope: !1433)
!1437 = !DILocation(line: 76, column: 9, scope: !1426)
!1438 = !DILocation(line: 76, column: 2, scope: !1426)
