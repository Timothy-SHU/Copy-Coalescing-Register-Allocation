; ModuleID = 'print-rtl.c'
source_filename = "print-rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.reg_attrs = type { ptr, i64 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@print_rtx_head = dso_local local_unnamed_addr global ptr @.str, align 8
@flag_dump_unnumbered = dso_local local_unnamed_addr global i32 0, align 4
@flag_dump_unnumbered_links = dso_local local_unnamed_addr global i32 0, align 4
@flag_simple = dso_local local_unnamed_addr global i32 0, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@sawclose = internal unnamed_addr global i1 false, align 4
@indent = internal unnamed_addr global i32 0, align 4
@outfile = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@debug_rtx_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"insn uid %d not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@dump_for_graph = dso_local local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"\0A%s%*s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"(??? bad code %d\0A%s%*s)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"(%s\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"/s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"/v\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"/u\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"/j\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"/c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"/i\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@reg_note_name = external local_unnamed_addr constant [0 x ptr], align 8
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.16 = private unnamed_addr constant [28 x i8] c" <debug string placeholder>\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" [uninit]\00", align 1
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c" \\\22\\\22\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" \22\22\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c" (\\\22%s\\\22)\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" (\22%s\22)\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c" [flags 0x%x]\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c" [bb %d]\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"\0A%s%*s -> %d\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" %u:%u\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" @\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c" D#%i\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c" [0x%lx]\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" %d %s\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.39 = private unnamed_addr constant [26 x i8] c" %d virtual-incoming-args\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c" %d virtual-stack-vars\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c" %d virtual-stack-dynamic\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c" %d virtual-outgoing-args\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c" %d virtual-cfa\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c" %d virtual-reg-%d\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"orig:%i\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"+%ld\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c" {%s}\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.50 = private unnamed_addr constant [13 x i8] c" [# deleted]\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c" [%d deleted]\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c" {null}\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c" Unknown\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"print-rtl.c\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@final_insns_dump_p = external local_unnamed_addr global i8, align 1
@.str.60 = private unnamed_addr constant [6 x i8] c" [%ld\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c" S%ld\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c" A%u\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c" AS%u\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c" [%d uses]\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c" [entry]\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c" [global entry]\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c" [weak entry]\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_mem_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0) #8
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %4) #9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_inline_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = load i1, ptr @sawclose, align 4
  %5 = load i32, ptr @indent, align 4, !tbaa !35
  store i1 false, ptr @sawclose, align 4
  store i32 %2, ptr @indent, align 4, !tbaa !35
  store ptr %0, ptr @outfile, align 8, !tbaa !39
  tail call fastcc void @print_rtx(ptr noundef %1) #8
  store i1 %4, ptr @sawclose, align 4
  store i32 %5, ptr @indent, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_rtx(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !41 {
  %2 = alloca [60 x i8], align 16
  %3 = load i1, ptr @sawclose, align 4
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_simple, align 4, !tbaa !35
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %6, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @fputc(i32 noundef 32, ptr noundef %7) #8
  br label %15

10:                                               ; preds = %4
  %11 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %12 = load i32, ptr @indent, align 4, !tbaa !35
  %13 = shl nsw i32 %12, 1
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %13, ptr noundef nonnull @.str) #8
  br label %15

15:                                               ; preds = %10, %8
  store i1 false, ptr @sawclose, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load ptr, ptr @outfile, align 8, !tbaa !39
  %20 = tail call i32 @fputs(ptr noundef nonnull @.str.5, ptr noundef %19) #8
  br label %800

21:                                               ; preds = %16
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 65535
  %24 = icmp ugt i32 %23, 139
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load ptr, ptr @outfile, align 8, !tbaa !39
  %27 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %28 = load i32, ptr @indent, align 4, !tbaa !35
  %29 = shl nsw i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %23, ptr noundef %27, i32 noundef %29, ptr noundef nonnull @.str) #8
  br label %800

31:                                               ; preds = %21
  %32 = add nsw i32 %23, -7
  %33 = icmp ult i32 %32, 4
  %34 = load i32, ptr @dump_for_graph, align 4, !tbaa !35
  %35 = icmp ne i32 %34, 0
  %36 = icmp ult i32 %32, 7
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, ptr @indent, align 4, !tbaa !35
  br label %161

39:                                               ; preds = %31
  %40 = load i32, ptr @flag_simple, align 4, !tbaa !35
  %41 = icmp ne i32 %40, 0
  %42 = icmp eq i32 %23, 30
  %43 = and i1 %42, %41
  %44 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %43, label %45, label %47

45:                                               ; preds = %39
  %46 = tail call i32 @fputc(i32 noundef 40, ptr noundef %44) #8
  br label %52

47:                                               ; preds = %39
  %48 = zext nneg i32 %23 to i64
  %49 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.7, ptr noundef %50) #8
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i32, ptr @flag_simple, align 4, !tbaa !35
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %0, align 8
  br i1 %54, label %56, label %161

56:                                               ; preds = %52
  %57 = and i32 %55, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @outfile, align 8, !tbaa !39
  %61 = tail call i32 @fputs(ptr noundef nonnull @.str.8, ptr noundef %60) #8
  %62 = load i32, ptr %0, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %62, %59 ], [ %55, %56 ]
  %65 = and i32 %64, 134217728
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @outfile, align 8, !tbaa !39
  %69 = tail call i32 @fputs(ptr noundef nonnull @.str.9, ptr noundef %68) #8
  %70 = load i32, ptr %0, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ %70, %67 ], [ %64, %63 ]
  %73 = and i32 %72, 67108864
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @outfile, align 8, !tbaa !39
  %77 = tail call i32 @fputs(ptr noundef nonnull @.str.10, ptr noundef %76) #8
  %78 = load i32, ptr %0, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32 [ %78, %75 ], [ %72, %71 ]
  %81 = and i32 %80, 1073741824
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @outfile, align 8, !tbaa !39
  %85 = tail call i32 @fputs(ptr noundef nonnull @.str.11, ptr noundef %84) #8
  %86 = load i32, ptr %0, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i32 [ %86, %83 ], [ %80, %79 ]
  %89 = and i32 %88, 16777216
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @outfile, align 8, !tbaa !39
  %93 = tail call i32 @fputs(ptr noundef nonnull @.str.12, ptr noundef %92) #8
  %94 = load i32, ptr %0, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i32 [ %94, %91 ], [ %88, %87 ]
  %97 = and i32 %96, 33554432
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr @outfile, align 8, !tbaa !39
  %101 = tail call i32 @fputs(ptr noundef nonnull @.str.13, ptr noundef %100) #8
  %102 = load i32, ptr %0, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i32 [ %102, %99 ], [ %96, %95 ]
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr @outfile, align 8, !tbaa !39
  %108 = tail call i32 @fputs(ptr noundef nonnull @.str.14, ptr noundef %107) #8
  %109 = load i32, ptr %0, align 8
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i32 [ %109, %106 ], [ %104, %103 ]
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %112, -3
  %114 = icmp ult i32 %113, 2
  %115 = lshr i32 %111, 16
  %116 = and i32 %115, 255
  br i1 %114, label %117, label %122

117:                                              ; preds = %110
  %118 = icmp ult i32 %116, 31
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = zext nneg i32 %116 to i64
  %121 = getelementptr inbounds [0 x ptr], ptr @reg_note_name, i64 0, i64 %120
  br label %127

122:                                              ; preds = %110
  %123 = icmp eq i32 %116, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %117, %122
  %125 = zext nneg i32 %116 to i64
  %126 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %125
  br label %127

127:                                              ; preds = %119, %124
  %128 = phi ptr [ %126, %124 ], [ %121, %119 ]
  %129 = load ptr, ptr @outfile, align 8, !tbaa !39
  %130 = load ptr, ptr %128, align 8, !tbaa !39
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.15, ptr noundef %130) #8
  br label %132

132:                                              ; preds = %127, %122
  %133 = load i32, ptr %0, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 138
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !42
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 28
  %142 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %141, label %143, label %145

143:                                              ; preds = %136
  %144 = tail call i32 @fputs(ptr noundef nonnull @.str.16, ptr noundef %142) #8
  br label %146

145:                                              ; preds = %136
  tail call void @print_mem_expr(ptr noundef %142, ptr noundef nonnull %138) #8
  br label %146

146:                                              ; preds = %145, %143
  %147 = load ptr, ptr @outfile, align 8, !tbaa !39
  %148 = tail call i32 @fputc(i32 noundef 32, ptr noundef %147) #8
  %149 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %150 = load ptr, ptr %149, align 8, !tbaa !42
  tail call fastcc void @print_rtx(ptr noundef %150) #8
  %151 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %152 = load i32, ptr %151, align 8, !tbaa !42
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load ptr, ptr @outfile, align 8, !tbaa !39
  %156 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 9, i64 1, ptr %155)
  br label %157

157:                                              ; preds = %154, %146
  store i1 true, ptr @sawclose, align 4
  %158 = load i8, ptr getelementptr inbounds ([139 x i8], ptr @rtx_length, i64 0, i64 138), align 2, !tbaa !42
  %159 = zext i8 %158 to i32
  %160 = load i32, ptr %0, align 8
  br label %161

161:                                              ; preds = %52, %157, %132, %38
  %162 = phi i32 [ %22, %38 ], [ %55, %52 ], [ %160, %157 ], [ %133, %132 ]
  %163 = phi i32 [ 3, %38 ], [ 0, %52 ], [ %159, %157 ], [ 0, %132 ]
  %164 = and i32 %162, 65535
  %165 = icmp eq i32 %164, 32
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = lshr i32 %162, 16
  %168 = and i32 %167, 255
  %169 = zext nneg i32 %168 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !42
  %172 = add i8 %171, -8
  %173 = icmp ult i8 %172, 10
  br i1 %173, label %174, label %180

174:                                              ; preds = %166
  %175 = zext nneg i8 %172 to i16
  %176 = lshr i16 523, %175
  %177 = and i16 %176, 1
  %178 = icmp eq i16 %177, 0
  %179 = select i1 %178, i32 %163, i32 5
  br label %180

180:                                              ; preds = %174, %166, %161
  %181 = phi i32 [ %163, %161 ], [ %163, %166 ], [ %179, %174 ]
  %182 = zext nneg i32 %164 to i64
  %183 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !42
  %185 = zext i8 %184 to i32
  %186 = icmp ult i32 %181, %185
  br i1 %186, label %187, label %641

187:                                              ; preds = %180
  %188 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %182
  %189 = load ptr, ptr %188, align 8, !tbaa !39
  %190 = zext nneg i32 %181 to i64
  %191 = getelementptr inbounds i8, ptr %189, i64 %190
  %192 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %193 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %194 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  br label %195

195:                                              ; preds = %187, %632
  %196 = phi i64 [ %190, %187 ], [ %633, %632 ]
  %197 = phi i32 [ %164, %187 ], [ %635, %632 ]
  %198 = phi i32 [ %162, %187 ], [ %634, %632 ]
  %199 = phi ptr [ %191, %187 ], [ %200, %632 ]
  %200 = getelementptr inbounds i8, ptr %199, i64 1
  %201 = load i8, ptr %199, align 1, !tbaa !42
  switch i8 %201, label %631 [
    i8 84, label %202
    i8 83, label %202
    i8 115, label %202
    i8 48, label %219
    i8 101, label %329
    i8 69, label %341
    i8 86, label %341
    i8 119, label %391
    i8 105, label %408
    i8 110, label %549
    i8 117, label %557
    i8 98, label %606
    i8 116, label %615
    i8 42, label %619
    i8 66, label %622
  ]

202:                                              ; preds = %195, %195, %195
  %203 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %204 = load ptr, ptr %203, align 8, !tbaa !42
  %205 = icmp eq ptr %204, null
  %206 = load i32, ptr @dump_for_graph, align 4, !tbaa !35
  %207 = icmp eq i32 %206, 0
  br i1 %205, label %208, label %212

208:                                              ; preds = %202
  %209 = select i1 %207, ptr @.str.19, ptr @.str.18
  %210 = load ptr, ptr @outfile, align 8, !tbaa !39
  %211 = tail call i32 @fputs(ptr noundef nonnull %209, ptr noundef %210) #8
  br label %218

212:                                              ; preds = %202
  %213 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %207, label %216, label %214

214:                                              ; preds = %212
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.20, ptr noundef nonnull %204) #8
  br label %218

216:                                              ; preds = %212
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.21, ptr noundef nonnull %204) #8
  br label %218

218:                                              ; preds = %214, %216, %208
  store i1 true, ptr @sawclose, align 4
  br label %632

219:                                              ; preds = %195
  %220 = icmp eq i64 %196, 1
  %221 = icmp eq i32 %197, 37
  %222 = and i1 %220, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #8
  %225 = load i32, ptr %193, align 8, !tbaa !42
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %632, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr @outfile, align 8, !tbaa !39
  %229 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.22, i32 noundef %225) #8
  br label %632

230:                                              ; preds = %219
  br i1 %220, label %231, label %239

231:                                              ; preds = %230
  %232 = icmp eq i32 %197, 45
  br i1 %232, label %233, label %632

233:                                              ; preds = %231
  %234 = load i32, ptr %193, align 8, !tbaa !42
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %632, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr @outfile, align 8, !tbaa !39
  %238 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef nonnull @.str.23, i32 noundef %234) #8
  br label %632

239:                                              ; preds = %230
  %240 = trunc i64 %196 to i32
  switch i32 %240, label %632 [
    i32 2, label %241
    i32 4, label %251
    i32 8, label %297
    i32 0, label %311
  ]

241:                                              ; preds = %239
  %242 = and i32 %198, 67174399
  %243 = icmp eq i32 %242, 45
  br i1 %243, label %244, label %632

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %246 = load ptr, ptr %245, align 8, !tbaa !42
  %247 = icmp eq ptr %246, null
  br i1 %247, label %632, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr @outfile, align 8, !tbaa !39
  %250 = load i32, ptr @dump_flags, align 4, !tbaa !35
  tail call void @print_node_brief(ptr noundef %249, ptr noundef nonnull @.str, ptr noundef nonnull %246, i32 noundef %250) #9
  br label %632

251:                                              ; preds = %239
  %252 = icmp eq i32 %197, 13
  br i1 %252, label %253, label %632

253:                                              ; preds = %251
  %254 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %255 = load i32, ptr %254, align 8, !tbaa !42
  switch i32 %255, label %632 [
    i32 7, label %256
    i32 8, label %256
    i32 2, label %266
    i32 3, label %266
    i32 10, label %269
    i32 1, label %277
    i32 11, label %285
    i32 9, label %293
  ]

256:                                              ; preds = %253, %253
  %257 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !35
  %258 = icmp eq i32 %257, 0
  %259 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %258, label %262, label %260

260:                                              ; preds = %256
  %261 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %259)
  br label %265

262:                                              ; preds = %256
  %263 = load i32, ptr %194, align 8, !tbaa !42
  %264 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.25, i32 noundef %263) #8
  br label %265

265:                                              ; preds = %262, %260
  store i1 true, ptr @sawclose, align 4
  br label %632

266:                                              ; preds = %253, %253
  %267 = load ptr, ptr @outfile, align 8, !tbaa !39
  %268 = load ptr, ptr %194, align 8, !tbaa !42
  tail call void @dump_addr(ptr noundef %267, ptr noundef nonnull @.str.26, ptr noundef %268) #9
  store i1 true, ptr @sawclose, align 4
  br label %632

269:                                              ; preds = %253
  %270 = load ptr, ptr %194, align 8, !tbaa !42
  %271 = icmp eq ptr %270, null
  br i1 %271, label %632, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr @outfile, align 8, !tbaa !39
  %274 = getelementptr inbounds %struct.basic_block_def, ptr %270, i64 0, i32 9
  %275 = load i32, ptr %274, align 8, !tbaa !43
  %276 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.27, i32 noundef %275) #8
  br label %632

277:                                              ; preds = %253
  %278 = load ptr, ptr %194, align 8, !tbaa !42
  %279 = icmp eq ptr %278, null
  %280 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %279, label %283, label %281

281:                                              ; preds = %277
  %282 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.21, ptr noundef nonnull %278) #8
  br label %632

283:                                              ; preds = %277
  %284 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %280)
  br label %632

285:                                              ; preds = %253
  %286 = load ptr, ptr %194, align 8, !tbaa !42
  %287 = icmp eq ptr %286, null
  br i1 %287, label %632, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr @outfile, align 8, !tbaa !39
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 9
  %291 = load i32, ptr %290, align 8, !tbaa !43
  %292 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef nonnull @.str.27, i32 noundef %291) #8
  br label %632

293:                                              ; preds = %253
  %294 = load ptr, ptr @outfile, align 8, !tbaa !39
  %295 = tail call i32 @fputc(i32 noundef 32, ptr noundef %294) #8
  %296 = load ptr, ptr %194, align 8, !tbaa !42
  tail call fastcc void @print_rtx(ptr noundef %296) #8
  br label %632

297:                                              ; preds = %239
  %298 = icmp eq i32 %197, 9
  br i1 %298, label %299, label %632

299:                                              ; preds = %297
  %300 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %301 = load ptr, ptr %300, align 8, !tbaa !42
  %302 = icmp eq ptr %301, null
  br i1 %302, label %632, label %303

303:                                              ; preds = %299
  %304 = load ptr, ptr @outfile, align 8, !tbaa !39
  %305 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %306 = load i32, ptr @indent, align 4, !tbaa !35
  %307 = shl nsw i32 %306, 1
  %308 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1
  %309 = load i32, ptr %308, align 8, !tbaa !42
  %310 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %304, ptr noundef nonnull @.str.28, ptr noundef %305, i32 noundef %307, ptr noundef nonnull @.str, i32 noundef %309) #8
  br label %632

311:                                              ; preds = %239
  %312 = trunc i32 %198 to i16
  switch i16 %312, label %632 [
    i16 1, label %313
    i16 2, label %322
  ]

313:                                              ; preds = %311
  %314 = load ptr, ptr %192, align 8, !tbaa !42
  %315 = load ptr, ptr @outfile, align 8, !tbaa !39
  %316 = getelementptr inbounds %struct.cselib_val_struct, ptr %314, i64 0, i32 1
  %317 = load i32, ptr %316, align 4, !tbaa !46
  %318 = load i32, ptr %314, align 8, !tbaa !48
  %319 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %315, ptr noundef nonnull @.str.29, i32 noundef %317, i32 noundef %318) #8
  %320 = load ptr, ptr @outfile, align 8, !tbaa !39
  tail call void @dump_addr(ptr noundef %320, ptr noundef nonnull @.str.30, ptr noundef nonnull %0) #9
  %321 = load ptr, ptr @outfile, align 8, !tbaa !39
  tail call void @dump_addr(ptr noundef %321, ptr noundef nonnull @.str.31, ptr noundef nonnull %314) #9
  br label %632

322:                                              ; preds = %311
  %323 = load ptr, ptr @outfile, align 8, !tbaa !39
  %324 = load ptr, ptr %192, align 8, !tbaa !42
  %325 = getelementptr inbounds %struct.tree_decl_minimal, ptr %324, i64 0, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !42
  %327 = sub i32 0, %326
  %328 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef nonnull @.str.32, i32 noundef %327) #8
  br label %632

329:                                              ; preds = %566, %563, %195
  %330 = load i32, ptr @indent, align 4, !tbaa !35
  %331 = add nsw i32 %330, 2
  store i32 %331, ptr @indent, align 4, !tbaa !35
  %332 = load i1, ptr @sawclose, align 4
  br i1 %332, label %336, label %333

333:                                              ; preds = %329
  %334 = load ptr, ptr @outfile, align 8, !tbaa !39
  %335 = tail call i32 @fputc(i32 32, ptr %334)
  br label %336

336:                                              ; preds = %333, %329
  %337 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %338 = load ptr, ptr %337, align 8, !tbaa !42
  tail call fastcc void @print_rtx(ptr noundef %338) #8
  %339 = load i32, ptr @indent, align 4, !tbaa !35
  %340 = add nsw i32 %339, -2
  store i32 %340, ptr @indent, align 4, !tbaa !35
  br label %632

341:                                              ; preds = %195, %195
  %342 = load i32, ptr @indent, align 4, !tbaa !35
  %343 = add nsw i32 %342, 2
  store i32 %343, ptr @indent, align 4, !tbaa !35
  %344 = load i1, ptr @sawclose, align 4
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  %346 = load ptr, ptr @outfile, align 8, !tbaa !39
  %347 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %348 = shl nsw i32 %343, 1
  %349 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef nonnull @.str.4, ptr noundef %347, i32 noundef %348, ptr noundef nonnull @.str) #8
  store i1 false, ptr @sawclose, align 4
  br label %350

350:                                              ; preds = %345, %341
  %351 = load ptr, ptr @outfile, align 8, !tbaa !39
  %352 = tail call i32 @fputs(ptr noundef nonnull @.str.33, ptr noundef %351) #8
  %353 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %354 = load ptr, ptr %353, align 8, !tbaa !42
  %355 = icmp eq ptr %354, null
  br i1 %355, label %378, label %356

356:                                              ; preds = %350
  %357 = load i32, ptr @indent, align 4, !tbaa !35
  %358 = add nsw i32 %357, 2
  store i32 %358, ptr @indent, align 4, !tbaa !35
  %359 = load i32, ptr %354, align 8, !tbaa !49
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %375, label %361

361:                                              ; preds = %356
  store i1 true, ptr @sawclose, align 4
  %362 = icmp sgt i32 %359, 0
  br i1 %362, label %363, label %375

363:                                              ; preds = %361, %363
  %364 = phi i64 [ %368, %363 ], [ 0, %361 ]
  %365 = phi ptr [ %369, %363 ], [ %354, %361 ]
  %366 = getelementptr inbounds %struct.rtvec_def, ptr %365, i64 0, i32 1, i64 %364
  %367 = load ptr, ptr %366, align 8, !tbaa !39
  tail call fastcc void @print_rtx(ptr noundef %367) #8
  %368 = add nuw nsw i64 %364, 1
  %369 = load ptr, ptr %353, align 8, !tbaa !42
  %370 = load i32, ptr %369, align 8, !tbaa !49
  %371 = sext i32 %370 to i64
  %372 = icmp slt i64 %368, %371
  br i1 %372, label %363, label %373, !llvm.loop !51

373:                                              ; preds = %363
  %374 = load i32, ptr @indent, align 4, !tbaa !35
  br label %375

375:                                              ; preds = %356, %373, %361
  %376 = phi i32 [ %374, %373 ], [ %358, %361 ], [ %358, %356 ]
  %377 = add nsw i32 %376, -2
  store i32 %377, ptr @indent, align 4, !tbaa !35
  br label %378

378:                                              ; preds = %375, %350
  %379 = load i1, ptr @sawclose, align 4
  br i1 %379, label %380, label %386

380:                                              ; preds = %378
  %381 = load ptr, ptr @outfile, align 8, !tbaa !39
  %382 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %383 = load i32, ptr @indent, align 4, !tbaa !35
  %384 = shl nsw i32 %383, 1
  %385 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %381, ptr noundef nonnull @.str.4, ptr noundef %382, i32 noundef %384, ptr noundef nonnull @.str) #8
  br label %386

386:                                              ; preds = %380, %378
  %387 = load ptr, ptr @outfile, align 8, !tbaa !39
  %388 = tail call i32 @fputs(ptr noundef nonnull @.str.34, ptr noundef %387) #8
  store i1 true, ptr @sawclose, align 4
  %389 = load i32, ptr @indent, align 4, !tbaa !35
  %390 = add nsw i32 %389, -2
  store i32 %390, ptr @indent, align 4, !tbaa !35
  br label %632

391:                                              ; preds = %195
  %392 = load i32, ptr @flag_simple, align 4, !tbaa !35
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %397

394:                                              ; preds = %391
  %395 = load ptr, ptr @outfile, align 8, !tbaa !39
  %396 = tail call i32 @fputc(i32 32, ptr %395)
  br label %397

397:                                              ; preds = %394, %391
  %398 = load ptr, ptr @outfile, align 8, !tbaa !39
  %399 = getelementptr inbounds [1 x i64], ptr %192, i64 0, i64 %196
  %400 = load i64, ptr %399, align 8, !tbaa !42
  %401 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.35, i64 noundef %400) #8
  %402 = load i32, ptr @flag_simple, align 4, !tbaa !35
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %632

404:                                              ; preds = %397
  %405 = load ptr, ptr @outfile, align 8, !tbaa !39
  %406 = load i64, ptr %399, align 8, !tbaa !42
  %407 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %405, ptr noundef nonnull @.str.36, i64 noundef %406) #8
  br label %632

408:                                              ; preds = %195
  %409 = icmp eq i64 %196, 4
  %410 = add nsw i32 %197, -7
  %411 = icmp ult i32 %410, 4
  %412 = and i1 %409, %411
  br i1 %412, label %413, label %424

413:                                              ; preds = %408
  %414 = load i32, ptr %194, align 8, !tbaa !42
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %632, label %416

416:                                              ; preds = %413
  %417 = tail call ptr @insn_file(ptr noundef nonnull %0) #9
  %418 = icmp eq ptr %417, null
  br i1 %418, label %632, label %419

419:                                              ; preds = %416
  %420 = load ptr, ptr @outfile, align 8, !tbaa !39
  %421 = tail call ptr @insn_file(ptr noundef nonnull %0) #9
  %422 = tail call i32 @insn_line(ptr noundef nonnull %0) #9
  %423 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %420, ptr noundef nonnull @.str.37, ptr noundef %421, i32 noundef %422) #8
  br label %632

424:                                              ; preds = %408
  %425 = trunc i64 %196 to i32
  switch i32 %425, label %454 [
    i32 6, label %426
    i32 1, label %436
  ]

426:                                              ; preds = %424
  %427 = trunc i32 %198 to i16
  switch i16 %427, label %454 [
    i16 17, label %428
    i16 13, label %445
  ]

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %430 = load ptr, ptr @outfile, align 8, !tbaa !39
  %431 = load i32, ptr %429, align 8, !tbaa !42
  %432 = tail call ptr @locator_file(i32 noundef %431) #9
  %433 = load i32, ptr %429, align 8, !tbaa !42
  %434 = tail call i32 @locator_line(i32 noundef %433) #9
  %435 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %430, ptr noundef nonnull @.str.37, ptr noundef %432, i32 noundef %434) #8
  br label %632

436:                                              ; preds = %424
  %437 = icmp eq i32 %197, 16
  br i1 %437, label %438, label %454

438:                                              ; preds = %436
  %439 = load ptr, ptr @outfile, align 8, !tbaa !39
  %440 = load i32, ptr %193, align 8, !tbaa !42
  %441 = tail call ptr @locator_file(i32 noundef %440) #9
  %442 = load i32, ptr %193, align 8, !tbaa !42
  %443 = tail call i32 @locator_line(i32 noundef %442) #9
  %444 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %439, ptr noundef nonnull @.str.37, ptr noundef %441, i32 noundef %443) #8
  br label %632

445:                                              ; preds = %426
  %446 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %447 = load i32, ptr %446, align 8, !tbaa !42
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %632

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %451 = load ptr, ptr @outfile, align 8, !tbaa !39
  %452 = load i32, ptr %450, align 8, !tbaa !42
  %453 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %451, ptr noundef nonnull @.str.25, i32 noundef %452) #8
  br label %632

454:                                              ; preds = %426, %424, %436
  %455 = shl nuw nsw i64 %196, 3
  %456 = add nuw nsw i64 %455, 8
  %457 = getelementptr inbounds i8, ptr %0, i64 %456
  %458 = load i32, ptr %457, align 8, !tbaa !42
  %459 = icmp eq i32 %197, 37
  %460 = icmp slt i32 %458, 53
  %461 = select i1 %459, i1 %460, i1 false
  br i1 %461, label %462, label %469

462:                                              ; preds = %454
  %463 = load ptr, ptr @outfile, align 8, !tbaa !39
  %464 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #8
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !39
  %468 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %463, ptr noundef nonnull @.str.38, i32 noundef %464, ptr noundef %467) #8
  br label %498

469:                                              ; preds = %454
  %470 = icmp slt i32 %458, 58
  %471 = select i1 %459, i1 %470, i1 false
  br i1 %471, label %472, label %487

472:                                              ; preds = %469
  %473 = load ptr, ptr @outfile, align 8, !tbaa !39
  switch i32 %458, label %484 [
    i32 53, label %474
    i32 54, label %476
    i32 55, label %478
    i32 56, label %480
    i32 57, label %482
  ]

474:                                              ; preds = %472
  %475 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.39, i32 noundef 53) #8
  br label %498

476:                                              ; preds = %472
  %477 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.40, i32 noundef 54) #8
  br label %498

478:                                              ; preds = %472
  %479 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.41, i32 noundef 55) #8
  br label %498

480:                                              ; preds = %472
  %481 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.42, i32 noundef 56) #8
  br label %498

482:                                              ; preds = %472
  %483 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.43, i32 noundef 57) #8
  br label %498

484:                                              ; preds = %472
  %485 = add nsw i32 %458, -53
  %486 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %473, ptr noundef nonnull @.str.44, i32 noundef %458, i32 noundef %485) #8
  br label %498

487:                                              ; preds = %469
  %488 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !35
  %489 = icmp ne i32 %488, 0
  %490 = icmp eq i32 %197, 13
  %491 = or i1 %33, %490
  %492 = and i1 %491, %489
  %493 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %492, label %494, label %496

494:                                              ; preds = %487
  %495 = tail call i32 @fputc(i32 noundef 35, ptr noundef %493) #8
  br label %498

496:                                              ; preds = %487
  %497 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %493, ptr noundef nonnull @.str.25, i32 noundef %458) #8
  br label %498

498:                                              ; preds = %476, %480, %484, %482, %478, %474, %496, %494, %462
  %499 = load i32, ptr %0, align 8
  %500 = and i32 %499, 65535
  %501 = icmp eq i32 %500, 37
  br i1 %501, label %502, label %536

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %504 = load ptr, ptr %503, align 8, !tbaa !42
  %505 = icmp eq ptr %504, null
  br i1 %505, label %536, label %506

506:                                              ; preds = %502
  %507 = load ptr, ptr @outfile, align 8, !tbaa !39
  %508 = tail call i32 @fputs(ptr noundef nonnull @.str.33, ptr noundef %507) #8
  %509 = load i32, ptr %193, align 8, !tbaa !42
  %510 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #8
  %511 = icmp eq i32 %509, %510
  br i1 %511, label %515, label %512

512:                                              ; preds = %506
  %513 = load ptr, ptr @outfile, align 8, !tbaa !39
  %514 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %513, ptr noundef nonnull @.str.45, i32 noundef %509) #8
  br label %515

515:                                              ; preds = %512, %506
  %516 = load ptr, ptr %503, align 8, !tbaa !42
  %517 = icmp eq ptr %516, null
  br i1 %517, label %533, label %518

518:                                              ; preds = %515
  %519 = load ptr, ptr %516, align 8, !tbaa !53
  %520 = icmp eq ptr %519, null
  br i1 %520, label %525, label %521

521:                                              ; preds = %518
  %522 = load ptr, ptr @outfile, align 8, !tbaa !39
  tail call void @print_mem_expr(ptr noundef %522, ptr noundef nonnull %519) #8
  %523 = load ptr, ptr %503, align 8, !tbaa !42
  %524 = icmp eq ptr %523, null
  br i1 %524, label %533, label %525

525:                                              ; preds = %518, %521
  %526 = phi ptr [ %523, %521 ], [ %516, %518 ]
  %527 = getelementptr inbounds %struct.reg_attrs, ptr %526, i64 0, i32 1
  %528 = load i64, ptr %527, align 8, !tbaa !55
  %529 = icmp eq i64 %528, 0
  br i1 %529, label %533, label %530

530:                                              ; preds = %525
  %531 = load ptr, ptr @outfile, align 8, !tbaa !39
  %532 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %531, ptr noundef nonnull @.str.46, i64 noundef %528) #8
  br label %533

533:                                              ; preds = %515, %521, %530, %525
  %534 = load ptr, ptr @outfile, align 8, !tbaa !39
  %535 = tail call i32 @fputs(ptr noundef nonnull @.str.47, ptr noundef %534) #8
  br label %536

536:                                              ; preds = %533, %502, %498
  %537 = icmp eq i64 %456, 56
  %538 = and i1 %33, %537
  br i1 %538, label %539, label %548

539:                                              ; preds = %536
  %540 = load i32, ptr %457, align 8, !tbaa !42
  %541 = icmp sgt i32 %540, -1
  br i1 %541, label %542, label %548

542:                                              ; preds = %539
  %543 = tail call ptr @get_insn_name(i32 noundef %540) #9
  %544 = icmp eq ptr %543, null
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr @outfile, align 8, !tbaa !39
  %547 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %546, ptr noundef nonnull @.str.48, ptr noundef nonnull %543) #8
  br label %548

548:                                              ; preds = %545, %542, %539, %536
  store i1 false, ptr @sawclose, align 4
  br label %632

549:                                              ; preds = %195
  %550 = load ptr, ptr @outfile, align 8, !tbaa !39
  %551 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %552 = load i32, ptr %551, align 8, !tbaa !42
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %553
  %555 = load ptr, ptr %554, align 8, !tbaa !39
  %556 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %550, ptr noundef nonnull @.str.49, ptr noundef %555) #8
  store i1 false, ptr @sawclose, align 4
  br label %632

557:                                              ; preds = %195
  %558 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %559 = load ptr, ptr %558, align 8, !tbaa !42
  %560 = icmp eq ptr %559, null
  br i1 %560, label %602, label %561

561:                                              ; preds = %557
  %562 = icmp eq i32 %197, 44
  br i1 %562, label %563, label %580

563:                                              ; preds = %561
  %564 = load i32, ptr %559, align 8
  %565 = trunc i32 %564 to i16
  switch i16 %565, label %329 [
    i16 13, label %566
    i16 12, label %580
  ]

566:                                              ; preds = %563
  %567 = getelementptr inbounds %struct.rtx_def, ptr %559, i64 0, i32 1
  %568 = getelementptr inbounds %struct.rtx_def, ptr %559, i64 1
  %569 = load i32, ptr %568, align 8, !tbaa !42
  %570 = icmp eq i32 %569, 1
  br i1 %570, label %571, label %329

571:                                              ; preds = %566
  %572 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !35
  %573 = icmp eq i32 %572, 0
  %574 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %573, label %577, label %575

575:                                              ; preds = %571
  %576 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 12, i64 1, ptr %574)
  br label %601

577:                                              ; preds = %571
  %578 = load i32, ptr %567, align 8, !tbaa !42
  %579 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %574, ptr noundef nonnull @.str.51, i32 noundef %578) #8
  br label %601

580:                                              ; preds = %563, %561
  %581 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !35
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %593

583:                                              ; preds = %580
  %584 = load i32, ptr @flag_dump_unnumbered_links, align 4, !tbaa !35
  %585 = icmp ne i32 %584, 0
  %586 = trunc i64 %196 to i32
  %587 = add nsw i32 %586, -1
  %588 = icmp ult i32 %587, 2
  %589 = and i1 %588, %585
  %590 = add nsw i32 %197, -7
  %591 = icmp ult i32 %590, 7
  %592 = select i1 %589, i1 %591, i1 false
  br i1 %592, label %593, label %596

593:                                              ; preds = %583, %580
  %594 = load ptr, ptr @outfile, align 8, !tbaa !39
  %595 = tail call i32 @fputs(ptr noundef nonnull @.str.24, ptr noundef %594) #8
  br label %605

596:                                              ; preds = %583
  %597 = load ptr, ptr @outfile, align 8, !tbaa !39
  %598 = getelementptr inbounds %struct.rtx_def, ptr %559, i64 0, i32 1
  %599 = load i32, ptr %598, align 8, !tbaa !42
  %600 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %597, ptr noundef nonnull @.str.25, i32 noundef %599) #8
  br label %605

601:                                              ; preds = %575, %577
  store i1 false, ptr @sawclose, align 4
  br label %632

602:                                              ; preds = %557
  %603 = load ptr, ptr @outfile, align 8, !tbaa !39
  %604 = tail call i32 @fputs(ptr noundef nonnull @.str.52, ptr noundef %603) #8
  br label %605

605:                                              ; preds = %593, %596, %602
  store i1 false, ptr @sawclose, align 4
  br label %632

606:                                              ; preds = %195
  %607 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %608 = load ptr, ptr %607, align 8, !tbaa !42
  %609 = icmp eq ptr %608, null
  %610 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %609, label %611, label %613

611:                                              ; preds = %606
  %612 = tail call i32 @fputs(ptr noundef nonnull @.str.53, ptr noundef %610) #8
  br label %614

613:                                              ; preds = %606
  tail call void @bitmap_print(ptr noundef %610, ptr noundef nonnull %608, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #9
  br label %614

614:                                              ; preds = %613, %611
  store i1 false, ptr @sawclose, align 4
  br label %632

615:                                              ; preds = %195
  %616 = load ptr, ptr @outfile, align 8, !tbaa !39
  %617 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %618 = load ptr, ptr %617, align 8, !tbaa !42
  tail call void @dump_addr(ptr noundef %616, ptr noundef nonnull @.str.26, ptr noundef %618) #9
  br label %632

619:                                              ; preds = %195
  %620 = load ptr, ptr @outfile, align 8, !tbaa !39
  %621 = tail call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %620) #8
  store i1 false, ptr @sawclose, align 4
  br label %632

622:                                              ; preds = %195
  %623 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %196
  %624 = load ptr, ptr %623, align 8, !tbaa !42
  %625 = icmp eq ptr %624, null
  br i1 %625, label %632, label %626

626:                                              ; preds = %622
  %627 = load ptr, ptr @outfile, align 8, !tbaa !39
  %628 = getelementptr inbounds %struct.basic_block_def, ptr %624, i64 0, i32 9
  %629 = load i32, ptr %628, align 8, !tbaa !43
  %630 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %627, ptr noundef nonnull @.str.57, i32 noundef %629) #8
  br label %632

631:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.58, i32 noundef 544, ptr noundef nonnull @.str.59) #9
  br label %632

632:                                              ; preds = %311, %239, %231, %297, %299, %241, %251, %601, %285, %288, %281, %283, %269, %272, %244, %248, %233, %236, %218, %336, %386, %549, %605, %614, %615, %619, %631, %253, %293, %266, %265, %313, %322, %303, %223, %227, %404, %397, %428, %548, %449, %445, %438, %413, %416, %419, %626, %622
  %633 = add nuw nsw i64 %196, 1
  %634 = load i32, ptr %0, align 8
  %635 = and i32 %634, 65535
  %636 = zext nneg i32 %635 to i64
  %637 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !42
  %639 = zext i8 %638 to i64
  %640 = icmp ult i64 %633, %639
  br i1 %640, label %195, label %641, !llvm.loop !56

641:                                              ; preds = %632, %180
  %642 = phi i32 [ %162, %180 ], [ %634, %632 ]
  %643 = trunc i32 %642 to i16
  switch i16 %643, label %788 [
    i16 43, label %644
    i16 32, label %755
    i16 12, label %767
  ]

644:                                              ; preds = %641
  %645 = load i8, ptr @final_insns_dump_p, align 1, !tbaa !42
  %646 = icmp eq i8 %645, 0
  %647 = load ptr, ptr @outfile, align 8, !tbaa !39
  br i1 %646, label %650, label %648

648:                                              ; preds = %644
  %649 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %647)
  br label %661

650:                                              ; preds = %644
  %651 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %652 = load ptr, ptr %651, align 8, !tbaa !42
  %653 = icmp eq ptr %652, null
  br i1 %653, label %658, label %654

654:                                              ; preds = %650
  %655 = getelementptr inbounds %struct.mem_attrs, ptr %652, i64 0, i32 3
  %656 = load i32, ptr %655, align 8, !tbaa !57
  %657 = sext i32 %656 to i64
  br label %658

658:                                              ; preds = %650, %654
  %659 = phi i64 [ %657, %654 ], [ 0, %650 ]
  %660 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %647, ptr noundef nonnull @.str.60, i64 noundef %659) #8
  br label %661

661:                                              ; preds = %658, %648
  %662 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %663 = load ptr, ptr %662, align 8, !tbaa !42
  %664 = icmp eq ptr %663, null
  br i1 %664, label %691, label %665

665:                                              ; preds = %661
  %666 = load ptr, ptr %663, align 8, !tbaa !59
  %667 = icmp eq ptr %666, null
  br i1 %667, label %672, label %668

668:                                              ; preds = %665
  %669 = load ptr, ptr @outfile, align 8, !tbaa !39
  tail call void @print_mem_expr(ptr noundef %669, ptr noundef nonnull %666) #8
  %670 = load ptr, ptr %662, align 8, !tbaa !42
  %671 = icmp eq ptr %670, null
  br i1 %671, label %691, label %672

672:                                              ; preds = %665, %668
  %673 = phi ptr [ %670, %668 ], [ %663, %665 ]
  %674 = getelementptr inbounds %struct.mem_attrs, ptr %673, i64 0, i32 1
  %675 = load ptr, ptr %674, align 8, !tbaa !60
  %676 = icmp eq ptr %675, null
  br i1 %676, label %684, label %677

677:                                              ; preds = %672
  %678 = load ptr, ptr @outfile, align 8, !tbaa !39
  %679 = getelementptr inbounds %struct.rtx_def, ptr %675, i64 0, i32 1
  %680 = load i64, ptr %679, align 8, !tbaa !42
  %681 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %678, ptr noundef nonnull @.str.46, i64 noundef %680) #8
  %682 = load ptr, ptr %662, align 8, !tbaa !42
  %683 = icmp eq ptr %682, null
  br i1 %683, label %691, label %684

684:                                              ; preds = %672, %677
  %685 = phi ptr [ %682, %677 ], [ %673, %672 ]
  %686 = getelementptr inbounds %struct.mem_attrs, ptr %685, i64 0, i32 2
  %687 = load ptr, ptr %686, align 8, !tbaa !61
  %688 = icmp eq ptr %687, null
  br i1 %688, label %732, label %689

689:                                              ; preds = %684
  %690 = load ptr, ptr @outfile, align 8, !tbaa !39
  br label %707

691:                                              ; preds = %661, %668, %677
  %692 = load i32, ptr %0, align 8
  %693 = lshr i32 %692, 16
  %694 = and i32 %693, 255
  %695 = icmp eq i32 %694, 1
  br i1 %695, label %737, label %696

696:                                              ; preds = %691
  %697 = zext nneg i32 %694 to i64
  %698 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %697
  %699 = load i8, ptr %698, align 1, !tbaa !42
  %700 = zext i8 %699 to i64
  %701 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %700) #9
  %702 = icmp eq ptr %701, null
  %703 = load ptr, ptr %662, align 8, !tbaa !42
  br i1 %702, label %729, label %704

704:                                              ; preds = %696
  %705 = load ptr, ptr @outfile, align 8, !tbaa !39
  %706 = icmp eq ptr %703, null
  br i1 %706, label %712, label %707

707:                                              ; preds = %689, %704
  %708 = phi ptr [ %690, %689 ], [ %705, %704 ]
  %709 = phi ptr [ %685, %689 ], [ %703, %704 ]
  %710 = getelementptr inbounds %struct.mem_attrs, ptr %709, i64 0, i32 2
  %711 = load ptr, ptr %710, align 8, !tbaa !61
  br label %722

712:                                              ; preds = %704
  %713 = load i32, ptr %0, align 8
  %714 = lshr i32 %713, 16
  %715 = and i32 %714, 255
  %716 = icmp ne i32 %715, 1
  tail call void @llvm.assume(i1 %716)
  %717 = zext nneg i32 %715 to i64
  %718 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %717
  %719 = load i8, ptr %718, align 1, !tbaa !42
  %720 = zext i8 %719 to i64
  %721 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %720) #9
  br label %722

722:                                              ; preds = %712, %707
  %723 = phi ptr [ %708, %707 ], [ %705, %712 ]
  %724 = phi ptr [ %711, %707 ], [ %721, %712 ]
  %725 = getelementptr inbounds %struct.rtx_def, ptr %724, i64 0, i32 1
  %726 = load i64, ptr %725, align 8, !tbaa !42
  %727 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %723, ptr noundef nonnull @.str.61, i64 noundef %726) #8
  %728 = load ptr, ptr %662, align 8, !tbaa !42
  br label %729

729:                                              ; preds = %722, %696
  %730 = phi ptr [ %728, %722 ], [ %703, %696 ]
  %731 = icmp eq ptr %730, null
  br i1 %731, label %737, label %732

732:                                              ; preds = %684, %729
  %733 = phi ptr [ %730, %729 ], [ %685, %684 ]
  %734 = getelementptr inbounds %struct.mem_attrs, ptr %733, i64 0, i32 4
  %735 = load i32, ptr %734, align 4, !tbaa !62
  %736 = icmp eq i32 %735, 1
  br i1 %736, label %743, label %737

737:                                              ; preds = %691, %729, %732
  %738 = phi i32 [ 8, %729 ], [ %735, %732 ], [ 8, %691 ]
  %739 = load ptr, ptr @outfile, align 8, !tbaa !39
  %740 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %739, ptr noundef nonnull @.str.62, i32 noundef %738) #8
  %741 = load ptr, ptr %662, align 8, !tbaa !42
  %742 = icmp eq ptr %741, null
  br i1 %742, label %752, label %743

743:                                              ; preds = %732, %737
  %744 = phi ptr [ %741, %737 ], [ %733, %732 ]
  %745 = getelementptr inbounds %struct.mem_attrs, ptr %744, i64 0, i32 5
  %746 = load i8, ptr %745, align 8, !tbaa !63
  %747 = icmp eq i8 %746, 0
  br i1 %747, label %752, label %748

748:                                              ; preds = %743
  %749 = load ptr, ptr @outfile, align 8, !tbaa !39
  %750 = zext i8 %746 to i32
  %751 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %749, ptr noundef nonnull @.str.63, i32 noundef %750) #8
  br label %752

752:                                              ; preds = %737, %748, %743
  %753 = load ptr, ptr @outfile, align 8, !tbaa !39
  %754 = tail call i32 @fputc(i32 noundef 93, ptr noundef %753) #8
  br label %788

755:                                              ; preds = %641
  %756 = lshr i32 %642, 16
  %757 = and i32 %756, 255
  %758 = zext nneg i32 %757 to i64
  %759 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %758
  %760 = load i8, ptr %759, align 1, !tbaa !42
  switch i8 %760, label %788 [
    i8 8, label %761
    i8 9, label %761
    i8 11, label %761
    i8 17, label %761
  ]

761:                                              ; preds = %755, %755, %755, %755
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #10
  %762 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  call void @real_to_decimal(ptr noundef nonnull %2, ptr noundef nonnull %762, i64 noundef 60, i64 noundef 0, i32 noundef 1) #9
  %763 = load ptr, ptr @outfile, align 8, !tbaa !39
  %764 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %763, ptr noundef nonnull @.str.49, ptr noundef nonnull %2) #8
  call void @real_to_hexadecimal(ptr noundef nonnull %2, ptr noundef nonnull %762, i64 noundef 60, i64 noundef 0, i32 noundef 1) #9
  %765 = load ptr, ptr @outfile, align 8, !tbaa !39
  %766 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %765, ptr noundef nonnull @.str.64, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #10
  br label %788

767:                                              ; preds = %641
  %768 = load ptr, ptr @outfile, align 8, !tbaa !39
  %769 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %770 = load i32, ptr %769, align 8, !tbaa !42
  %771 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %768, ptr noundef nonnull @.str.65, i32 noundef %770) #8
  %772 = load i32, ptr %0, align 8
  %773 = lshr i32 %772, 23
  %774 = and i32 %773, 2
  %775 = lshr i32 %772, 25
  %776 = and i32 %775, 1
  %777 = or disjoint i32 %774, %776
  switch i32 %777, label %787 [
    i32 0, label %788
    i32 1, label %778
    i32 2, label %781
    i32 3, label %784
  ]

778:                                              ; preds = %767
  %779 = load ptr, ptr @outfile, align 8, !tbaa !39
  %780 = tail call i32 @fputs(ptr noundef nonnull @.str.66, ptr noundef %779) #8
  br label %788

781:                                              ; preds = %767
  %782 = load ptr, ptr @outfile, align 8, !tbaa !39
  %783 = tail call i32 @fputs(ptr noundef nonnull @.str.67, ptr noundef %782) #8
  br label %788

784:                                              ; preds = %767
  %785 = load ptr, ptr @outfile, align 8, !tbaa !39
  %786 = tail call i32 @fputs(ptr noundef nonnull @.str.68, ptr noundef %785) #8
  br label %788

787:                                              ; preds = %767
  unreachable

788:                                              ; preds = %755, %641, %767, %778, %781, %784, %761, %752
  %789 = load i32, ptr @dump_for_graph, align 4, !tbaa !35
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %797, label %791

791:                                              ; preds = %788
  br i1 %33, label %800, label %792

792:                                              ; preds = %791
  %793 = load i32, ptr %0, align 8
  %794 = and i32 %793, 65535
  %795 = add nsw i32 %794, -11
  %796 = icmp ult i32 %795, 3
  br i1 %796, label %800, label %797

797:                                              ; preds = %792, %788
  %798 = load ptr, ptr @outfile, align 8, !tbaa !39
  %799 = call i32 @fputc(i32 noundef 41, ptr noundef %798) #8
  br label %800

800:                                              ; preds = %797, %791, %792, %25, %18
  %801 = phi i1 [ true, %25 ], [ true, %18 ], [ true, %797 ], [ false, %792 ], [ false, %791 ]
  store i1 %801, ptr @sawclose, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rtx(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !39
  store ptr %2, ptr @outfile, align 8, !tbaa !39
  store i1 false, ptr @sawclose, align 4
  tail call fastcc void @print_rtx(ptr noundef %0) #8
  %3 = load ptr, ptr @stderr, align 8, !tbaa !39
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rtx_list(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %5 = select i1 %3, i32 1, i32 %4
  %6 = icmp slt i32 %1, 0
  %7 = icmp ugt i32 %4, 1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = lshr i32 %4, 1
  br label %14

11:                                               ; preds = %14
  %12 = add nsw i32 %16, -1
  %13 = icmp sgt i32 %16, 1
  br i1 %13, label %14, label %20, !llvm.loop !64

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %18, %11 ], [ %0, %9 ]
  %16 = phi i32 [ %12, %11 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11

20:                                               ; preds = %14, %11, %2
  %21 = phi ptr [ %0, %2 ], [ %15, %14 ], [ %18, %11 ]
  %22 = icmp ne i32 %5, 0
  %23 = icmp ne ptr %21, null
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %32, %25 ], [ %21, %20 ]
  %27 = phi i32 [ %30, %25 ], [ %5, %20 ]
  tail call void @debug_rtx(ptr noundef nonnull %26) #8
  %28 = load ptr, ptr @stderr, align 8, !tbaa !39
  %29 = tail call i32 @fputc(i32 10, ptr %28)
  %30 = add nsw i32 %27, -1
  %31 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = icmp sgt i32 %27, 1
  %34 = icmp ne ptr %32, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %25, label %36, !llvm.loop !65

36:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rtx_range(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !34 {
  tail call void @debug_rtx(ptr noundef %0) #8
  %3 = load ptr, ptr @stderr, align 8, !tbaa !39
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %0, %1
  %7 = or i1 %5, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %11, %8 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  tail call void @debug_rtx(ptr noundef %11) #8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !39
  %13 = tail call i32 @fputc(i32 10, ptr %12)
  %14 = icmp eq ptr %11, null
  %15 = icmp eq ptr %11, %1
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @debug_rtx_find(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %4, !llvm.loop !66

13:                                               ; preds = %4
  %14 = load i32, ptr @debug_rtx_count, align 4, !tbaa !35
  tail call void @debug_rtx_list(ptr noundef nonnull %5, i32 noundef %14) #8
  br label %18

15:                                               ; preds = %9, %2
  %16 = load ptr, ptr @stderr, align 8, !tbaa !39
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %1) #11
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ null, %15 ], [ %5, %13 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  store ptr %0, ptr @outfile, align 8, !tbaa !39
  store i1 false, ptr @sawclose, align 4
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %6 = tail call i32 @fputs(ptr noundef %5, ptr noundef %0) #8
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef %0) #8
  br label %26

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -8
  %12 = icmp ult i16 %11, 6
  br i1 %12, label %13, label %23

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %21, %13 ], [ %1, %8 ]
  %15 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %16 = load ptr, ptr @outfile, align 8, !tbaa !39
  %17 = tail call i32 @fputs(ptr noundef %15, ptr noundef %16) #8
  tail call fastcc void @print_rtx(ptr noundef nonnull %14) #8
  %18 = load ptr, ptr @outfile, align 8, !tbaa !39
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %13, !llvm.loop !67

23:                                               ; preds = %8
  %24 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %25 = tail call i32 @fputs(ptr noundef %24, ptr noundef %0) #8
  tail call fastcc void @print_rtx(ptr noundef nonnull %1) #8
  br label %26

26:                                               ; preds = %13, %23, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @print_rtl_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  store ptr %0, ptr @outfile, align 8, !tbaa !39
  store i1 false, ptr @sawclose, align 4
  %3 = load ptr, ptr @print_rtx_head, align 8, !tbaa !39
  %4 = tail call i32 @fputs(ptr noundef %3, ptr noundef %0) #8
  tail call fastcc void @print_rtx(ptr noundef %1) #8
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #8
  ret i32 1
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_simple_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  store i32 1, ptr @flag_simple, align 4, !tbaa !35
  tail call void @print_rtl(ptr noundef %0, ptr noundef %1) #8
  store i32 0, ptr @flag_simple, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !34 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !42
  ret i32 %3
}

; Function Attrs: optsize
declare void @print_node_brief(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @insn_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @insn_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @locator_file(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @locator_line(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insn_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_to_hexadecimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"print-rtl.c:print_rtx"}
!42 = !{!37, !37, i64 0}
!43 = !{!44, !36, i64 80}
!44 = !{!"basic_block_def", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !40, i64 48, !40, i64 56, !37, i64 64, !45, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96}
!45 = !{!"long", !37, i64 0}
!46 = !{!47, !36, i64 4}
!47 = !{!"cselib_val_struct", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32}
!48 = !{!47, !36, i64 0}
!49 = !{!50, !36, i64 0}
!50 = !{!"rtvec_def", !36, i64 0, !37, i64 8}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!54, !40, i64 0}
!54 = !{!"reg_attrs", !40, i64 0, !45, i64 8}
!55 = !{!54, !45, i64 8}
!56 = distinct !{!56, !52}
!57 = !{!58, !36, i64 24}
!58 = !{!"mem_attrs", !40, i64 0, !40, i64 8, !40, i64 16, !36, i64 24, !36, i64 28, !37, i64 32}
!59 = !{!58, !40, i64 0}
!60 = !{!58, !40, i64 8}
!61 = !{!58, !40, i64 16}
!62 = !{!58, !36, i64 28}
!63 = !{!58, !37, i64 32}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = distinct !{!66, !52}
!67 = distinct !{!67, !52}
!68 = !{!"print-rtl.c:rhs_regno"}
