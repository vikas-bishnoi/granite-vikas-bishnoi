import axios from "axios";

const list = () => axios.get("/tasks");

const show = slug => axios.get(`/tasks/${slug}`);

const create = payload =>
  axios.post("/tasks/", {
    task: payload,
  });

const update = ({ slug, payload }) =>
  axios.put(`/tasks/${slug}`, {
    task: payload,
  });

const tasksApi = {
  list,
  show,
  create,
  update,
};

export default tasksApi;
