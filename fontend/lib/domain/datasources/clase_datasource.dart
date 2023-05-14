import 'dart:io';

import 'package:study_sphere_frontend/domain/dtos/correct_class_dto.dart';
import 'package:study_sphere_frontend/domain/dtos/create_annotation.dart';
import 'package:study_sphere_frontend/domain/dtos/create_class_dto.dart';
import 'package:study_sphere_frontend/domain/dtos/create_comment.dart';
import 'package:study_sphere_frontend/domain/dtos/create_material.dart';
import 'package:study_sphere_frontend/domain/dtos/create_task.dto.dart';
import 'package:study_sphere_frontend/domain/dtos/create_topic_dto.dart';
import 'package:study_sphere_frontend/domain/entity/complete_task_user.dart';
import 'package:study_sphere_frontend/domain/entity/detail_class.dart';
import 'package:study_sphere_frontend/domain/entity/simple_class.dart';
import 'package:study_sphere_frontend/domain/entity/simple_topic.dart';
import 'package:study_sphere_frontend/domain/entity/task.dart';

abstract class ClaseDatasource {
  Future<List<SimpleClase>> getAllMyClass(String token);
  Future<void> createClass(CreateClassDTO createClassDTO);
  Future<void> joinClass(String token, String code);
  Future<DetailClass> getClassById(String token, String id);
  Future<void> createTopic(CreateTopicDTO createTopicDTO);
  Future<void> solveTask(String taskId, String token, String answer);
  Future<Task> getTaskById(String taskId, String token);
  Future<void> newSolveTask(String taskId, String token, List<File> files);
  Future<List<SimpleTopic>> getAllTopics(String token, String classId);
  Future<void> createTask(String token, CreateTaskDTO createTaskDTO);
  Future<void> createMaterial(
      String token, CreateMaterialDTO createMaterialDTO);
  Future<List<CompleteTaskUser>> getAllTaskUser(String token, String taskId);
  Future<void> correctTask(String token, CorrectTaskDTO correctTaskDTO);
  Future<void> createComment(String token, CreateCommentDTO createCommentDTO);
  Future<void> createAnnotation(String token, CreateAnnotationDTO createAnnotationDTO);
}
